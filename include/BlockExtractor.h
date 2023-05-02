#ifndef LLVM_OBFUSCATOR_BLOCKEXTRACTOR_H
#define LLVM_OBFUSCATOR_BLOCKEXTRACTOR_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct BlockExtractor : public llvm::PassInfoMixin<BlockExtractor> {
    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &);
    bool runOnModule(llvm::Module &M);
    bool handleFunction(llvm::Function &F);
};

#endif //LLVM_OBFUSCATOR_BLOCKEXTRACTOR_H
