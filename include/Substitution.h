//
// Created by Matus Mrekaj on 18/02/2023.
//

#ifndef LLVM_OBFUSCATOR_SUBSTITUTION_H
#define LLVM_OBFUSCATOR_SUBSTITUTION_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct Substitution : public llvm::PassInfoMixin<Substitution> {
    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    bool runOnBasicBlock(llvm::BasicBlock &B);
};

#endif //LLVM_OBFUSCATOR_SUBSTITUTION_H
