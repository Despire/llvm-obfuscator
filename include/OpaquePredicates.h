#ifndef LLVM_OBFUSCATOR_OPAQUEPREDICATES_H
#define LLVM_OBFUSCATOR_OPAQUEPREDICATES_H

#include <llvm/Analysis/LoopInfo.h>
#include "ReachableIntegersAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

// OpaquePredicateFuncCount represents the number of supported BasicBlock opaque predicate transformations.
constexpr int OpaquePredicateFuncCount = 2;

// OROpaquelyTruePredicatesFuncCount represents the number of supported OR Loop Condition opaque predicate transformations.
constexpr int OROpaquelyTruePredicatesFuncCount = 1;

// ANDOpaquelyTruePredicatesFuncCount represents the number of supported AND Loop Condition opaque predicate transformations.
constexpr int ANDOpaquelyTruePredicatesFuncCount = 1;

struct OpaquePredicates : public llvm::PassInfoMixin<OpaquePredicates> {
    using OpaquePredicateHandler = bool (OpaquePredicates::*)(llvm::BasicBlock &, llvm::FunctionAnalysisManager &);
    using OpaquelyTruePredicate = llvm::Value *(OpaquePredicates::*)(llvm::Value *, llvm::Instruction *);

    OpaquePredicateHandler OpaquePredicateHandlers[OpaquePredicateFuncCount];
    OpaquelyTruePredicate OROpaquelyTruePredicates[OROpaquelyTruePredicatesFuncCount];
    OpaquelyTruePredicate ANDOpaquelyTruePredicates[OROpaquelyTruePredicatesFuncCount];

    explicit OpaquePredicates() : PassInfoMixin() {
        OpaquePredicateHandlers[0] = &OpaquePredicates::handleOpaquelyTruePredicate;
        OpaquePredicateHandlers[1] = &OpaquePredicates::handleOpaquelyTruePredicateWithClone;

        // ((a & 1 == 0) || (a & 1 == 1))
        OROpaquelyTruePredicates[0] = &OpaquePredicates::conditionOpaquePredicateOR;

        // ((a != -a) && (a ^ a == 0))
        ANDOpaquelyTruePredicates[0] = &OpaquePredicates::conditionOpaquePredicateAND;
    }

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    bool handleOpaquelyTruePredicate(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM);

    bool handleOpaquelyTruePredicateWithClone(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM);

    bool handleLoopOpaquelyTruePredicates(llvm::Loop &Loop, ReachableIntegers::Result &RI);

    llvm::Value *conditionOpaquePredicateOR(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore);

    llvm::Value *conditionOpaquePredicateAND(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore);

    std::pair<OpaquelyTruePredicate, Substitution::SubstitutionHandler> getRandomOpaquelyTruePredicate();


};

#endif //LLVM_OBFUSCATOR_OPAQUEPREDICATES_H
