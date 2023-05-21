#include "Utils.h"
#include "JumpIntoLoop.h"
#include "OpaquePredicates.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"
#include "llvm/Transforms/Utils/FixIrreducible.h"

#define DEBUG_TYPE "jump-into-loop"

STATISTIC(JumpIntoLoopCount, "# of performed loop jumps");

llvm::PreservedAnalyses JumpIntoLoop::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = false;
    // Simplify any loops in the function.
    // https://llvm.org/docs/LoopTerminology.html
    modified |= !llvm::LoopSimplifyPass().run(F, FAM).areAllPreserved();
    modified |= !llvm::FixIrreduciblePass().run(F, FAM).areAllPreserved();

    // Gather Analysis of the function.
    auto &RISet = FAM.getResult<ReachableIntegers>(F);
    auto &LoopInfo = FAM.getResult<llvm::LoopAnalysis>(F);

    // if there is a loop and there exists at least 1 BB that's outside the loop
    // add a jump into the loop from that basic block.
    if (!LoopInfo.empty()) {
        // select a random top-level loop to jump to.
        std::vector<llvm::Loop *> &loops = LoopInfo.getTopLevelLoopsVector();
        auto jumpToLoop = *RandomElement(loops.begin(), loops.end());

        // try to insert a new path into the loop if possible.
        if (tryIntroducingNewPath(F, jumpToLoop, RISet)) {
            modified = true;
            ++JumpIntoLoopCount;
        }
    }

    if (modified) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

bool JumpIntoLoop::tryIntroducingNewPath(llvm::Function &F, llvm::Loop *TopLevelLoop, ReachableIntegers::Result &Set) {
    // given a top level loop find the deepest nested loop.
    llvm::Loop *innerLevelLoop = TopLevelLoop;
    findDeepestInnerLoop(TopLevelLoop, innerLevelLoop);

    // Currently deeply nested loops aren't supported only top level loops without nested loops.
    if (innerLevelLoop->getLoopDepth() > 1) {
        return false;
    }

    // find the top-level loop predecessors.
    auto *loopPredecessor = TopLevelLoop->getLoopPreheader();
    if (loopPredecessor == nullptr) {
        return false;
    }

    if (Set[loopPredecessor].empty()) {
        return false;
    }

    llvm::BasicBlock *jumpToBlock = *RandomElement(innerLevelLoop->blocks().begin(), innerLevelLoop->blocks().end());
    llvm::Instruction *splitInstruction = RandomNonPHIInstruction(*jumpToBlock);
    llvm::Value *randomInteger = *RandomElement(Set[jumpToBlock].begin(), Set[jumpToBlock].end());

    OpaquePredicates opaquePredicates;
    auto pair = opaquePredicates.getRandomOpaquelyTruePredicate();
    auto *cond = (&opaquePredicates->*pair.first)(randomInteger, splitInstruction);
    auto newBB = llvm::SplitBlockAndInsertIfThen(cond, splitInstruction, false);

    // since we're using a true predicate swap the branch instruction successor.
    llvm::cast<llvm::BranchInst>(jumpToBlock->getTerminator())->swapSuccessors();

    llvm::IRBuilder<> Builder(newBB);
    llvm::BasicBlock *BogusBlock = newBB->getParent();
    auto instructions = addBogusOperationsWithEnvironment(BogusBlock,
                                                          addBogusOperations(BogusBlock, randomInteger->getType()));
    llvm::Value *sum = Builder.CreateAdd(LLVM_CONST_I32(F.getContext(), 0), LLVM_CONST_I32(F.getContext(), 0));

    for (auto &instruction: instructions) {
        if (instruction->getType() != sum->getType()) {
            sum = Builder.CreateAdd(sum, Builder.CreateIntCast(instruction, sum->getType(), true));
            continue;
        }
        sum = Builder.CreateAdd(sum, instruction);
    }

    pair = opaquePredicates.getRandomOpaquelyTruePredicate();
    cond = (&opaquePredicates->*pair.first)(sum, newBB);

    auto newCond = Builder.CreateCondBr(cond, BogusBlock, innerLevelLoop->getHeader());
    newCond->swapSuccessors();

    // if any phis in the header update them.
    for (auto &phi: innerLevelLoop->getHeader()->phis()) {
        phi.addIncoming(llvm::Constant::getNullValue(phi.getType()), BogusBlock);
    }

    newBB->eraseFromParent();

    // create the jump to the block in the loop.
    auto predecessorRI = Set[loopPredecessor];
    auto *instruction = loopPredecessor->getTerminator();

    pair = opaquePredicates.getRandomOpaquelyTruePredicate();
    cond = (&opaquePredicates->*pair.first)(*RandomElement(predecessorRI.begin(), predecessorRI.end()), instruction);
    newBB = llvm::SplitBlockAndInsertIfThen(cond, instruction, false);

    llvm::BranchInst::Create(BogusBlock, newBB);

    // since we're using a true predicate swap the branch instruction successor.
    llvm::cast<llvm::BranchInst>(loopPredecessor->getTerminator())->swapSuccessors();
    // erase the old jump
    newBB->eraseFromParent();

    return true;
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getBogusFlowJumpPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "jmp",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "jmp") {
                                FPM.addPass(JumpIntoLoop());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBogusFlowJumpPluginInfo();
}