//
// Created by Matus Mrekaj on 25/02/2023.
//
#include <vector>

#include "RNG.h"

#include "ControlFlowFlattening.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/LowerSwitch.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/IR/Module.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Transforms/Scalar/Reg2Mem.h"


#define DEBUG_TYPE "cff"

STATISTIC(ControlFlowFlatteningCount, "# of performed control flow flattening");

llvm::PreservedAnalyses ControlFlowFlattening::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    if (F.isDeclaration()) {
        return llvm::PreservedAnalyses::all();
    }

    if (F.size() < 2) {
        return llvm::PreservedAnalyses::all();
    }

    // Lower the switch instruction for the Function F.
    // This function run eliminates and existing switch statements
    // and transforms them into sequential basic blocks.
    llvm::LowerSwitchPass().run(F, FAM);

    if (handleFunction(F)) {
        ++ControlFlowFlatteningCount;
        return llvm::PreservedAnalyses::none();
    }

    return llvm::PreservedAnalyses::all();
}

bool ControlFlowFlattening::handleFunction(llvm::Function &F) {
    auto &CTX = F.getContext();
    std::vector<llvm::BasicBlock *> FunctionBasicBlocks;

    // Collect the BasicBlocks and also check whether they throw an exception.
    // We won't do control flow flattening for exceptions for now.
    for (auto &beg: F) {
        // 1.st clear exception handling
        if (beg.isLandingPad() || llvm::isa<llvm::InvokeInst>(&beg)) {
            return false;
        }
        FunctionBasicBlocks.emplace_back(&beg);
    }

    auto *EntryBasicBlock = FunctionBasicBlocks.front();
    EntryBasicBlock->setName("entry");

    // If the EntryBasicBlock doesn't end in unconditional branch (i.e. it has multiple BasicBlocks where
    // control flow can go) we need to split the Block into two.
    if (llvm::dyn_cast<llvm::BranchInst>(EntryBasicBlock->getTerminator())) {
        auto LastInst = std::prev(EntryBasicBlock->end());
        // also take into account the `icmp` instruction that preceeds the `br` instruction.
        if (LastInst != EntryBasicBlock->begin()) {
            --LastInst;
        }

        auto *split = EntryBasicBlock->splitBasicBlock(LastInst, "EntryBasicBlockSplit");
        FunctionBasicBlocks.insert(std::next(FunctionBasicBlocks.begin()), split);
    }

    // Remove the branch from the FirstBasicBlock as we will insert a switch Statement instead.
    // Note that if we split the BasicBlock this will still point to the first BasicBlock.
    EntryBasicBlock->getTerminator()->eraseFromParent();

    // Start writing at the end of the BasicBlock.
    llvm::IRBuilder<> Builder(EntryBasicBlock);

    // create the switch var and set it to 0.
    auto *dispatcher = Builder.CreateAlloca(llvm::Type::getInt32Ty(CTX), nullptr, "dispatcher");
    Builder.CreateStore(llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(CTX), 0), dispatcher);

    // since the switch will be wrapped in an infinite loop create it first.
    auto *loopStart = llvm::BasicBlock::Create(CTX, "loopStart", &F, EntryBasicBlock);;
    auto *loopEnd = llvm::BasicBlock::Create(CTX, "loopEnd", &F, EntryBasicBlock);

    // make the EntryBB first && add a Branch to the start of the loop.
    EntryBasicBlock->moveBefore(loopStart);
    Builder.CreateBr(loopStart);

    // continue with setting up the switch inside the loop.
    Builder.SetInsertPoint(loopStart);

    // create the switch.
    auto *loadDispatcherVal = Builder.CreateLoad(dispatcher->getAllocatedType(), dispatcher, "dispatcher");
    auto *switchStmt = Builder.CreateSwitch(loadDispatcherVal, nullptr);

    // create default block.
    auto *defaultSwitchBasicBlock = llvm::BasicBlock::Create(CTX, "defaultSwitchBasicBlock", &F, loopEnd);
    switchStmt->setDefaultDest(defaultSwitchBasicBlock);

    // make it point to the loop end.
    Builder.SetInsertPoint(defaultSwitchBasicBlock);
    Builder.CreateBr(loopEnd);

    // connect the end to the start of the loop.
    Builder.SetInsertPoint(loopEnd);
    Builder.CreateBr(loopStart);

    // we erase the first basic block since its already taken care of and won't
    // be part of the switch.
    FunctionBasicBlocks.erase(FunctionBasicBlocks.begin());

    // for each of the original basic blocks put them in the switch
    // we need to do this separately, so we can then reference the cases directly.
    for (auto &BB: FunctionBasicBlocks) {
        auto *caseNumber = llvm::ConstantInt::get(llvm::IntegerType::getInt32Ty(CTX), switchStmt->getNumCases());
        switchStmt->addCase(caseNumber, BB);
        BB->moveBefore(defaultSwitchBasicBlock);
    }

    // Remap the branches and adjust the logic for flattening.
    for (auto &BB: FunctionBasicBlocks) {
        if (auto *ret = llvm::dyn_cast<llvm::ReturnInst>(BB->getTerminator()); ret != nullptr) {
            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isConditional()) {
            auto *conditionTrueBB = br->getSuccessor(0);
            auto *conditionFalseBB = br->getSuccessor(1);

            auto *switchNumberTrue = switchStmt->findCaseDest(conditionTrueBB);
            auto *switchNumberFalse = switchStmt->findCaseDest(conditionFalseBB);

            // since we know that there always will be a case we can use the
            // NULL property to check for a branch to the default case.

            if (switchNumberTrue == nullptr) {
                switchNumberTrue = llvm::ConstantInt::get(
                        llvm::IntegerType::getInt32Ty(CTX), switchStmt->getNumCases() - 1
                );
            }

            if (switchNumberFalse == nullptr) {
                switchNumberFalse = llvm::ConstantInt::get(
                        llvm::IntegerType::getInt32Ty(CTX), switchStmt->getNumCases() - 1
                );
            }

            Builder.SetInsertPoint(br);
            auto *selectInst = Builder.CreateSelect(
                    br->getCondition(),
                    switchNumberTrue,
                    switchNumberFalse,
                    "",
                    br
            );

            Builder.SetInsertPoint(br);
            Builder.CreateStore(selectInst, loadDispatcherVal->getPointerOperand());
            Builder.CreateBr(loopEnd);

            br->eraseFromParent();

            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isUnconditional()) {
            auto *switchNumber = switchStmt->findCaseDest(br->getSuccessor(0));
            if (switchNumber == nullptr) {
                switchNumber = llvm::ConstantInt::get(
                        llvm::IntegerType::getInt32Ty(CTX), switchStmt->getNumCases() - 1
                );
            }

            Builder.SetInsertPoint(br);
            Builder.CreateStore(switchNumber, loadDispatcherVal->getPointerOperand());
            Builder.CreateBr(loopEnd);

            br->eraseFromParent();

            continue;
        }
    }

    // fixup instructions referenced in multiple blocks.
    for (auto &Inst: findAllInstructionUsedInMultipleBlocks(F)) {
        llvm::DemoteRegToStack(*Inst);
    }

    assert(findAllInstructionUsedInMultipleBlocks(F).empty() &&
           "leftover instruction that are used in multiple blocks");

    // fixup PHI nodes reference in basic blocks after the reconstruction
    // of the control flow.
    for (auto &PHINode: findAllPHINodes(F)) {
        llvm::DemotePHIToStack(PHINode);
    }

    assert(findAllPHINodes(F).empty() && "leftover PHI nodes in basic blocks");

//    // Debug print.
//    for (auto &BB: F) {
//        llvm::errs() << BB << "\n";
//    }

    return true;
}

std::vector<llvm::Instruction *>
ControlFlowFlattening::findAllInstructionUsedInMultipleBlocks(llvm::Function &F) const {
    auto *EntryBasicBlock = &*F.begin();
    std::vector<llvm::Instruction *> usedOutside;

    // fixup instrunction referenced in multiple blocks.
    for (auto &BB: F) {
        for (auto &Inst: BB) {
            // in the entry block there will be a bunch of stack allocation using alloca
            // that are referenced in multiple blocks thus we need to ignore those when
            // filtering.
            if (llvm::isa<llvm::AllocaInst>(Inst) && Inst.getParent() == EntryBasicBlock) {
                continue;
            }

            // check if used outside the current block.
            if (Inst.isUsedOutsideOfBlock(&BB)) {
                usedOutside.push_back(&Inst);
            }
        }
    }

    return usedOutside;
}

std::vector<llvm::PHINode *> ControlFlowFlattening::findAllPHINodes(llvm::Function &F) const {
    std::vector<llvm::PHINode *> nodes;

    for (auto &BB: F) {
        for (auto &Inst: BB) {
            if (llvm::isa<llvm::PHINode>(&Inst)) {
                nodes.push_back(llvm::cast<llvm::PHINode>(&Inst));
            }
        }
    }

    return nodes;
}

//------------------------------------------------------
//               Registration of the Plugi:n
//------------------------------------------------------
llvm::PassPluginLibraryInfo getControlFlowFlatteningPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "cff",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "cff") {
                                FPM.addPass(ControlFlowFlattening());
                                return true;
                            }
                            return false;
                        });
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getControlFlowFlatteningPluginInfo();
}
