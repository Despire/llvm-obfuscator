#ifndef LLVM_OBFUSCATOR_CONSTANTOBFUSCATION_H
#define LLVM_OBFUSCATOR_CONSTANTOBFUSCATION_H

#include <vector>

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct ConstantObfuscation : public llvm::PassInfoMixin<ConstantObfuscation> {
    std::vector<llvm::Constant *> candidates;

    llvm::PreservedAnalyses run(llvm::Function &M, llvm::FunctionAnalysisManager &FAM);

    llvm::Value *replaceConstant(llvm::Instruction *I, llvm::ConstantInt *ToReplace, llvm::SmallDenseSet<llvm::Value *> &);

    bool handleFunction(llvm::Function &F, llvm::FunctionAnalysisManager &FAM);

    llvm::Value *generateSequence(llvm::Instruction *, llvm::Value *, llvm::SmallDenseSet<llvm::Value *> &);
};

#endif //LLVM_OBFUSCATOR_CONSTANTOBFUSCATION_H
