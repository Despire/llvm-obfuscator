#include "Utils.h"
#include "BogusFlowIntroduceLoop.h"
#include "OpaquePredicates.h"

#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/ADT/Statistic.h"

#define DEBUG_TYPE "introduce-bogus-loop"

STATISTIC(BogusFlowIntroduceLoopCount, "# of performed bogus loop insertions");

llvm::PreservedAnalyses BogusFlowIntroduceLoop::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = false;
    // Collect all Basic Blocks for which there are reachable integers.
    auto &RISet = FAM.getResult<ReachableIntegers>(F);
    std::vector<llvm::BasicBlock *> validBB = findAllBBWithReachableIntegers(F, RISet);

    for (auto &BB: validBB) {
        modified |= introduceBogusLoop(*BB, FAM);
    }

    if (modified) {
        return llvm::PreservedAnalyses::all();
    }
    return llvm::PreservedAnalyses::none();
}

bool BogusFlowIntroduceLoop::introduceBogusLoop(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM) {
    // clone the block and obfuscate one of them.
    OpaquePredicates predicates;
    if (!predicates.handleOpaquelyTruePredicateWithClone(BB, FAM)) {
        return false;
    }

    // chose one block at random to which the loop will be added.
    uint64_t successor = RandomInt64(int64_t(BB.getTerminator()->getNumSuccessors()));
    auto *chosenBlock = BB.getTerminator()->getSuccessor(successor);

    // add some bogus operations.
    addBogusOperations(chosenBlock);

    // performer the same operation a second time on that block.
    if (!predicates.handleOpaquelyTruePredicateWithClone(*chosenBlock, FAM)) {
        return false;
    }

    FAM.clear();
    auto &RI = FAM.getResult<ReachableIntegers>(*BB.getParent())[chosenBlock];

    // choose one of the blocks and add a loop.
    successor = RandomInt64(int64_t(chosenBlock->getTerminator()->getNumSuccessors()));

    // make sure that the loop part doesn't get executed by changing the condition.
    auto *br = llvm::cast<llvm::BranchInst>(chosenBlock->getTerminator());

    auto pair = predicates.getRandomOpaquelyTruePredicate();
    auto *cond = (&predicates->*pair.first)(*RandomElement(RI.begin(), RI.end()), br);
    br->setCondition(cond);

    // the condition always is true thus the loop part needs to be false branch.
    auto *loopLatch = chosenBlock->getTerminator()->getSuccessor(successor);

    if (br->getSuccessor(0) == loopLatch) {
        br->swapSuccessors();
    }

    auto *replaceCond = chosenBlock->getTerminator()->clone();
    replaceCond->setSuccessor(0, loopLatch->getTerminator()->getSuccessor(0));

    replaceCond->insertBefore(loopLatch->getTerminator());
    loopLatch->getTerminator()->eraseFromParent();

    // Choose the new loopHeader.
    llvm::BasicBlock *loopHeader = nullptr;
    if (&BB.getParent()->getEntryBlock() != &BB) {
        loopHeader = &BB;
    } else {
        loopHeader = chosenBlock;
    }

    replaceCond->setSuccessor(1, loopHeader);

    // update phis if any.
    for (auto &phi: loopHeader->phis()) {
        phi.addIncoming(llvm::ConstantAggregateZero::getNullValue(phi.getType()), loopLatch);
    }

    return true;
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getBogusFlowIntroduceLoopPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "floop",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "floop") {
                                FPM.addPass(BogusFlowIntroduceLoop());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBogusFlowIntroduceLoopPluginInfo();
}