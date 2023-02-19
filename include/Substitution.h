//
// Created by Matus Mrekaj on 18/02/2023.
//

#ifndef LLVM_OBFUSCATOR_SUBSTITUTION_H
#define LLVM_OBFUSCATOR_SUBSTITUTION_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include "llvm/IR/InstrTypes.h"

struct Substitution : public llvm::PassInfoMixin<Substitution> {
    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    // handleBasicBlock processes a single basic block with substitutions.
    bool handleBasicBlock(llvm::BasicBlock &BB);

    // handleAddition replaces additions with obfuscated code that yields the same result.
    bool handleAddition(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    // handle8BitAddition is a special case where we apply a different substitution for 8bit additions.
    void handle8BitAddition(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);
};

#endif //LLVM_OBFUSCATOR_SUBSTITUTION_H
