#ifndef LLVM_OBFUSCATOR_REACHABLEINTEGERS_H
#define LLVM_OBFUSCATOR_REACHABLEINTEGERS_H

#include "llvm/Pass.h"
#include "llvm/IR/PassManager.h"
#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/DenseSet.h"
#include "llvm/IR/Dominators.h"

struct ReachableIntegers : llvm::AnalysisInfoMixin<ReachableIntegers> {
    // Identifies particular analysis pass. More info in llvm::AnalysisInfoMixin.
    static llvm::AnalysisKey Key;

    // Result is needed by the AnalysisInfoMixin and will store a list of integers
    // that are reachable via the BasicBlock.
    using Result = llvm::MapVector<llvm::BasicBlock const *, llvm::SmallDenseSet<llvm::Value *>>;

    Result run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM);
};
#endif //LLVM_OBFUSCATOR_REACHABLEINTEGERS_H
