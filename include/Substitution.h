//
// Created by Matus Mrekaj on 18/02/2023.
//

#ifndef LLVM_OBFUSCATOR_SUBSTITUTION_H
#define LLVM_OBFUSCATOR_SUBSTITUTION_H

#include "llvm/IR/PassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Pass.h"

// AdditionSubstitutionCount is the number of supported addition subsitutions.
constexpr int AdditionSubstitionFuncCount = 4;

struct Substitution : public llvm::PassInfoMixin<Substitution> {
    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    // handleBasicBlock processes a single basic block with substitutions.
    bool handleBasicBlock(llvm::BasicBlock &BB);

    // handleAddition replaces additions with obfuscated code that yields the same result.
    bool handleAddition(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    llvm::Instruction *getAdditionSubstitution(llvm::BinaryOperator *BO);

    // handle8BitAddition is a special case where we apply a different substitution for 8bit additions.
    llvm::Instruction *get8BitAddition(llvm::BinaryOperator *BO);

    // handleSubtraction replaces subtraction with obfuscated code that yields the same result.
    bool handleSubtraction(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    // handleBinaryOr replaces binary ORs with obfuscated code that yields the same result.
    bool handleBinaryOr(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    // handleBinaryAnd replaces binary ANDs with obfuscated code that yields the same result.
    bool handleBinaryAnd(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    // handleBinaryXor replaces binary XORs with obfuscated code that yields the same result.
    bool handleBinaryXOR(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);
};

#endif //LLVM_OBFUSCATOR_SUBSTITUTION_H
