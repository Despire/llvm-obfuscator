#ifndef LLVM_OBFUSCATOR_BRANCHFUNCTION_H
#define LLVM_OBFUSCATOR_BRANCHFUNCTION_H

#include <unordered_map>

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct BranchFunction : llvm::PassInfoMixin<BranchFunction> {
    std::unordered_map<llvm::Function *, std::tuple<llvm::Function *, llvm::GlobalVariable *, uint64_t>> lookupTables;
    llvm::Function *mapFunction = nullptr;
    int32_t rng = RandomInt64(std::numeric_limits<int32_t>::max());

    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);

    void handleFunction(llvm::Function &F);

    llvm::Function *createFunction(llvm::Module &M, llvm::GlobalVariable *LookupTable);

    void createMapFunction(llvm::Module &M);
};

#endif //LLVM_OBFUSCATOR_BRANCHFUNCTION_H
