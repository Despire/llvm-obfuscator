//
// Created by Matus Mrekaj on 25/02/2023.
//

#ifndef LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H
#define LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H

#include <llvm/IR/Instructions.h>
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include "llvm/IR/IRBuilder.h"

// ControlFlowFlatteningFuncCount is the number of supported flattening versions.
constexpr int ControlFlowFlatteningFuncCount = 2;

// ComputingNextHandlerFuncCount is the number of supported handlers for computing the next value of the
// flattened control flow.
constexpr int ComputingNextHandlerFuncCount = 3;

struct ControlFlowFlattening : public llvm::PassInfoMixin<ControlFlowFlattening> {
    using FlatteningHandler = bool (ControlFlowFlattening::*)(llvm::Function &F);
    using ComputingNextHandler = llvm::Value *(ControlFlowFlattening::*)(
            llvm::LLVMContext &,
            llvm::IRBuilder<> &,
            llvm::AllocaInst *,
            int32_t,
            std::vector<int32_t> &
    );

    FlatteningHandler Handlers[ControlFlowFlatteningFuncCount];
    ComputingNextHandler NextHandlers[ComputingNextHandlerFuncCount];

    explicit ControlFlowFlattening() : PassInfoMixin() {
        Handlers[0] = &ControlFlowFlattening::handleJumpTableVersion;
        Handlers[1] = &ControlFlowFlattening::handleLoopSwitchVersion;

        NextHandlers[0] = &ControlFlowFlattening::handleComputingNextSubtraction;
        NextHandlers[1] = &ControlFlowFlattening::handleComputingNextAddition;
        NextHandlers[2] = &ControlFlowFlattening::handleComputingNextMod;
    }

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    // handleLoopSwitchVersion implements Flattening with using the for loop switch construct.
    bool handleLoopSwitchVersion(llvm::Function &F);

    // handleJumpTableVersion implements Flattening with using jump tables.
    bool handleJumpTableVersion(llvm::Function &F);

    // handleComputingNextSubtraction implements calculating the next value for the switch statement using subtraction.
    llvm::Value *
    handleComputingNextSubtraction(llvm::LLVMContext &, llvm::IRBuilder<> &, llvm::AllocaInst *, int32_t, std::vector<int32_t>&);

    // handleComputingNextAddition implements calculating the next value for the switch statement using addition.
    llvm::Value *
    handleComputingNextAddition(llvm::LLVMContext &, llvm::IRBuilder<> &, llvm::AllocaInst *, int32_t, std::vector<int32_t>&);

    // handleComputingNextMod implements calculating the next value for the switch statement using modulus.
    llvm::Value *
    handleComputingNextMod(llvm::LLVMContext &, llvm::IRBuilder<> &, llvm::AllocaInst *, int32_t, std::vector<int32_t>&);

    // findAllInstructionUsedInMultipleBlocks finds all Instructions that are used in multiple blocks inside F.
    std::vector<llvm::Instruction *> findAllInstructionUsedInMultipleBlocks(llvm::Function &F) const;

    // findAllPHINodes finds all PHI nodes for each basic block in F.
    std::vector<llvm::PHINode *> findAllPHINodes(llvm::Function &F) const;

    // calculateDispatcherValueSubtraction returns two indices into the array that when subtracted return the switch number.
    [[nodiscard]]
    std::pair<int32_t, int32_t> calculateDispatcherValueSubtraction(int32_t switchNumber, std::vector<int32_t>& arr) const;

    // calculateDispatcherValueAddition returns two indices into the array that when added return the switch number.
    [[nodiscard]]
    std::pair<int32_t, int32_t> calculateDispatcherValueAddition(int32_t switchNumber, std::vector<int32_t>& arr) const;

    // calculateDispatcherValueMod returns two indices into the array that when used with the modulus operator return the switch number.
    [[nodiscard]]
    std::pair<int32_t, int32_t> calculateDispatcherValueMod(int32_t switchNumber, std::vector<int32_t>& arr) const;
};

#endif //LLVM_OBFUSCATOR_CONTROLFLOWFLATTENING_H
