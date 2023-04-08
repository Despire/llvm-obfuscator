#ifndef LLVM_OBFUSCATOR_BOGUSFLOWINTRODUCELOOP_H
#define LLVM_OBFUSCATOR_BOGUSFLOWINTRODUCELOOP_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct BogusFlowIntroduceLoop : llvm::PassInfoMixin<BogusFlowIntroduceLoop> {
    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM);

    bool introduceBogusLoop(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM);
};

#endif //LLVM_OBFUSCATOR_BOGUSFLOWINTRODUCELOOP_H
