#ifndef LLVM_OBFUSCATOR_UTILS_H
#define LLVM_OBFUSCATOR_UTILS_H

#include <queue>
#include <unordered_set>
#include <algorithm>

#include "RNG.h"
#include "ReachableIntegersAnalysis.h"

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

#define NON_ZERO(num)       num == 0 ? (num + 1) : num
#define LLVM_I32(ctx)       llvm::IntegerType::getInt32Ty(ctx)
#define LLVM_I64(ctx)       llvm::IntegerType::getInt64Ty(ctx)
#define LLVM_UI64(ctx)      llvm::IntegerType::
#define LLVM_I8(ctx)       llvm::IntegerType::getInt8Ty(ctx)
#define LLVM_CONST_I32(ctx, val) llvm::ConstantInt::get(LLVM_I32(ctx), val)
#define LLVM_CONST_I64(ctx, val) llvm::ConstantInt::get(LLVM_I64(ctx), val)
#define LLVM_CONST_I8(ctx, val) llvm::ConstantInt::get(LLVM_I8(ctx), val)
#define LLVM_CONST_INT(typ, val) llvm::ConstantInt::get(typ, val)
#define LLVM_I32_ARRAY(ctx, elemCount) llvm::ArrayType::get(LLVM_I32(ctx), elemCount)
#define LLVM_I8_ARRAY(ctx, elemCount) llvm::ArrayType::get(LLVM_I8(ctx), elemCount)

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

inline int64_t numOfPredecessors(llvm::BasicBlock *BB) {
    int64_t count = 0;
    for (auto p: predecessors(BB)) {
        ++count;
    }
    return count;
}

template<typename LLVMTypeWithOperands>
inline bool checkIfInstructionInOperand(llvm::Instruction *ToCheck, LLVMTypeWithOperands *I) {
    for (auto &O: I->operands()) {
        if (auto *inst = llvm::dyn_cast<llvm::Instruction>(O.get()); inst == ToCheck) {
            return true;
        }
    }
    return false;
}

inline llvm::PHINode *existsPhiThatContainInstruction(llvm::Instruction *I, llvm::BasicBlock &BB) {
    for (auto &PHI: BB.phis()) {
        if (checkIfInstructionInOperand(I, &PHI)) {
            return &PHI;
        }
    }
    return nullptr;
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

inline std::unordered_set<llvm::BasicBlock *>
directPredecessors(llvm::Instruction *start, llvm::BasicBlock *jumpToBlock) {
    std::unordered_set<llvm::BasicBlock *> reachable;

    for (auto p: llvm::predecessors(jumpToBlock)) {
        std::unordered_set<llvm::BasicBlock *> processed;
        std::queue<llvm::BasicBlock *> queue;

        queue.push(start->getParent());
        while (!queue.empty()) {
            auto *current = queue.front();
            queue.pop();

            // if processed skipped.
            if (processed.find(current) != processed.end()) {
                continue;
            }
            processed.insert(current);

            if (current == p) {
                // we're done.
                reachable.insert(p);
                break;
            }

            // if we reached the block along the path continue.
            if (current == jumpToBlock) {
                continue;
            }

            // continue with successors.
            for (auto s: llvm::successors(current)) {
                queue.push(s);
            }
        }
    }

    return reachable;
}

inline void findDeepestInnerLoop(llvm::Loop *Loop, llvm::Loop *&CurrentLevel) {
    for (auto &SubLoop: Loop->getSubLoopsVector()) {
        findDeepestInnerLoop(SubLoop, CurrentLevel);
    }

    if (Loop->getLoopDepth() > CurrentLevel->getLoopDepth()) {
        CurrentLevel = Loop;
    }
}


inline void addBogusOperations(llvm::BasicBlock *BB) {
    std::mt19937_64 gen = GetRandomGenerator();
    std::uniform_int_distribution dist(6, 10);

    int64_t instructionCount = dist(gen);

    auto beg = BB->getFirstNonPHI()->getIterator();
    auto end = BB->getTerminator()->getIterator();

    for (int64_t i = 0; i < instructionCount; ++i) {
        auto *left = LLVM_CONST_I32(BB->getContext(), RandomInt64(std::numeric_limits<std::int8_t>::max()));
        auto *right = LLVM_CONST_I32(BB->getContext(), RandomInt64(std::numeric_limits<std::int8_t>::max()));

        switch (RandomInt64() % 4) {
            case 0: {
                llvm::BinaryOperator::CreateAdd(left, right, "", &*beg);
                break;
            }
            case 1: {
                llvm::BinaryOperator::CreateSub(left, right, "", &*beg);
                break;
            }
            case 2: {
                llvm::BinaryOperator::CreateMul(left, right, "", &*beg);
                break;
            }
            case 3: {
                llvm::BinaryOperator::CreateSDiv(left, right, "", &*beg);
                break;
            }
        }

        if (beg != end) {
            beg = std::next(beg);
        }
    }
}

inline std::vector<llvm::BasicBlock *>
findAllBBWithReachableIntegers(llvm::Function &F, ReachableIntegers::Result &Set) {
    std::vector<llvm::BasicBlock *> result;

    for (auto &BB: F) {
        if (auto set = Set[&BB]; !set.empty()) {
            result.push_back(&BB);
        }
    }

    return result;
}

// https://lemire.me/blog/2017/09/18/computing-the-inverse-of-odd-integers/
// https://marc-b-reynolds.github.io/math/2017/09/18/ModInverse.html#mjx-eqn%3Arr
inline uint64_t modularInverseOdd(uint64_t x) {
    uint64_t y = (3 * x) ^ 2; // 5 bits
    y = y * (2 - y * x); // 10 bits
    y = y * (2 - y * x); // 20 bits
    y = y * (2 - y * x); // 40 bits
    y = y * (2 - y * x); // 80 bits
    return y;
}

#endif //LLVM_OBFUSCATOR_UTILS_H
