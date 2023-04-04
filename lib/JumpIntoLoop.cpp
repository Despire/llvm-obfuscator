#include "Utils.h"
#include "JumpIntoLoop.h"
#include "OpaquePredicates.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"
#include "llvm/Transforms/Utils/FixIrreducible.h"
#include "llvm/Transforms/Utils/Local.h"

#define DEBUG_TYPE "jump-into-loop"

STATISTIC(JumpIntoLoopCount, "# of performed loop jumps");

llvm::PreservedAnalyses JumpIntoLoop::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = false;
    // Simplify any loops in the function.
    // https://llvm.org/docs/LoopTerminology.html
    modified |= !llvm::LoopSimplifyPass().run(F, FAM).areAllPreserved();
    modified |= !llvm::FixIrreduciblePass().run(F, FAM).areAllPreserved();

    // Gather Analysis of the function.
    auto &RISet = FAM.getResult<ReachableIntegers>(F);
    auto &LoopInfo = FAM.getResult<llvm::LoopAnalysis>(F);

    // if there is a loop and there exists at least 1 BB that's outside the loop
    // add a jump into the loop from that basic block.
    if (!LoopInfo.empty()) {
        // select a random top-level loop to jump to.
        std::vector<llvm::Loop *> &loops = LoopInfo.getTopLevelLoopsVector();
        auto jumpToLoop = *RandomElement(loops.begin(), loops.end());

        // try to insert a new path into the loop if possible.
        modified |= tryIntroducingNewPath(jumpToLoop, RISet);
        if (modified) {
            ++JumpIntoLoopCount;
        }
    }

    if (modified) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

std::vector<llvm::PHINode *> findAllPHINodes(llvm::BasicBlock &BB) {
    std::vector<llvm::PHINode *> nodes;

    for (auto &Inst: BB) {
        if (llvm::isa<llvm::PHINode>(&Inst)) {
            nodes.push_back(llvm::cast<llvm::PHINode>(&Inst));
        }
    }

    return nodes;
}

bool JumpIntoLoop::tryIntroducingNewPath(llvm::Loop *TopLevelLoop, ReachableIntegers::Result &Set) {
    // given a top level loop find the deepest nested loop.
    llvm::Loop *innerLevelLoop = TopLevelLoop;
    findDeepestInnerLoop(TopLevelLoop, innerLevelLoop);

    // Currently deeply nested loops aren't supported only top level loops without nested loops.
    // TODO: fix me.
    if (innerLevelLoop->getLoopDepth() > 1) {
        return false;
    }

    // find the top-level loop predecessors.
    auto *loopPredecessor = TopLevelLoop->getLoopPredecessor();
    if (loopPredecessor == nullptr) {
        return false;
    }

    if (Set[loopPredecessor].empty()) {
        return false;
    }

    // pick a random basic block in the innermost loop to jump to.
    auto innerBlocks = innerLevelLoop->getBlocks();
    auto jumpToInnerLoopBlock = *RandomElement(innerBlocks.begin(), innerBlocks.end());
    auto predecessorMappings = findAllPrecedingInstructionInALoop(*jumpToInnerLoopBlock, *innerLevelLoop);

    LLVM_DEBUG(llvm::errs() << "jumping to: " << *jumpToInnerLoopBlock << '\n');

    // create the jump to the block in the loop.
    auto predecessorRI = Set[loopPredecessor];
    auto *instruction = loopPredecessor->getTerminator();

    OpaquePredicates opaquePredicates;
    auto pair = opaquePredicates.getRandomOpaquelyTruePredicate();
    auto *cond = (&opaquePredicates->*pair.first)(*RandomElement(predecessorRI.begin(), predecessorRI.end()),
                                                  instruction);
    auto newBB = llvm::SplitBlockAndInsertIfThen(cond, instruction, false);

    llvm::BranchInst::Create(jumpToInnerLoopBlock, newBB);

    // since we're using a true predicate swap the branch instruction successor.
    llvm::cast<llvm::BranchInst>(loopPredecessor->getTerminator())->swapSuccessors();

    // after the jump we need to update the phi nodes if any.
    for (auto &PHI: jumpToInnerLoopBlock->phis()) {
        // for each phi node in the BB we just jumped add a instruction (taken from the RI of the predecessors, which
        // should be reachable also from the new basic block because of the split before the branch instruction) and
        // add the newBB as the parent.
        PHI.addIncoming(llvm::ConstantAggregateZero::getNullValue(PHI.getType()), newBB->getParent());
    }

    // erase the old jump
    newBB->eraseFromParent();

    llvm::IRBuilder<> Builder(jumpToInnerLoopBlock->getFirstNonPHI());
    std::unordered_map<llvm::BasicBlock *, llvm::ValueToValueMapTy> newMappings;

    // create new phi nodes.
    for (auto mappings: predecessorMappings[jumpToInnerLoopBlock]) {
        auto toProcess = llvm::cast<llvm::Instruction>(mappings.second);
        if (auto *PHI = existsPhiThatContainInstruction(toProcess, *jumpToInnerLoopBlock); PHI) {
            newMappings[jumpToInnerLoopBlock][toProcess] = PHI;
            continue;
        }

        auto *PHI = Builder.CreatePHI(toProcess->getType(), 2);
        for (auto &block: directPredecessors(toProcess, jumpToInnerLoopBlock)) {
            PHI->addIncoming(toProcess, block);
        }

        for (auto p: llvm::predecessors(jumpToInnerLoopBlock)) {
            if (PHI->getBasicBlockIndex(p) >= 0) {
                continue;
            }
            PHI->addIncoming(llvm::ConstantAggregateZero::getNullValue(PHI->getType()), p);
        }

        newMappings[jumpToInnerLoopBlock][toProcess] = PHI;
    }

    // remap instructions in the block with the new phi nodes.
    for (auto &I: *jumpToInnerLoopBlock) {
        if (llvm::isa<llvm::PHINode>(&I)) {
            continue;
        }
        llvm::RemapInstruction(&I, newMappings[jumpToInnerLoopBlock], llvm::RF_IgnoreMissingLocals);
    }

    std::vector<llvm::BasicBlock *> inorderBlocks = traverseLoopInOrder(*innerLevelLoop);
    std::size_t jumpedToBlockIdx = std::distance(
            inorderBlocks.begin(),
            std::find(inorderBlocks.begin(), inorderBlocks.end(), jumpToInnerLoopBlock)
    );

    std::size_t ptr = jumpedToBlockIdx;
    do {
        auto *current = inorderBlocks[ptr];

        // update mappings.
        for (auto p: predecessors(current)) {
            auto &prevMappings = newMappings[p];
            newMappings[current].insert(prevMappings.begin(), prevMappings.end());
        }

        // remap phi nodes.
        auto end = current->getFirstNonPHI()->getIterator();
        for (auto beg = current->begin(); beg != end; ++beg) {
            auto *PHI = llvm::cast<llvm::PHINode>(&*beg);
            for (std::size_t idx = 0; idx < PHI->getNumOperands(); ++idx) {
                auto *incomingBlock = PHI->getIncomingBlock(idx);
                auto *incomingValue = PHI->getIncomingValue(idx);

                // if there is a remppaing from that block to that value use it.
                auto &map = newMappings[incomingBlock];
                if (auto v = map.find(incomingValue); v != map.end() &&
                                                      llvm::dyn_cast<llvm::Instruction>(v->second)) {
                    PHI->setIncomingValue(idx, llvm::cast<llvm::Instruction>(v->second));
                }
            }
        }

        // header dominates all loop BB we're done.
        if (current == innerLevelLoop->getHeader()) {
            break;
        }

        // insert new phi nodes if needed.
        if (numOfPredecessors(current) > 1) {
            Builder.SetInsertPoint(current->getFirstNonPHI());
            for (auto mappings: predecessorMappings[jumpToInnerLoopBlock]) {
                auto toProcess = llvm::cast<llvm::Instruction>(mappings.second);
                if (auto *PHI = existsPhiThatContainInstruction(toProcess, *current); PHI) {
                    newMappings[current][toProcess] = PHI;
                    continue;
                }

                auto *PHI = Builder.CreatePHI(toProcess->getType(), 2);
                for (auto &predecessor: directPredecessors(toProcess, current)) {
                    auto incomingValue = toProcess;
                    auto &map = newMappings[predecessor];
                    if (auto v = map.find(toProcess); v != newMappings[predecessor].end() &&
                                                      llvm::dyn_cast<llvm::Instruction>(v->second)) {
                        incomingValue = llvm::cast<llvm::Instruction>(newMappings[predecessor][toProcess]);
                    }
                    PHI->addIncoming(incomingValue, predecessor);
                }
                for (auto predecessor: llvm::predecessors(current)) {
                    if (PHI->getBasicBlockIndex(predecessor) >= 0) {
                        continue;
                    }
                    PHI->addIncoming(llvm::ConstantAggregateZero::getNullValue(PHI->getType()), predecessor);
                }
                newMappings[current][toProcess] = PHI;
            }
        }

        // remap the rest of the instructions.
        for (auto &I: *current) {
            if (llvm::isa<llvm::PHINode>(&I)) {
                continue;
            }
            llvm::RemapInstruction(&I, newMappings[current], llvm::RF_IgnoreMissingLocals);
        }

        ptr = (ptr + 1) % inorderBlocks.size();
    } while (ptr != jumpedToBlockIdx);

    return true;
}

std::unordered_map<llvm::BasicBlock *, llvm::ValueToValueMapTy>
JumpIntoLoop::findAllPrecedingInstructionInALoop(llvm::BasicBlock &BB, llvm::Loop &Loop) {
    std::unordered_map<llvm::BasicBlock *, llvm::ValueToValueMapTy> blockMappings;
    auto inOrder = traverseLoopInOrder(Loop);

    for (auto &current: inOrder) {
        // for each of the predecessors add remmapings.
        for (auto p: llvm::predecessors(current)) {
            auto &prevMappings = blockMappings[p];
            blockMappings[current].insert(prevMappings.begin(), prevMappings.end());
        }

        if (current == &BB) {
            break;
        }

        // add instruction from the current block.
        for (auto &I: *current) {
            // instructions that don't return anything or are terminator don't need to be considered.
            if (I.getType()->isVoidTy() || I.isTerminator()) {
                continue;
            }

            // if its a phi node erase instruction.
            if (auto *phi = llvm::dyn_cast<llvm::PHINode>(&I);phi) {
                for (auto &o: phi->operands()) {
                    if (auto *inst = llvm::dyn_cast<llvm::Instruction>(o.get()); inst) {
                        blockMappings[current].erase(inst);
                    }
                }
            }

            blockMappings[current][&I] = &I;
        }
    }

    std::unordered_set<llvm::Instruction *> used;

    std::size_t jmpIdx = std::distance(inOrder.begin(), std::find(inOrder.begin(), inOrder.end(), &BB));
    for (std::size_t idx = inOrder.size() - 1; idx >= jmpIdx && idx > 0 /* skip header */; --idx) {
        auto *current = inOrder[idx];

        for (auto &inst: *current) {
            for (auto &o: inst.operands()) {
                if (auto *operand = llvm::dyn_cast<llvm::Instruction>(o.get()); operand) {
                    if (blockMappings[&BB].find(operand) != blockMappings[&BB].end()) {
                        used.insert(operand);
                    }
                }
            }
        }

    }

    blockMappings[&BB].clear();
    for (auto *inst: used) {
        blockMappings[&BB][inst] = inst;
    }

    return blockMappings;
}

std::vector<llvm::BasicBlock *> JumpIntoLoop::traverseLoopInOrder(llvm::Loop &Loop) {
    std::unordered_set<llvm::BasicBlock *> blocks;
    std::unordered_set<llvm::BasicBlock *> visited;
    std::queue<llvm::BasicBlock *> queue;

    for (auto predecessor: llvm::predecessors(Loop.getHeader())) {
        queue.push(predecessor);
    }

    while (!queue.empty()) {
        auto *current = queue.front();
        queue.pop();

        if (visited.find(current) != visited.end()) {
            continue;
        }
        visited.insert(current);

        if (!Loop.contains(current)) {
            continue;
        }

        // process.
        blocks.insert(current);

        for (auto predecessor: llvm::predecessors(current)) {
            queue.push(predecessor);
        }
    }

    blocks.erase(Loop.getHeader());
    std::vector<llvm::BasicBlock *> orderedBlocks{Loop.getHeader()};

    for (auto &block: blocks) {
        if (block != Loop.getHeader()) {
            queue.push(block);
        }
    }

    while (!blocks.empty()) {
        if (queue.empty()) {
            for (auto b: blocks) {
                queue.push(b);
            }
        }

        auto *current = queue.front();
        queue.pop();

        bool canProcess = true;
        for (auto p: llvm::predecessors(current)) {
            if (blocks.find(p) != blocks.end()) {
                canProcess = false;
                break;
            }
        }

        if (!canProcess) {
            queue.push(current);
            continue;
        }

        orderedBlocks.push_back(current);
        blocks.erase(current);
    }

    return orderedBlocks;
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getBogusFlowJumpPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "jmp",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "jmp") {
                                FPM.addPass(JumpIntoLoop());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBogusFlowJumpPluginInfo();
}