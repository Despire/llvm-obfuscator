#ifndef LLVM_OBFUSCATOR_CONSTANTOBFUSCATION_H
#define LLVM_OBFUSCATOR_CONSTANTOBFUSCATION_H

#include <vector>

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct ConstantObfuscation: public llvm::PassInfoMixin<ConstantObfuscation> {
    std::vector<llvm::Constant*> candidates;

    llvm::PreservedAnalyses run(llvm::Function &M, llvm::FunctionAnalysisManager &FAM);
    llvm::Value* replaceConstant(llvm::Instruction *I, llvm::ConstantInt *ToReplace, std::vector<llvm::Value*> &);
    bool handleFunction(llvm::Function &F, ReachableIntegers::Result &Set);
    llvm::Value* replaceZero(llvm::Value* Zero, std::vector<llvm::Value*> &);
};

#endif //LLVM_OBFUSCATOR_CONSTANTOBFUSCATION_H
