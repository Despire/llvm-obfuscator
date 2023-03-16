#include <unordered_map>

#include "Substitution.h"

#include "OpaquePredicates.h"
#include "Utils.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

#define DEBUG_TYPE "opaque-predicates"

STATISTIC(BogusFlowBlockSplitCount, "# of performed block splitting");

llvm::PreservedAnalyses OpaquePredicates::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = false;

    std::vector<llvm::BasicBlock *> valid;
    for (auto &BB: F) {
        if (!FAM.getResult<ReachableIntegers>(F)[&BB].empty()) {
            valid.push_back(&BB);
        }
    }

    // This will also split the previously split block until it has only a single instruction left.
    // Maybe change this to exclude the split blocks.
    for (auto &BB: valid) {
        modified |= (this->*OpaquePredicateHandlers[RandomInt64(OpaquePredicateFuncCount)])(*BB, FAM);
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

    auto RI = FAM.getResult<ReachableIntegers>(*BB.getParent())[&BB];
    // invalidate the cached result afterwards.
    FAM.clear();

    // select a random integer from the set of reachable integers.
    auto randomInteger = RandomReachableInteger(RI);
    LLVM_DEBUG(
            llvm::dbgs() << "selected random integer from the set of reachable integers: " << *randomInteger << "\n");

    auto randomInstruction = RandomNonPHIInstruction(BB);
    LLVM_DEBUG(llvm::dbgs() << "selected instruction to split on: " << *randomInstruction << '\n');

    llvm::IRBuilder<> Builder(randomInstruction);

    Substitution substitution;
    llvm::Value *cond = nullptr;
    Substitution::SubstitutionHandler handler = nullptr;

    if (RandomInt64(2)) {
        // create the condition (I == 0) || (I != 0) which is always true.
        auto isNull = Builder.CreateIsNull(randomInteger);
        auto isNotNull = Builder.CreateIsNotNull(randomInteger);
        cond = Builder.CreateOr(isNull, isNotNull);
        handler = substitution.ORHandlers[RandomInt64(ORSubstitutionFuncCount)];
    } else {
        // create the condition (I >= I) && (I <= I)
        auto isGE = Builder.CreateICmpSGE(randomInteger, randomInteger);
        auto isLE = Builder.CreateICmpSLE(randomInteger, randomInteger);
        cond = Builder.CreateAnd(isGE, isLE);
        handler = substitution.ANDHandlers[RandomInt64(ANDSubstitutionFuncCount)];
    }

    LLVM_DEBUG(llvm::dbgs() << "condition for evaluating the next block: " << *cond << '\n');

    auto newBB = llvm::SplitBlockAndInsertIfThen(cond, randomInstruction, false);
    addBogusOperations(newBB, RI);

    auto Inst = llvm::dyn_cast<llvm::Instruction>(cond);
    auto Iter = Inst->getIterator();
    (substitution.*handler)(BB, llvm::dyn_cast<llvm::BinaryOperator>(Iter), Iter);

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