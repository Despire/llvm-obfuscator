#ifndef LLVM_OBFUSCATOR_CALLOBFUSCATION_H
#define LLVM_OBFUSCATOR_CALLOBFUSCATION_H

#include <unordered_map>

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct CallObfuscation : public llvm::PassInfoMixin<CallObfuscation> {
    std::unordered_map<llvm::Function *, std::tuple<llvm::Function *, llvm::GlobalVariable *, uint64_t>> lookupTables;
    llvm::Function *mapFunction = nullptr;
    uint64_t rng = RandomInt64();

    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);

    void handleFunction(llvm::Function &F);

    void createMapFunction(llvm::Module &M);

    llvm::Function *createFunction(llvm::Module &M, llvm::GlobalVariable *LookupTable);
};

#endif //LLVM_OBFUSCATOR_CALLOBFUSCATION_H
