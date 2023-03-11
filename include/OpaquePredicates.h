#ifndef LLVM_OBFUSCATOR_OPAQUEPREDICATES_H
#define LLVM_OBFUSCATOR_OPAQUEPREDICATES_H

#include "ReachableIntegersAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

// OpaquePredicateFuncCount represents the number of supported opaque predicate transformations.
constexpr int OpaquePredicateFuncCount = 1;


struct OpaquePredicates : public llvm::PassInfoMixin<OpaquePredicates> {
    using OpaquePredicateHandler = bool (OpaquePredicates::*)(llvm::BasicBlock &, llvm::FunctionAnalysisManager &);

    OpaquePredicateHandler OpaquePredicateHandlers[OpaquePredicateFuncCount];

    explicit OpaquePredicates() : PassInfoMixin() {
        OpaquePredicateHandlers[0] = &OpaquePredicates::handleOpaquelyTruePredicate;
    }

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    bool handleOpaquelyTruePredicate(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM);

    bool handleOpaquelyTruePredicateWithClone(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM);

    bool handleOpaquelyTruePredicateWithClone2(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM);
};

#endif //LLVM_OBFUSCATOR_OPAQUEPREDICATES_H
