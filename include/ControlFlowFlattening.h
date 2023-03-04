//
// Created by Matus Mrekaj on 25/02/2023.
//

#ifndef LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H
#define LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

// ControlFlowFlatteningFuncCount is the number of supported flattening versions.
constexpr int ControlFlowFlatteningFuncCount = 2;

struct ControlFlowFlattening : public llvm::PassInfoMixin<ControlFlowFlattening> {
    using FlatteningHandler = bool (ControlFlowFlattening::*)(llvm::Function &F);

    FlatteningHandler Handlers[ControlFlowFlatteningFuncCount];

    explicit ControlFlowFlattening() : PassInfoMixin() {
        Handlers[0] = &ControlFlowFlattening::handleJumpTableVersion;
        Handlers[1] = &ControlFlowFlattening::handleLoopSwitchVersion;
    }

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    // handleLoopSwitchVersion implements Flattening with using the for loop switch construct.
    bool handleLoopSwitchVersion(llvm::Function &F);

    // handleJumpTableVersion implements Flattening with using jump tables.
    bool handleJumpTableVersion(llvm::Function &F);

    // findAllInstructionUsedInMultipleBlocks finds all Instructions that are used in multiple blocks inside F.
    std::vector<llvm::Instruction *> findAllInstructionUsedInMultipleBlocks(llvm::Function &F) const;

    // findAllPHINodes finds all PHI nodes for each basic block in F.
    std::vector<llvm::PHINode *> findAllPHINodes(llvm::Function &F) const;
};

#endif //LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H
