#ifndef LLVM_OBFUSCATOR_UTILS_H
#define LLVM_OBFUSCATOR_UTILS_H

#include <algorithm>

#include "RNG.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Constants.h"

#define NON_ZERO(num)       num == 0 ? (num + 1) : num
#define LLVM_I32(ctx)       llvm::IntegerType::getInt32Ty(ctx)
#define LLVM_CONST_I32(ctx, val) llvm::ConstantInt::get(LLVM_I32(ctx), val)
#define LLVM_CONST_INT(typ, val) llvm::ConstantInt::get(typ, val)
#define LLVM_I32_ARRAY(ctx, elemCount) llvm::ArrayType::get(LLVM_I32(ctx), elemCount)

inline llvm::Value *RandomReachableInteger(llvm::SmallDenseSet<llvm::Value *> &set) {
    std::mt19937_64 gen = GetRandomGenerator();
    std::uniform_int_distribution<> dist(0, set.size() - 1);

    auto beg = set.begin();
    std::advance(beg, dist(gen));

    return *beg;
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

inline llvm::Value *findNonPHIInstruction(llvm::Type *typ, llvm::SmallDenseSet<llvm::Value *> &set) {
    auto beg = set.begin();

    while (beg != set.end()) {
        if ((*beg)->getType() == typ && !llvm::dyn_cast<llvm::PHINode>(*beg)) {
            break;
        }
        ++beg;
    }

    if (beg != set.end()) {
        return *beg;
    }

    return llvm::ConstantAggregateZero::getNullValue(typ);
}

inline bool phiContainsPredecessors(llvm::BasicBlock *BB, std::vector<llvm::BasicBlock *> preds) {
    int32_t count = 0;

    for (auto P: predecessors(BB)) {
        if (std::find(preds.begin(), preds.end(), P) != preds.end()) {
            ++count;
        }
    }

    return count == preds.size();
}

inline void addBogusOperations(llvm::Instruction *Dst, llvm::SmallDenseSet<llvm::Value *> &Set) {
    std::mt19937_64 gen = GetRandomGenerator();
    std::uniform_int_distribution dist(6, 10);

    int64_t instructionCount = dist(gen);

    for (int64_t i = 0; i < instructionCount; ++i) {
        auto *left = LLVM_CONST_I32(Dst->getContext(), RandomInt64());
        auto *right = LLVM_CONST_I32(Dst->getContext(), RandomInt64());
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
                llvm::BinaryOperator::CreateMul(left, right,  "", Dst);
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
