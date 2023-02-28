//
// Created by Matus Mrekaj on 25/02/2023.
//

#ifndef LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H
#define LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct ControlFlowFlattening : public llvm::PassInfoMixin<ControlFlowFlattening> {
    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    bool handleFunction(llvm::Function &F);
};
#endif //LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H
