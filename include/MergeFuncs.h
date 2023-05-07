#ifndef LLVM_OBFUSCATOR_MERGEFUNCS_H
#define LLVM_OBFUSCATOR_MERGEFUNCS_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct MergeFuncs : public llvm::PassInfoMixin<MergeFuncs> {
    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &);

    bool runOnModule(llvm::Module &M);

    void mergeFuncs(llvm::Module &M, std::vector<llvm::Function *> &funcs);
};

#endif //LLVM_OBFUSCATOR_MERGEFUNCS_H
