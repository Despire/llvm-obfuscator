#include <vector>
#include <unordered_map>
#include <string>

#include "RNG.h"
#include "Utils.h"
#include "ControlFlowFlattening.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Transforms/Utils/LowerSwitch.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils/Local.h"

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

    bool modified = (this->*Handlers[RandomInt64(ControlFlowFlatteningFuncCount)])(F);
    if (modified) {
        ++ControlFlowFlatteningCount;
        return llvm::PreservedAnalyses::none();
    }

    return llvm::PreservedAnalyses::all();
}

bool ControlFlowFlattening::handleLoopSwitchVersion(llvm::Function &F) {
    llvm::LLVMContext &ctx = F.getContext();
    std::vector<llvm::BasicBlock *> functionBasicBlocks;

    // Collect the BasicBlocks and also check whether they throw an exception.
    // We won't do control flow flattening for exceptions for now.
    for (auto &beg: F) {
        // 1.st clear exception handling
        if (beg.isLandingPad() || llvm::isa<llvm::InvokeInst>(&beg)) {
            return false;
        }
        functionBasicBlocks.emplace_back(&beg);
    }

    llvm::BasicBlock *entryBasicBlock = functionBasicBlocks.front();
    entryBasicBlock->setName("entry");

    // If the EntryBasicBlock doesn't end in unconditional branch (i.e. it has multiple BasicBlocks where
    // control flow can go) we need to split the Block into two.
    if (llvm::dyn_cast<llvm::BranchInst>(entryBasicBlock->getTerminator())) {
        auto lastInst = std::prev(entryBasicBlock->end());
        // also take into account the `icmp` instruction that preceeds the `br` instruction.
        if (lastInst != entryBasicBlock->begin()) {
            --lastInst;
        }

        llvm::BasicBlock *split = entryBasicBlock->splitBasicBlock(lastInst, "EntryBasicBlockSplit");
        functionBasicBlocks.insert(std::next(functionBasicBlocks.begin()), split);
    }

    // Remove the branch from the FirstBasicBlock as we will insert a switch Statement instead.
    // Note that if we split the BasicBlock this will still point to the first BasicBlock.
    entryBasicBlock->getTerminator()->eraseFromParent();

    // Start writing at the end of the BasicBlock.
    llvm::IRBuilder<> builder(entryBasicBlock);

    // create the switch var and set it to 0.
    llvm::AllocaInst *dispatcher = builder.CreateAlloca(LLVM_I32(ctx), nullptr, "dispatcher");
    builder.CreateStore(LLVM_CONST_I32(ctx, 0), dispatcher);

    // since the switch will be wrapped in an infinite loop create it first.
    llvm::BasicBlock *loopStart = llvm::BasicBlock::Create(ctx, "loopStart", &F, entryBasicBlock);;
    llvm::BasicBlock *loopEnd = llvm::BasicBlock::Create(ctx, "loopEnd", &F, entryBasicBlock);

    // make the EntryBB first && add a Branch to the start of the loop.
    entryBasicBlock->moveBefore(loopStart);
    builder.CreateBr(loopStart);

    // continue with setting up the switch inside the loop.
    builder.SetInsertPoint(loopStart);

    // create the switch.
    llvm::LoadInst *loadDispatcherVal = builder.CreateLoad(dispatcher->getAllocatedType(), dispatcher, "dispatcher");
    llvm::SwitchInst *switchStmt = builder.CreateSwitch(loadDispatcherVal, nullptr);

    // create default block.
    llvm::BasicBlock *defaultSwitchBasicBlock = llvm::BasicBlock::Create(ctx, "defaultSwitchBasicBlock", &F, loopEnd);
    switchStmt->setDefaultDest(defaultSwitchBasicBlock);

    // make it point to the loop end.
    builder.SetInsertPoint(defaultSwitchBasicBlock);
    builder.CreateBr(loopEnd);

    // connect the end to the start of the loop.
    builder.SetInsertPoint(loopEnd);
    builder.CreateBr(loopStart);

    // we erase the first basic block since its already taken care of and won't
    // be part of the switch.
    functionBasicBlocks.erase(functionBasicBlocks.begin());

    // for each of the original basic blocks put them in the switch
    // we need to do this separately, so we can then reference the cases directly.
    for (auto &BB: functionBasicBlocks) {
        switchStmt->addCase(LLVM_CONST_I32(ctx, switchStmt->getNumCases()), BB);
        BB->moveBefore(defaultSwitchBasicBlock);
    }

    // Add 1 more case for Bogus operations.
    llvm::BasicBlock *BogusBB = llvm::BasicBlock::Create(ctx, "BogusBasicBlock", &F);
    switchStmt->addCase(LLVM_CONST_I32(ctx, switchStmt->getNumCases()), BogusBB);
    BogusBB->moveBefore(defaultSwitchBasicBlock);

    // setup lookup table.
    constexpr int32_t extraNumberCount = 4;

    builder.SetInsertPoint(&*entryBasicBlock->getFirstInsertionPt());
    llvm::AllocaInst *LookupTable = builder.CreateAlloca(
            LLVM_I32_ARRAY(ctx, switchStmt->getNumCases() + extraNumberCount),
            nullptr,
            "lookupTable"
    );

    // populate the lookup table
    std::vector<int32_t> lookupTableValues;
    for (int32_t idx = 0; idx < int32_t(switchStmt->getNumCases() + extraNumberCount); ++idx) {
        int32_t val = (idx + 1) - extraNumberCount;
        lookupTableValues.push_back(val);
        llvm::Value *EP = builder.CreateInBoundsGEP(
                LLVM_I32_ARRAY(ctx, switchStmt->getNumCases() + extraNumberCount),
                LookupTable,
                {LLVM_CONST_I32(ctx, 0), LLVM_CONST_I32(ctx, idx)}
        );
        builder.CreateStore(LLVM_CONST_I32(ctx, val), EP);
    }

    // insert bogus operations to the BogusBasicBlock.
    builder.SetInsertPoint(BogusBB);
    for (std::size_t idx = 0; idx < lookupTableValues.size(); idx += 2) {
        llvm::Value *EP = builder.CreateInBoundsGEP(
                LLVM_I32_ARRAY(ctx, switchStmt->getNumCases() + extraNumberCount),
                LookupTable,
                {LLVM_CONST_I32(ctx, 0), LLVM_CONST_I32(ctx, idx)}
        );

        builder.CreateStore(LLVM_CONST_I32(ctx, idx - 1), EP);
    }

    builder.CreateStore(
            builder.CreateLoad(
                    LLVM_I32(ctx),
                    builder.CreateInBoundsGEP(
                            LLVM_I32_ARRAY(ctx, switchStmt->getNumCases() + extraNumberCount),
                            LookupTable,
                            {
                                    LLVM_CONST_I32(ctx, 0),
                                    LLVM_CONST_I32(ctx, 0)
                            }
                    )),
            loadDispatcherVal->getPointerOperand()
    );

    builder.CreateBr(*functionBasicBlocks.begin());

    // Remap the branches and adjust the logic for flattening.
    for (auto &BB: functionBasicBlocks) {
        if (auto *ret = llvm::dyn_cast<llvm::ReturnInst>(BB->getTerminator()); ret != nullptr) {
            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isConditional()) {
            llvm::BasicBlock *conditionTrueBB = br->getSuccessor(0);
            llvm::BasicBlock *conditionFalseBB = br->getSuccessor(1);

            llvm::ConstantInt *switchNumberTrue = switchStmt->findCaseDest(conditionTrueBB);
            llvm::ConstantInt *switchNumberFalse = switchStmt->findCaseDest(conditionFalseBB);

            // since we know that there always will be a case we can use the
            // NULL property to check for a branch to the default case.

            if (switchNumberTrue == nullptr) {
                switchNumberTrue = LLVM_CONST_I32(ctx, switchStmt->getNumCases() - 1);
            }

            if (switchNumberFalse == nullptr) {
                switchNumberFalse = LLVM_CONST_I32(ctx, switchStmt->getNumCases() - 1);
            }

            builder.SetInsertPoint(br);

            llvm::Value *trueVal = (this->*NextHandlers[RandomInt64(ComputingNextHandlerFuncCount)])(
                    ctx,
                    builder,
                    LookupTable,
                    int32_t(switchNumberTrue->getSExtValue()),
                    lookupTableValues
            );
            llvm::Value *falseVal = (this->*NextHandlers[RandomInt64(ComputingNextHandlerFuncCount)])(
                    ctx,
                    builder,
                    LookupTable,
                    int32_t(switchNumberFalse->getSExtValue()),
                    lookupTableValues
            );

            llvm::Value *selectInst = builder.CreateSelect(br->getCondition(), trueVal, falseVal, "", br);
            builder.CreateStore(selectInst, loadDispatcherVal->getPointerOperand());
            builder.CreateBr(loopEnd);

            br->eraseFromParent();

            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isUnconditional()) {
            llvm::ConstantInt *switchNumber = switchStmt->findCaseDest(br->getSuccessor(0));
            if (switchNumber == nullptr) {
                switchNumber = LLVM_CONST_I32(ctx, switchStmt->getNumCases() - 1);
            }

            builder.SetInsertPoint(br);
            llvm::Value *val = (this->*NextHandlers[RandomInt64(ComputingNextHandlerFuncCount)])(
                    ctx,
                    builder,
                    LookupTable,
                    int32_t(switchNumber->getSExtValue()),
                    lookupTableValues
            );

            builder.CreateStore(val, loadDispatcherVal->getPointerOperand());
            builder.CreateBr(loopEnd);

            br->eraseFromParent();

            continue;
        }
    }

    // fixup instructions referenced in multiple blocks.
    for (auto &inst: findAllInstructionUsedInMultipleBlocks(F)) {
        llvm::DemoteRegToStack(*inst);
    }

    assert(findAllInstructionUsedInMultipleBlocks(F).empty() &&
           "leftover instruction that are used in multiple blocks");

    // fixup PHI nodes reference in basic blocks after the reconstruction
    // of the control flow.
    for (auto &phiNode: findAllPHINodes(F)) {
        llvm::DemotePHIToStack(phiNode);
    }

    assert(findAllPHINodes(F).empty() && "leftover PHI nodes in basic blocks");

    return true;
}

std::vector<llvm::Instruction *>
ControlFlowFlattening::findAllInstructionUsedInMultipleBlocks(llvm::Function &F) const {
    llvm::BasicBlock *EntryBasicBlock = &*F.begin();
    std::vector<llvm::Instruction *> usedOutside;

    // fixup instrunction referenced in multiple blocks.
    for (auto &BB: F) {
        for (auto &inst: BB) {
            // in the entry block there will be a bunch of stack allocation using alloca
            // that are referenced in multiple blocks thus we need to ignore those when
            // filtering.
            if (llvm::isa<llvm::AllocaInst>(&inst) && inst.getParent() == EntryBasicBlock) {
                continue;
            }

            // check if used outside the current block.
            if (inst.isUsedOutsideOfBlock(&BB)) {
                usedOutside.push_back(&inst);
            }
        }
    }

    return usedOutside;
}

std::vector<llvm::PHINode *> ControlFlowFlattening::findAllPHINodes(llvm::Function &F) const {
    std::vector<llvm::PHINode *> nodes;

    for (auto &BB: F) {
        for (auto &inst: BB) {
            if (llvm::isa<llvm::PHINode>(&inst)) {
                nodes.push_back(llvm::cast<llvm::PHINode>(&inst));
            }
        }
    }

    return nodes;
}

bool ControlFlowFlattening::handleJumpTableVersion(llvm::Function &F) {
    llvm::LLVMContext &ctx = F.getContext();
    std::vector<llvm::BasicBlock *> functionBasicBlocks;

    // Collect the BasicBlocks and also check whether they throw an exception.
    // We won't do control flow flattening for exceptions for now.
    for (auto &beg: F) {
        // 1.st clear exception handling
        if (beg.isLandingPad() || llvm::isa<llvm::InvokeInst>(&beg)) {
            return false;
        }
        functionBasicBlocks.emplace_back(&beg);
    }

    llvm::BasicBlock *EntryBasicBlock = functionBasicBlocks.front();
    EntryBasicBlock->setName("entry");

    // If the EntryBasicBlock doesn't end in unconditional branch (i.e. it has multiple BasicBlocks where
    // control flow can go) we need to split the Block into two.
    if (llvm::dyn_cast<llvm::BranchInst>(EntryBasicBlock->getTerminator())) {
        auto LastInst = std::prev(EntryBasicBlock->end());
        // also take into account the `icmp` instruction that preceeds the `br` instruction.
        if (LastInst != EntryBasicBlock->begin()) {
            --LastInst;
        }

        llvm::BasicBlock *split = EntryBasicBlock->splitBasicBlock(LastInst, "EntryBasicBlockSplit");
        functionBasicBlocks.insert(std::next(functionBasicBlocks.begin()), split);
    }

    // remove the entry block from the list of function blocks.
    functionBasicBlocks.erase(functionBasicBlocks.begin());

    // Add BogusBasicBlock to add confusion.
    llvm::BasicBlock *bogusBasicBlock = llvm::BasicBlock::Create(ctx, "BogusBasciBlock", &F);
    bogusBasicBlock->moveAfter(EntryBasicBlock);

    llvm::IRBuilder<> builder(bogusBasicBlock);
    builder.CreateBr(*functionBasicBlocks.begin());

    functionBasicBlocks.insert(functionBasicBlocks.begin(), bogusBasicBlock);

    // collect the addresses of all basic blocks expect the entry.
    std::vector<llvm::BlockAddress *> blockAddresses;
    for (auto &BB: functionBasicBlocks) {
        blockAddresses.push_back(llvm::BlockAddress::get(BB));
    }

    builder.SetInsertPoint(&*EntryBasicBlock->getFirstInsertionPt());

    // Create Jump Table.
    llvm::Type *blockAddressTyp = (*blockAddresses.begin())->getType();
    llvm::ConstantInt *jumpTableSize = LLVM_CONST_I32(ctx, blockAddresses.size());
    llvm::AllocaInst *JumpTable = builder.CreateAlloca(blockAddressTyp, jumpTableSize, "JumpTable");

    // Populate the JumpTable with the label addresses
    std::unordered_map<std::string, llvm::Value *> namesToEps;
    for (std::size_t i = 0; i < blockAddresses.size(); i++) {
        llvm::ConstantInt *index = LLVM_CONST_I32(ctx, i);
        llvm::Value *EP = builder.CreateGEP(blockAddressTyp, JumpTable, index);
        builder.CreateStore(blockAddresses[i], EP);

        // store the element Ptr for later use.
        if (!blockAddresses[i]->getBasicBlock()->hasName()) {
            blockAddresses[i]->getBasicBlock()->setName(std::to_string(i));
        }
        namesToEps.insert({blockAddresses[i]->getBasicBlock()->getName().str(), EP});
    }

    // For each Basic block update the Branch instructions.
    for (auto &BB: functionBasicBlocks) {
        if (auto *ret = llvm::dyn_cast<llvm::ReturnInst>(BB->getTerminator()); ret != nullptr) {
            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isConditional()) {
            llvm::BasicBlock *conditionTrueBB = br->getSuccessor(0);
            llvm::BasicBlock *conditionFalseBB = br->getSuccessor(1);

            llvm::Value *jumpAddressTrue = namesToEps.find(conditionTrueBB->getName().str())->second;
            llvm::Value *jumpAddressFalse = namesToEps.find(conditionFalseBB->getName().str())->second;

            builder.SetInsertPoint(br);
            llvm::Value *selectInst = builder.CreateSelect(
                    br->getCondition(),
                    jumpAddressTrue,
                    jumpAddressFalse,
                    "",
                    br
            );

            builder.SetInsertPoint(br);

            llvm::IndirectBrInst *ibr = builder.CreateIndirectBr(builder.CreateLoad(blockAddressTyp, selectInst));
            for (auto &BB: functionBasicBlocks) {
                ibr->addDestination(BB);
            }

            br->eraseFromParent();

            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isUnconditional()) {
            llvm::Value *jumpAddress = namesToEps.find(br->getSuccessor(0)->getName().str())->second;

            builder.SetInsertPoint(br);

            llvm::IndirectBrInst *ibr = builder.CreateIndirectBr(builder.CreateLoad(blockAddressTyp, jumpAddress));
            for (auto &BB: functionBasicBlocks) {
                ibr->addDestination(BB);
            }

            br->eraseFromParent();

            continue;
        }
    }

    // Finish with the EntryBlock.
    builder.SetInsertPoint(&*EntryBasicBlock->getTerminator());
    llvm::Value *jumpAddres = namesToEps.find(EntryBasicBlock->getTerminator()->getSuccessor(0)->getName().str())->second;
    llvm::IndirectBrInst *ibr = builder.CreateIndirectBr(builder.CreateLoad(blockAddressTyp, jumpAddres));
    for (auto &BB: functionBasicBlocks) {
        ibr->addDestination(BB);
    }

    EntryBasicBlock->getTerminator()->eraseFromParent();

    // Add confusion to the bogus block.
    builder.SetInsertPoint(&*bogusBasicBlock->getFirstInsertionPt());

    // Insert Bogus operations.
    std::shuffle(blockAddresses.begin(), blockAddresses.end(), GetRandomGenerator());
    for (std::size_t i = 0; i < blockAddresses.size(); i += 2) {
        llvm::ConstantInt *Index = LLVM_CONST_I32(ctx, i);
        llvm::Value *EP = builder.CreateGEP(blockAddressTyp, JumpTable, Index);
        builder.CreateStore(blockAddresses[i], EP);
    }

    // fixup instructions referenced in multiple blocks.
    for (auto &inst: findAllInstructionUsedInMultipleBlocks(F)) {
        llvm::DemoteRegToStack(*inst);
    }

    assert(findAllInstructionUsedInMultipleBlocks(F).empty() &&
           "leftover instruction that are used in multiple blocks");

    // fixup PHI nodes reference in basic blocks after the reconstruction
    // of the control flow.
    for (auto &phiNode: findAllPHINodes(F)) {
        llvm::DemotePHIToStack(phiNode);
    }

    assert(findAllPHINodes(F).empty() && "leftover PHI nodes in basic blocks");

    return true;
}

std::pair<int32_t, int32_t>
ControlFlowFlattening::calculateDispatcherValueSubtraction(int32_t switchNumber, std::vector<int32_t> &arr) const {
    std::size_t right = RandomInt64(int32_t(arr.size()));
    std::size_t left = 0;

    if (switchNumber < (arr[right] - arr[left])) {
        while (switchNumber < (arr[right] - arr[left])) ++left;
    } else {
        while (switchNumber > (arr[right] - arr[left])) ++right;
    }

    return {right, left};
}

llvm::Value *ControlFlowFlattening::handleComputingNextSubtraction(
        llvm::LLVMContext &CTX,
        llvm::IRBuilder<> &Builder,
        llvm::AllocaInst *LookupTable,
        int32_t n,
        std::vector<int32_t> &arr
) {
    auto indices = calculateDispatcherValueSubtraction(n, arr);

    llvm::LoadInst *left = Builder.CreateLoad(
            LLVM_I32(CTX),
            Builder.CreateInBoundsGEP(
                    LLVM_I32_ARRAY(CTX, arr.size()),
                    LookupTable,
                    {
                            LLVM_CONST_I32(CTX, 0),
                            LLVM_CONST_I32(CTX, indices.first)
                    }
            )
    );

    llvm::LoadInst *right = Builder.CreateLoad(
            LLVM_I32(CTX),
            Builder.CreateInBoundsGEP(
                    LLVM_I32_ARRAY(CTX, arr.size()),
                    LookupTable,
                    {
                            LLVM_CONST_I32(CTX, 0),
                            LLVM_CONST_I32(CTX, indices.second)
                    }
            )
    );

    return Builder.CreateSub(left, right);
}

std::pair<int32_t, int32_t>
ControlFlowFlattening::calculateDispatcherValueAddition(int32_t switchNumber, std::vector<int32_t> &arr) const {
    std::unordered_map < int32_t, int32_t > indices;

    int32_t left = 0;
    int32_t right = 0;

    for (int32_t i = 0; i < arr.size(); ++i) {
        if (auto iter = indices.find(switchNumber - arr[i]); iter != indices.end()) {
            right = i;
            left = iter->second;
            break;
        }

        indices[arr[i]] = i;
    }

    assert((left != right != 0) && "failed to find two values that sum up to next switch number");
    return {right, left};
}

llvm::Value *
ControlFlowFlattening::handleComputingNextAddition(
        llvm::LLVMContext &CTX,
        llvm::IRBuilder<> &Builder,
        llvm::AllocaInst *LookupTable,
        int32_t n,
        std::vector<int32_t> &arr
) {
    auto indices = calculateDispatcherValueAddition(n, arr);

    llvm::LoadInst *left = Builder.CreateLoad(
            LLVM_I32(CTX),
            Builder.CreateInBoundsGEP(
                    LLVM_I32_ARRAY(CTX, arr.size()),
                    LookupTable,
                    {
                            LLVM_CONST_I32(CTX, 0),
                            LLVM_CONST_I32(CTX, indices.first)
                    }
            )
    );

    llvm::LoadInst *right = Builder.CreateLoad(
            LLVM_I32(CTX),
            Builder.CreateInBoundsGEP(
                    LLVM_I32_ARRAY(CTX, arr.size()),
                    LookupTable,
                    {
                            LLVM_CONST_I32(CTX, 0),
                            LLVM_CONST_I32(CTX, indices.second)
                    }
            )
    );

    return Builder.CreateAdd(left, right);
}

std::pair<int32_t, int32_t>
ControlFlowFlattening::calculateDispatcherValueMod(int32_t switchNumber, std::vector<int32_t> &arr) const {
    int32_t right = arr.size() - 1; // the last value in the array is a special value.
    int32_t left = right;

    assert(arr[right] != 0 && "the last value in the array must not be zero");

    bool found = false;
    while (left >= 0) {
        if (arr[left] % arr[right] == switchNumber) {
            found = true;
            break;
        }
        --left;
    }

    assert(found && (left != right != 0) && "failed to find two values whose modulus is equal to the switch number");
    return {left, right};
}

llvm::Value *
ControlFlowFlattening::handleComputingNextMod(
        llvm::LLVMContext &CTX,
        llvm::IRBuilder<> &Builder,
        llvm::AllocaInst *LookupTable,
        int32_t n,
        std::vector<int32_t> &arr
) {
    auto indices = calculateDispatcherValueMod(n, arr);

    llvm::LoadInst *left = Builder.CreateLoad(
            LLVM_I32(CTX),
            Builder.CreateInBoundsGEP(
                    LLVM_I32_ARRAY(CTX, arr.size()),
                    LookupTable,
                    {
                            LLVM_CONST_I32(CTX, 0),
                            LLVM_CONST_I32(CTX, indices.first)
                    }
            )
    );

    llvm::LoadInst *right = Builder.CreateLoad(
            LLVM_I32(CTX),
            Builder.CreateInBoundsGEP(
                    LLVM_I32_ARRAY(CTX, arr.size()),
                    LookupTable,
                    {
                            LLVM_CONST_I32(CTX, 0),
                            LLVM_CONST_I32(CTX, indices.second)
                    }
            )
    );

    return Builder.CreateSRem(left, right);
}

//------------------------------------------------------
//               Registration of the Plugin
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
