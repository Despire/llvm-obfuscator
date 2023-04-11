#ifndef LLVM_OBFUSCATOR_BRANCHFUNCTION_H
#define LLVM_OBFUSCATOR_BRANCHFUNCTION_H

#include <unordered_map>

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct BranchFunction : llvm::PassInfoMixin<BranchFunction> {
    llvm::Function *branchFunction = nullptr;
    llvm::Function *mapFunction = nullptr;
    uint64_t largestSequence = 0;
    // we just make an assumption the number of BB in the largestSequence isn't going to be larger
    // than the max value of an i32.
    int32_t upperLimit = std::numeric_limits<int32_t>::max();

    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);

    void handleFunction(llvm::Function &F, llvm::GlobalVariable *LookupTable);

    void createFunction(llvm::Module &M, llvm::GlobalVariable *LookupTable);

    void createMapFunction(llvm::Module &M);
};

#endif //LLVM_OBFUSCATOR_BRANCHFUNCTION_H
