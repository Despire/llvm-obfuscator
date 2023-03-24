#ifndef LLVM_OBFUSCATOR_UTILS_H
#define LLVM_OBFUSCATOR_UTILS_H

#include <unordered_set>
#include <algorithm>

#include "RNG.h"
#include "ReachableIntegersAnalysis.h"

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Transforms/Utils/ValueMapper.h"

#define NON_ZERO(num)       num == 0 ? (num + 1) : num
#define LLVM_I32(ctx)       llvm::IntegerType::getInt32Ty(ctx)
#define LLVM_CONST_I32(ctx, val) llvm::ConstantInt::get(LLVM_I32(ctx), val)
#define LLVM_CONST_INT(typ, val) llvm::ConstantInt::get(typ, val)
#define LLVM_I32_ARRAY(ctx, elemCount) llvm::ArrayType::get(LLVM_I32(ctx), elemCount)

template<typename Iter, typename RNG>
inline Iter RandomElementRNG(Iter start, Iter end, RNG &&rng) {
    std::uniform_int_distribution<> dis(0, std::distance(start, end) - 1);
    std::advance(start, dis(rng));
    return start;
}

template<typename Iter>
inline Iter RandomElement(Iter start, Iter end) {
    static auto rng = GetRandomGenerator();
    return RandomElementRNG(start, end, rng);
}

inline bool existsPhiThatContainInstruction(llvm::Instruction *I, llvm::BasicBlock &BB) {
    for (auto &PHI: BB.phis()) {
        for (auto &O: PHI.operands()) {
            if (auto *inst = llvm::dyn_cast<llvm::Instruction>(O.get()); inst == I) {
                return true;
            }
        }
    }
    return false;
}

inline llvm::Instruction *RandomNonPHIInstruction(llvm::BasicBlock &BB) {
    int32_t count = 0;

    for (auto beg = BB.begin(); (&*beg) != BB.getFirstNonPHI(); ++beg) {
        ++count;
    }

    std::mt19937_64 gen = GetRandomGenerator();
    std::uniform_int_distribution<> dist(count, BB.size() - 1);

    auto beg = BB.begin();
    std::advance(beg, dist(gen));

    return &*beg;
}

inline std::unordered_set<llvm::BasicBlock *> findDirectPredecessors(llvm::BasicBlock *Start, llvm::BasicBlock *End) {
    for (auto P: predecessors(End)) {
        if (P == Start) {
            return {Start};
        }
    }
    std::unordered_set<llvm::BasicBlock *> visited;
    std::unordered_set<llvm::BasicBlock *> predecessors;
    std::vector<llvm::BasicBlock *> queue;

    queue.push_back(Start);
    while (!queue.empty()) {
        auto *current = queue.back();
        queue.pop_back();

        // check if we visited this node.
        if (visited.find(current) != visited.end()) {
            continue;
        }
        visited.insert(current);

        // for each successor check if it is the end block
        // if yes add this to the predecessors vector and continue
        // with following other paths.
        bool isDirectPredecessor = false;
        for (auto S: successors(current)) {
            if (S == End) {
                isDirectPredecessor = true;
                continue;
            }
            queue.push_back(S);
        }

        if (isDirectPredecessor) {
            predecessors.insert(current);
        }
    }

    return predecessors;
}

inline llvm::Value *findFirstSuitableInstruction(llvm::Type *typ, llvm::SmallDenseSet<llvm::Value *> &set) {
    auto beg = set.begin();

    while (beg != set.end()) {
        if ((*beg)->getType() == typ) {
            break;
        }
        ++beg;
    }

    if (beg != set.end()) {
        return *beg;
    }

    return llvm::ConstantAggregateZero::getNullValue(typ);
}


inline std::unordered_set<llvm::Instruction *>
findAllPrecedingInstructionInALoop(llvm::BasicBlock &BB, llvm::Loop &Loop) {
    std::vector<llvm::BasicBlock *> queue;
    std::unordered_set<llvm::BasicBlock *> visited;
    std::unordered_set<llvm::Instruction *> inst;

    if (Loop.getHeader() != &BB) {
        for (auto P: predecessors(&BB)) {
            if (Loop.contains(P)) {
                queue.push_back(P);
            }
        }
    }

    while (!queue.empty()) {
        auto *current = queue.back();
        queue.pop_back();

        // if we have processed this block already skip.
        if (visited.find(current) != visited.end()) {
            continue;
        }

        visited.insert(current);

        // if the current is not in the loop skip.
        if (!Loop.contains(current)) {
            continue;
        }

        // add instruction from the current block.
        for (auto &I: *current) {
            inst.insert(&I);
        }

        // if current is the header we're done skip.
        if (current == Loop.getHeader()) {
            continue;
        }

        // add predecessors.
        for (auto P: llvm::predecessors(current)) {
            queue.push_back(P);
        }
    }

    return inst;
}

inline
void remapInstructionAfterNewPathToLoop(
        llvm::BasicBlock *LoopPredecessorBlock,
        llvm::BasicBlock *NewBlock,
        llvm::BasicBlock *JumpToLoopBlock,
        llvm::Loop *Loop,
        ReachableIntegers::Result &Set
) {
    llvm::SmallVector<llvm::Loop *> innerLoops;
    llvm::Loop::getInnerLoopsInPreorder(*Loop, innerLoops);

    llvm::errs() << "num of inner loops: " << innerLoops.size() << '\n';
    for (auto &InnerLoop: innerLoops) {
        if (InnerLoop->contains(JumpToLoopBlock)) {
            llvm::errs() << "Jumping to inner loop: " << '\n';
        }
    }

    auto possibleUses = findAllPrecedingInstructionInALoop(*JumpToLoopBlock, *Loop);

    for (auto &I: possibleUses) {
        llvm::errs() << "loop context: " << *I << '\n';
    }
    llvm::errs() << "==========================================" << '\n';

    std::vector<llvm::BasicBlock *> queue;
    std::unordered_set<llvm::BasicBlock *> visited;
    std::unordered_set<llvm::Instruction *> phi;
    std::unordered_set<llvm::Instruction *> nonPhi;
    std::unordered_set<llvm::Instruction *> out_of_context;
    std::unordered_set<llvm::Instruction *> remap;

    queue.push_back(JumpToLoopBlock);
    while (!queue.empty()) {
        auto *current = queue.back();
        queue.pop_back();

        // if we have processed this block already skip.
        if (visited.find(current) != visited.end()) {
            continue;
        }

        visited.insert(current);

        // if the current is not in the loop skip.
        if (!Loop->contains(current)) {
            continue;
        }

        // if current is the header we're done skip.
        if (current == Loop->getHeader()) {
            continue;
        }

        // process.
        for (auto &I: *current) {
            bool update = false;

            for (auto &O: I.operands()) {
                if (auto *inst = llvm::dyn_cast<llvm::Instruction>(O.get()); inst) {
                    if (possibleUses.find(inst) != possibleUses.end()) {
                        if (llvm::isa<llvm::PHINode>(inst)) {
                            phi.insert(inst);
                        } else {
                            nonPhi.insert(inst);
                        }
                        update = true;
                    } else {
                        out_of_context.insert(inst);
                    }
                }
            }

            if (update) {
                remap.insert(&I);
            }
        }

        // add successors.
        for (auto S: llvm::successors(current)) {
            queue.push_back(S);
        }
    }

    for (auto &I: out_of_context) {
        llvm::errs() << "out of context: " << *I << '\n';
    }
    llvm::errs() << " ========================================================== " << '\n';

    // if there are any PHIS in the block we're jumping to introduce a new predecessor to each of them.
    for (auto &PHI: JumpToLoopBlock->phis()) {
        // we're using the reachable integers from the Predecessors as the NewBB was split right before the
        // branch instruction and thus the same Integers should be reachable from that path.
        PHI.addIncoming(findFirstSuitableInstruction(PHI.getType(), Set[LoopPredecessorBlock]), NewBlock);
    }

    llvm::ValueToValueMapTy mappings;
    llvm::IRBuilder<> Builder(&*JumpToLoopBlock->getFirstInsertionPt());

    for (auto &I: nonPhi) {
        if (existsPhiThatContainInstruction(I, *JumpToLoopBlock)) {
            continue;
        }

        auto pred = findDirectPredecessors(I->getParent(), JumpToLoopBlock);

        auto *PHI = Builder.CreatePHI(I->getType(), 2);
        PHI->addIncoming(I, *pred.begin());
        for (auto P: llvm::predecessors(JumpToLoopBlock)) {
            if (PHI->getBasicBlockIndex(P) >= 0) {
                continue;
            }
            PHI->addIncoming(findFirstSuitableInstruction(PHI->getType(), Set[P]), P);
        }

        mappings[I] = PHI;

        llvm::errs() << "NonPHI Instruction: " << *I << " Created PHI instruction: " << *PHI << '\n';
    }

    for (auto &I: phi) {
        if (existsPhiThatContainInstruction(I, *JumpToLoopBlock)) {
            continue;
        }

        auto pred = findDirectPredecessors(I->getParent(), JumpToLoopBlock);

        auto *PHI = Builder.CreatePHI(I->getType(), 2);
        PHI->addIncoming(I, *pred.begin());
        for (auto P: llvm::predecessors(JumpToLoopBlock)) {
            if (PHI->getBasicBlockIndex(P) >= 0) {
                continue;
            }
            PHI->addIncoming(findFirstSuitableInstruction(PHI->getType(), Set[P]), P);
        }

        mappings[I] = PHI;

        llvm::errs() << "PHI Instruction: " << *I << '\n';
    }

    for (auto &I: remap) {
        std::vector<std::pair<const llvm::Value *const, llvm::Value *>> cc;
        if (auto *phi = llvm::dyn_cast<llvm::PHINode>(I); phi) {
            // we only added new phi nodes to the Block to which the jump was made.
            // thus if we are remapping a phi node and the predecessors of the remapping
            // was not the block we jumped to, we skip.
            for (std::size_t i = 0; i < phi->getNumOperands(); ++i) {
                if (mappings.find(phi->getIncomingValue(i)) != mappings.end()) {
                    if (phi->getIncomingBlock(i) != JumpToLoopBlock) {
                        auto tt = mappings.find(phi->getIncomingValue(i));
                        cc.emplace_back(phi->getIncomingValue(i), tt->second);
                        mappings.erase(phi->getIncomingValue(i));
                    }
                }
            }

            for (auto kk: cc) {
                llvm::errs() << "skipping over: " << *kk.first << " " << *kk.second << '\n';
            }
        }

        llvm::errs() << "remapping: " << *I << '\n';
        llvm::RemapInstruction(I, mappings, llvm::RF_IgnoreMissingLocals);

        for (auto &v: cc) {
            mappings[v.first] = v.second;
        }
    }
}

inline void addBogusOperations(llvm::Instruction *Dst, llvm::SmallDenseSet<llvm::Value *> &Set) {
    std::mt19937_64 gen = GetRandomGenerator();
    std::uniform_int_distribution dist(6, 10);

    int64_t instructionCount = dist(gen);

    for (int64_t i = 0; i < instructionCount; ++i) {
        auto *left = LLVM_CONST_I32(Dst->getContext(), RandomInt64(std::numeric_limits<std::int8_t>::max()));
        auto *right = LLVM_CONST_I32(Dst->getContext(), RandomInt64(std::numeric_limits<std::int8_t>::max()));
        switch (RandomInt64() % 4) {
            case 0: {
                llvm::BinaryOperator::CreateAdd(left, right, "", Dst);
                break;
            }
            case 1: {
                llvm::BinaryOperator::CreateSub(left, right, "", Dst);
                break;
            }
            case 2: {
                llvm::BinaryOperator::CreateMul(left, right, "", Dst);
                break;
            }
            case 3: {
                llvm::BinaryOperator::CreateSDiv(left, right, "", Dst);
                break;
            }
        }
    }
}

#endif //LLVM_OBFUSCATOR_UTILS_H
