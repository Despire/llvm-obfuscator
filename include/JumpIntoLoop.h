#ifndef LLVM_OBFUSCATOR_JUMPINTOLOOP_H
#define LLVM_OBFUSCATOR_JUMPINTOLOOP_H

#include <unordered_map>
#include "ReachableIntegersAnalysis.h"


#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct JumpIntoLoop : public llvm::PassInfoMixin<JumpIntoLoop> {
    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    bool tryIntroducingNewPath(llvm::Loop *TopLevelLoop, ReachableIntegers::Result &Set);

    std::unordered_map<llvm::BasicBlock *, llvm::ValueToValueMapTy>
    findAllPrecedingInstructionInALoop(llvm::BasicBlock &BB, llvm::Loop &Loop);

    std::vector<llvm::BasicBlock *> traverseLoopInOrder(llvm::Loop &Loop);
};

#endif //LLVM_OBFUSCATOR_JUMPINTOLOOP_H
