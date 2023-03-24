#ifndef LLVM_OBFUSCATOR_OPAQUEPREDICATES_H
#define LLVM_OBFUSCATOR_OPAQUEPREDICATES_H

#include "Substitution.h"
#include "ReachableIntegersAnalysis.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

// OpaquePredicateFuncCount represents the number of supported BasicBlock opaque predicate transformations.
constexpr int OpaquePredicateFuncCount = 2;

// OROpaquelyTruePredicatesFuncCount represents the number of supported OR Loop Condition opaque predicate transformations.
constexpr int OROpaquelyTruePredicatesFuncCount = 3;

// ANDOpaquelyTruePredicatesFuncCount represents the number of supported AND Loop Condition opaque predicate transformations.
constexpr int ANDOpaquelyTruePredicatesFuncCount = 3;

struct OpaquePredicates : public llvm::PassInfoMixin<OpaquePredicates> {
    using OpaquePredicateHandler = bool (OpaquePredicates::*)(llvm::BasicBlock &, llvm::FunctionAnalysisManager &);
    using OpaquelyTruePredicate = llvm::Value *(OpaquePredicates::*)(llvm::Value *, llvm::Instruction *);

    OpaquePredicateHandler OpaquePredicateHandlers[OpaquePredicateFuncCount];
    OpaquelyTruePredicate OROpaquelyTruePredicates[OROpaquelyTruePredicatesFuncCount];
    OpaquelyTruePredicate ANDOpaquelyTruePredicates[OROpaquelyTruePredicatesFuncCount];

    explicit OpaquePredicates() : PassInfoMixin() {
        OpaquePredicateHandlers[0] = &OpaquePredicates::handleOpaquelyTruePredicate;
        OpaquePredicateHandlers[1] = &OpaquePredicates::handleOpaquelyTruePredicateWithClone;

        // ((a & 1 == 0) || (3(x+1)(x+2)) % 6 == 0)
        OROpaquelyTruePredicates[0] = &OpaquePredicates::conditionOpaquePredicateOR;
        // (a & 1 == 1 || (x^2 + x) % 2 == 0)
        OROpaquelyTruePredicates[1] = &OpaquePredicates::conditionOpaquePredicateORv2;
        // ((x^3 + 3x^2 + 2x) % 3 == 0 || (x^2 + x) % 2 == 0)
        OROpaquelyTruePredicates[2] = &OpaquePredicates::conditionOpaquePredicateORv3;

        // ((3(x+1)(x+2)) % 6 == 0 && (x^2 + x) % 2 == 0)
        ANDOpaquelyTruePredicates[0] = &OpaquePredicates::conditionOpaquePredicateAND;
        // ((x^2 + x) % 2 == 0 && (x >= x))
        ANDOpaquelyTruePredicates[1] = &OpaquePredicates::conditionOpaquePredicateANDv2;
        // ((x^3 + 3x^2 + 2x) % 3 == 0 && (x^2 + x) % 2 == 0)
        ANDOpaquelyTruePredicates[2] = &OpaquePredicates::conditionOpaquePredicateANDv3;
    }

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    // Insert a new basic block with bogus operations by injecting an if->then construct that will always be false
    // and thus the block will not be executed.
    bool handleOpaquelyTruePredicate(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM);

    // Insert a new basic block that is a clone of an existing basic block, injects an if-then-else construct where
    // one of the blocks is obfuscating by using substitution and both blocks have a change of being executed by
    // comparing a reachable integer in the environment in an expression.
    bool handleOpaquelyTruePredicateWithClone(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM);

    // Obfuscates the conditions in the Loop Header and Latch basic blocks (if any) by adding an opaque predicate
    // to the condition and then further obfuscating the condition by using substitutions.
    bool handleLoopOpaquelyTruePredicates(llvm::Loop &Loop, ReachableIntegers::Result &RI);

    llvm::Value *conditionOpaquePredicateOR(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore);

    llvm::Value *conditionOpaquePredicateORv2(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore);

    llvm::Value *conditionOpaquePredicateORv3(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore);

    llvm::Value *conditionOpaquePredicateAND(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore);

    llvm::Value *conditionOpaquePredicateANDv2(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore);

    llvm::Value *conditionOpaquePredicateANDv3(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore);

    std::pair<OpaquelyTruePredicate, Substitution::SubstitutionHandler> getRandomOpaquelyTruePredicate();

    // Finds all Basic Blocks that are not part of a loop in a function and that have at least one reachable integer.
    std::vector<llvm::BasicBlock *>
    findAllBBNotInLoop(llvm::Function &F, llvm::LoopInfo &LoopInfo, ReachableIntegers::Result &Set);

    // Find all Basic Blocks in a function that have at least one reachable integer.
    std::vector<llvm::BasicBlock *> findAllBBWithReachableIntegers(llvm::Function &F, ReachableIntegers::Result &Set);

    // Find all loops in a function, including nested loops.
    void findAllLoops(const std::vector<llvm::Loop*> &TopLevel, std::vector<llvm::Loop*> &loops);

    bool tryIntroducingNewPath(llvm::Loop *TopLevelLoop, ReachableIntegers::Result &Set);

    std::unordered_set<llvm::Instruction*> findAllPrecedingInstructionInALoop(llvm::BasicBlock &BB, llvm::Loop &Loop);

};

#endif //LLVM_OBFUSCATOR_OPAQUEPREDICATES_H
