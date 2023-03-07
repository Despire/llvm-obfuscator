//
// Created by Matus Mrekaj on 07/03/2023.
//

#ifndef LLVM_OBFUSCATOR_UTILS_H
#define LLVM_OBFUSCATOR_UTILS_H

#include "llvm/IR/InstrTypes.h"

#define LLVM_I32(ctx)       llvm::IntegerType::getInt32Ty(CTX)
#define LLVM_CONST_I32(ctx, val) llvm::ConstantInt::get(LLVM_I32(ctx), val)
#define LLVM_I32_ARRAY(ctx, elemCount) llvm::ArrayType::get(LLVM_I32(ctx), elemCount)

#endif //LLVM_OBFUSCATOR_UTILS_H
