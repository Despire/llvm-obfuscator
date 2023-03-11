#include <llvm/Analysis/DomTreeUpdater.h>
#include "OpaquePredicates.h"
#include "RNG.h"
#include "Utils.h"

#include "llvm/IR/Dominators.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"

#define DEBUG_TYPE "opaque-predicates"

STATISTIC(BogusFlowBlockSplitCount, "# of performed block splitting");

llvm::PreservedAnalyses OpaquePredicates::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = false;

    int i = 0;
    for (auto &BB: F) {
        BB.setName(std::to_string(i));
        i++;
    }


    // This will also split the previously split block until it has only a single instruction left.
    // Maybe change this to exclude the split blocks.
    for (auto &BB: F) {
        modified |= (this->*OpaquePredicateHandlers[RandomInt64(OpaquePredicateFuncCount)])(BB, FAM);
        if (modified) {
            ++BogusFlowBlockSplitCount;
        }
    }

    if (modified) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

bool OpaquePredicates::handleOpaquelyTruePredicate(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM) {
    // if the block has a single instruction skip.
    if (BB.size() < 2) {
        return false;
    }

    auto RISet = FAM.getResult<ReachableIntegers>(*BB.getParent());
    auto RI = RISet[&BB];
    // invalidate the cached result afterwards.
    FAM.clear();

    // check if they're any reachable integers.
    if (RI.empty()) {
        return false;
    }

    auto blockSuccessors = BB.getTerminator()->getNumSuccessors();
    if (blockSuccessors == 0) { // we don't handle return blocks in this version.
        return false;
    }

    auto chosenSuccessor = BB.getTerminator()->getSuccessor(RandomInt64(blockSuccessors));

    // select a random integer from the set of reachable integers.
    auto gen = GetRandomGenerator();
    std::uniform_int_distribution<> dist(0, RI.size() - 1);

    auto beg = RI.begin();
    std::advance(beg, dist(gen));

    // find a random instruction to split on.
    // however it should be after the phi nodes.
    int32_t count = 0;
    for (auto beg = BB.begin(); (&*beg) != BB.getFirstNonPHI(); ++beg) {
        ++count;
    }

    std::uniform_int_distribution<> distInst(count, BB.size() - 1);
    auto begBB = BB.begin();
    std::advance(begBB, distInst(gen));

    // split the block at the randomly chosen instruction.
    auto splitBB = BB.splitBasicBlock(&*begBB);
    splitBB->setName("splitBB");

    llvm::IRBuilder<> Builder(BB.getFirstNonPHI());

    // create the condition (I == 0) || (I != 0) which is always true.
    auto isNull = Builder.CreateIsNull(*beg);
    auto isNotNull = Builder.CreateIsNotNull(*beg);
    auto cond = Builder.CreateOr(isNull, isNotNull);
    // TODO obfuscate the OR.

    Builder.SetInsertPoint(BB.getTerminator());
    Builder.CreateCondBr(cond, splitBB, chosenSuccessor);
    BB.getTerminator()->eraseFromParent();

    // fixup instruction after splitting.
    for (auto &I: *splitBB) {
        // if the instruction from the splitBB is used in the successor of BB
        // we need to add a PHI node becouse the instruction isn't defined in BB

        if (I.isUsedInBasicBlock(chosenSuccessor)) {

            // check if there exists a phi node for the given instruction already
            // if yes ignore it.
            bool skip = false;
            for (auto &PHI: chosenSuccessor->phis()) {
                for (auto &Val : PHI.incoming_values()) {
                    if (Val == &I) {
                        skip = true;
                    }
                }
            }

            if (skip) {
                continue;
            }

            Builder.SetInsertPoint(&*chosenSuccessor->getFirstInsertionPt());

            auto *PHI = Builder.CreatePHI(I.getType(), 2);
            PHI->addIncoming(&I, splitBB);
            PHI->addIncoming(findNonPHIInstruction(PHI->getType(), RI), &BB);

            // in addition, we need to add a value for each incoming block of the successor block.
            // predecessors(chosenSuccessor)
            for (auto P : predecessors(chosenSuccessor)) {
                // skip the just added blocks.
                if (P == splitBB || P == &BB) {
                    continue;
                }

                PHI->addIncoming(findNonPHIInstruction(PHI->getType(), RISet[P]), P);
            }

            // update instruction to use the newly created phi node.
            for (auto &R: *chosenSuccessor) {
                // skip over the just created PHI
                if (&R == PHI) {
                    continue;
                }

                for (auto &O: R.operands()) {
                    if (O.get() == &I) {
                        O.set(PHI);
                    }
                }
            }
        }
    }

    if (!chosenSuccessor->phis().empty()) {
        // since we split the blocks we need to erase the values from the RI
        // we can then choose a random instruction for the phi nodes if needed.
        // this should be done as a last step where the original RI is no longer needed.
        for (auto &I: *splitBB) {
            if (auto val = llvm::dyn_cast<llvm::Value>(&I); val) {
                RI.erase(val);
            }
        }

        // if the chosen successor has any phi nodes then update them.
        for (auto &PHI: chosenSuccessor->phis()) {
            if (PHI.getBasicBlockIndex(&BB) >= 0) {
                continue;
            }

            PHI.addIncoming(findNonPHIInstruction(PHI.getType(), RI), &BB);
        }
    }

    return true;
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getBogusFlowBlockSplitPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "op",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "op") {
                                FPM.addPass(OpaquePredicates());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBogusFlowBlockSplitPluginInfo();
}