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
    auto *dispatcher = Builder.CreateAlloca(LLVM_I32(CTX), nullptr, "dispatcher");
    Builder.CreateStore(LLVM_CONST_I32(CTX, 0), dispatcher);

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
        switchStmt->addCase(LLVM_CONST_I32(CTX, switchStmt->getNumCases()), BB);
        BB->moveBefore(defaultSwitchBasicBlock);
    }

    // Add 1 more case for Bogus operations.
    auto BogusBB = llvm::BasicBlock::Create(CTX, "BogusBasicBlock", &F);
    switchStmt->addCase(LLVM_CONST_I32(CTX, switchStmt->getNumCases()), BogusBB);
    BogusBB->moveBefore(defaultSwitchBasicBlock);

    // setup lookup table.
    constexpr int32_t ExtraNumberCount = 4;

    Builder.SetInsertPoint(&*EntryBasicBlock->getFirstInsertionPt());
    auto *LookupTable = Builder.CreateAlloca(
            LLVM_I32_ARRAY(CTX, switchStmt->getNumCases() + ExtraNumberCount),
            nullptr,
            "lookupTable"
    );

    // populate the lookup table
    std::vector<int32_t> lookupTableValues;
    for (int32_t idx = 0; idx < int32_t(switchStmt->getNumCases() + ExtraNumberCount); ++idx) {
        int32_t val = (idx + 1) - ExtraNumberCount;
        lookupTableValues.push_back(val);
        auto *EP = Builder.CreateInBoundsGEP(
                LLVM_I32_ARRAY(CTX, switchStmt->getNumCases() + ExtraNumberCount),
                LookupTable,
                {LLVM_CONST_I32(CTX, 0), LLVM_CONST_I32(CTX, idx)}
        );
        Builder.CreateStore(LLVM_CONST_I32(CTX, val), EP);
    }

    // insert bogus operations to the BogusBasicBlock.
    Builder.SetInsertPoint(BogusBB);
    for (std::size_t idx = 0; idx < lookupTableValues.size(); idx += 2) {
        auto *EP = Builder.CreateInBoundsGEP(
                LLVM_I32_ARRAY(CTX, switchStmt->getNumCases() + ExtraNumberCount),
                LookupTable,
                {LLVM_CONST_I32(CTX, 0), LLVM_CONST_I32(CTX, idx)}
        );

        Builder.CreateStore(LLVM_CONST_I32(CTX, idx - 1), EP);
    }

    Builder.CreateStore(
            Builder.CreateLoad(
                    LLVM_I32(CTX),
                    Builder.CreateInBoundsGEP(
                            LLVM_I32_ARRAY(CTX, switchStmt->getNumCases() + ExtraNumberCount),
                            LookupTable,
                            {
                                    LLVM_CONST_I32(CTX, 0),
                                    LLVM_CONST_I32(CTX, 0)
                            }
                    )),
            loadDispatcherVal->getPointerOperand()
    );

    Builder.CreateBr(*FunctionBasicBlocks.begin());

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
                switchNumberTrue = LLVM_CONST_I32(CTX, switchStmt->getNumCases() - 1);
            }

            if (switchNumberFalse == nullptr) {
                switchNumberFalse = LLVM_CONST_I32(CTX, switchStmt->getNumCases() - 1);
            }

            Builder.SetInsertPoint(br);

            auto *trueVal = (this->*NextHandlers[RandomInt64(ComputingNextHandlerFuncCount)])(
                    CTX,
                    Builder,
                    LookupTable,
                    int32_t(switchNumberTrue->getSExtValue()),
                    lookupTableValues
            );
            auto *falseVal = (this->*NextHandlers[RandomInt64(ComputingNextHandlerFuncCount)])(
                    CTX,
                    Builder,
                    LookupTable,
                    int32_t(switchNumberFalse->getSExtValue()),
                    lookupTableValues
            );

            auto *selectInst = Builder.CreateSelect(br->getCondition(), trueVal, falseVal, "", br);
            Builder.CreateStore(selectInst, loadDispatcherVal->getPointerOperand());
            Builder.CreateBr(loopEnd);

            br->eraseFromParent();

            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isUnconditional()) {
            auto *switchNumber = switchStmt->findCaseDest(br->getSuccessor(0));
            if (switchNumber == nullptr) {
                switchNumber = LLVM_CONST_I32(CTX, switchStmt->getNumCases() - 1);
            }

            Builder.SetInsertPoint(br);
            auto *Val = (this->*NextHandlers[RandomInt64(ComputingNextHandlerFuncCount)])(
                    CTX,
                    Builder,
                    LookupTable,
                    int32_t(switchNumber->getSExtValue()),
                    lookupTableValues
            );

            Builder.CreateStore(Val, loadDispatcherVal->getPointerOperand());
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

bool ControlFlowFlattening::handleJumpTableVersion(llvm::Function &F) {
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

    // remove the entry block from the list of function blocks.
    FunctionBasicBlocks.erase(FunctionBasicBlocks.begin());

    // Add BogusBasicBlock to add confusion.
    auto BogusBasicBlock = llvm::BasicBlock::Create(CTX, "BogusBasciBlock", &F);
    BogusBasicBlock->moveAfter(EntryBasicBlock);

    llvm::IRBuilder<> Builder(BogusBasicBlock);
    Builder.CreateBr(*FunctionBasicBlocks.begin());

    FunctionBasicBlocks.insert(FunctionBasicBlocks.begin(), BogusBasicBlock);

    // collect the addresses of all basic blocks expect the entry.
    std::vector<llvm::BlockAddress *> BlockAddresses;
    for (auto &BB: FunctionBasicBlocks) {
        BlockAddresses.push_back(llvm::BlockAddress::get(BB));
    }

    Builder.SetInsertPoint(&*EntryBasicBlock->getFirstInsertionPt());

    // Create Jump Table.
    auto BlockAddressTyp = (*BlockAddresses.begin())->getType();
    auto JumpTableSize = LLVM_CONST_I32(CTX, BlockAddresses.size());
    auto *JumpTable = Builder.CreateAlloca(BlockAddressTyp, JumpTableSize, "JumpTable");

    // Populate the JumpTable with the label addresses
    std::unordered_map<std::string, llvm::Value *> namesToEps;
    for (std::size_t i = 0; i < BlockAddresses.size(); i++) {
        auto *Index = LLVM_CONST_I32(CTX, i);
        auto *EP = Builder.CreateGEP(BlockAddressTyp, JumpTable, Index);
        Builder.CreateStore(BlockAddresses[i], EP);

        // store the element Ptr for later use.
        if (!BlockAddresses[i]->getBasicBlock()->hasName()) {
            BlockAddresses[i]->getBasicBlock()->setName(std::to_string(i));
        }
        namesToEps.insert({BlockAddresses[i]->getBasicBlock()->getName().str(), EP});
    }

    // For each Basic block update the Branch instructions.
    for (auto &BB: FunctionBasicBlocks) {
        if (auto *ret = llvm::dyn_cast<llvm::ReturnInst>(BB->getTerminator()); ret != nullptr) {
            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isConditional()) {
            auto *conditionTrueBB = br->getSuccessor(0);
            auto *conditionFalseBB = br->getSuccessor(1);

            auto *jumpAddressTrue = namesToEps.find(conditionTrueBB->getName().str())->second;
            auto *jumpAddressFalse = namesToEps.find(conditionFalseBB->getName().str())->second;

            Builder.SetInsertPoint(br);
            auto *selectInst = Builder.CreateSelect(
                    br->getCondition(),
                    jumpAddressTrue,
                    jumpAddressFalse,
                    "",
                    br
            );

            Builder.SetInsertPoint(br);

            auto *ibr = Builder.CreateIndirectBr(Builder.CreateLoad(BlockAddressTyp, selectInst));
            for (auto &BB: FunctionBasicBlocks) {
                ibr->addDestination(BB);
            }

            br->eraseFromParent();

            continue;
        }

        if (auto *br = llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator()); br != nullptr && br->isUnconditional()) {
            auto *jumpAddress = namesToEps.find(br->getSuccessor(0)->getName().str())->second;

            Builder.SetInsertPoint(br);

            auto *ibr = Builder.CreateIndirectBr(Builder.CreateLoad(BlockAddressTyp, jumpAddress));
            for (auto &BB: FunctionBasicBlocks) {
                ibr->addDestination(BB);
            }

            br->eraseFromParent();

            continue;
        }
    }

    // Finish with the EntryBlock.
    Builder.SetInsertPoint(&*EntryBasicBlock->getTerminator());
    auto *jumpAddres = namesToEps.find(EntryBasicBlock->getTerminator()->getSuccessor(0)->getName().str())->second;
    auto *ibr = Builder.CreateIndirectBr(Builder.CreateLoad(BlockAddressTyp, jumpAddres));
    for (auto &BB: FunctionBasicBlocks) {
        ibr->addDestination(BB);
    }

    EntryBasicBlock->getTerminator()->eraseFromParent();

    // Add confusion to the bogus block.
    Builder.SetInsertPoint(&*BogusBasicBlock->getFirstInsertionPt());

    // Insert Bogus operations.
    std::shuffle(BlockAddresses.begin(), BlockAddresses.end(), GetRandomGenerator());
    for (std::size_t i = 0; i < BlockAddresses.size(); i += 2) {
        auto *Index = LLVM_CONST_I32(CTX, i);
        auto *EP = Builder.CreateGEP(BlockAddressTyp, JumpTable, Index);
        Builder.CreateStore(BlockAddresses[i], EP);
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

    auto *left = Builder.CreateLoad(
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

    auto *right = Builder.CreateLoad(
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
    std::unordered_map<int32_t, int32_t> indices;

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

    auto *left = Builder.CreateLoad(
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

    auto *right = Builder.CreateLoad(
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

    auto *left = Builder.CreateLoad(
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

    auto *right = Builder.CreateLoad(
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
