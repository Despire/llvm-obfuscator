//
// Created by Matus Mrekaj on 07/03/2023.
//

#ifndef LLVM_OBFUSCATOR_UTILS_H
#define LLVM_OBFUSCATOR_UTILS_H

#include <algorithm>

#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Constants.h"



#define LLVM_I32(ctx)       llvm::IntegerType::getInt32Ty(ctx)
#define LLVM_CONST_I32(ctx, val) llvm::ConstantInt::get(LLVM_I32(ctx), val)
#define LLVM_I32_ARRAY(ctx, elemCount) llvm::ArrayType::get(LLVM_I32(ctx), elemCount)

inline llvm::Value* findNonPHIInstruction(llvm::Type* typ, llvm::SmallDenseSet<llvm::Value*> &set) {
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

inline bool phiContainsPredecessors(llvm::BasicBlock* BB, std::vector<llvm::BasicBlock*> preds) {
    int32_t count = 0;

    for (auto P : predecessors(BB)) {
        if (std::find(preds.begin(), preds.end(), P) != preds.end()) {
            ++count;
        }
    }

    return count == preds.size();
}

#endif //LLVM_OBFUSCATOR_UTILS_H
