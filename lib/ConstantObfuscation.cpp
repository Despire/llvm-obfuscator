#include "Utils.h"
#include "ConstantObfuscation.h"

#include "llvm/IR/Constants.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"

llvm::PreservedAnalyses ConstantObfuscation::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    auto &RISet = FAM.getResult<ReachableIntegers>(F);

    bool modified = handleFunction(F, RISet);
    if (modified) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

llvm::Value *ConstantObfuscation::replaceConstant(
        llvm::Instruction *I,
        llvm::ConstantInt *ToReplace,
        std::vector<llvm::Value *> &integers
) {
    auto &ctx = I->getParent()->getContext();
    // cache the type, to retype it again when we're done.
    llvm::Type *typ = ToReplace->getType();
    uint64_t originalValue = ToReplace->getValue().getLimitedValue();
    // if we get UINT64_MAX which is returned by the getLimitedValue
    // if it cannot be represented, we just return nothing even though
    // the constant could have the UINT64_MAX value, we decide to skip it.
    if (originalValue == UINT64_MAX) {
        return nullptr;
    }

    llvm::IRBuilder<> Builder(I);

    auto *typedReplacement = Builder.CreateIntCast(
            ToReplace,
            LLVM_I64(ctx),
            true /*a signed cast to propagate the signed bit if set*/
    );

    if (originalValue == 0) {
       typedReplacement = replaceZero(typedReplacement, integers);
    }

    std::vector<llvm::Value *> operations{typedReplacement};

    auto *hi1 = llvm::BinaryOperator::CreateAnd(typedReplacement, LLVM_CONST_I64(ctx, 0xffffffff00000000ULL), "", I);
    auto *lo1 = llvm::BinaryOperator::CreateAnd(typedReplacement, LLVM_CONST_I64(ctx, 0x00000000ffffffffULL), "", I);

    auto *hi2 = llvm::BinaryOperator::CreateAnd(typedReplacement, LLVM_CONST_I64(ctx, 0xffffffff00000000ULL), "", I);
    auto *lo2 = llvm::BinaryOperator::CreateAnd(typedReplacement, LLVM_CONST_I64(ctx, 0x00000000ffffffffULL), "", I);

    operations.push_back(hi1);
    operations.push_back(hi2);

    operations.push_back(lo1);
    operations.push_back(lo2);

    // the operations will be a sequence of XORs
    // A ^ B ^ C ^ D ^ E ....
    // which will eventually cancel out and only the original value stays.
    uint64_t sequenceLength = 2 + RandomInt64(2); // [2..3]
    for (std::size_t i = 0; i < sequenceLength; i++) {
        llvm::Value *rng1 = LLVM_CONST_I64(ctx, RandomInt64());

        if (auto iter = RandomElement(integers.begin(), integers.end()); !integers.empty()) {
            // if there is an integer pick it and use it in the expression.
            rng1 = Builder.CreateIntCast(*iter, LLVM_I64(ctx), true);
        }

        llvm::Value *op = nullptr;
        llvm::Value *op2 = nullptr;

        switch (RandomInt64(4)) {
            case 0: {
                op = llvm::BinaryOperator::CreateAnd(rng1, LLVM_CONST_I64(ctx, originalValue), "", I);
                op2 = llvm::BinaryOperator::CreateAnd(LLVM_CONST_I64(ctx, originalValue), rng1, "", I);
                break;
            }
            case 1: {
                op = llvm::BinaryOperator::CreateOr(rng1, LLVM_CONST_I64(ctx, originalValue), "", I);
                op2 = llvm::BinaryOperator::CreateOr(LLVM_CONST_I64(ctx, originalValue), rng1, "", I);
                break;
            }
            case 2: {
                op = llvm::BinaryOperator::CreateAdd(rng1, LLVM_CONST_I64(ctx, originalValue), "", I);
                op2 = llvm::BinaryOperator::CreateAdd(LLVM_CONST_I64(ctx, originalValue), rng1, "", I);
                break;
            }
            case 3: {
                op = llvm::BinaryOperator::CreateMul(rng1, LLVM_CONST_I64(ctx, originalValue), "", I);
                op2 = llvm::BinaryOperator::CreateMul(LLVM_CONST_I64(ctx, originalValue), rng1, "", I);
                break;
            }
        }

        operations.push_back(op);
        operations.push_back(op2);
    }

    std::shuffle(operations.begin(), operations.end(), GetRandomGenerator());

    // xor all operations and return the result.
    llvm::Value *result = *operations.begin();
    for (auto beg = ++operations.begin(); beg != operations.end(); ++beg) {
        result = Builder.CreateXor(result, *beg);
    }

    return Builder.CreateIntCast(result, typ, true);
}

bool ConstantObfuscation::handleFunction(llvm::Function &F, ReachableIntegers::Result &Set) {
    bool modified = false;

    for (auto &BB: F) {
        for (auto beg = BB.getFirstInsertionPt(); beg != BB.end(); ++beg) {
            llvm::Instruction *I = &*beg;
            // skip elem ptrs
            if (llvm::isa<llvm::GetElementPtrInst>(I)) {
                continue;
            }

            for (std::size_t i = 0; i < I->getNumOperands(); i++) {
                // check for ImmArgs for call instrutions.
                if (auto *callInst = llvm::dyn_cast<llvm::CallInst>(I); callInst) {
                    if (callInst->paramHasAttr(i, llvm::Attribute::AttrKind::ImmArg)) {
                        continue;
                    }
                }

                // check for constant ints and replace them.
                if (auto *constantInt = llvm::dyn_cast<llvm::ConstantInt>(I->getOperand(i)); constantInt) {
                    std::vector<llvm::Value *> integerSet = collectReachableIntegersFromPredecessors(&BB, Set);
                    if (auto *replacement = replaceConstant(I, constantInt, integerSet); replacement) {
                        I->setOperand(i, replacement);
                        modified |= true;
                    }
                }
            }
        }
    }

    return modified;
}

llvm::Value *ConstantObfuscation::replaceZero(llvm::Value *Zero, std::vector<llvm::Value *> &) {
    return nullptr;
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getConstantObfuscationPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "cobfs",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "cobfs") {
                                FPM.addPass(ConstantObfuscation());
                                return true;
                            }
                            return false;
                        });
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getConstantObfuscationPluginInfo();
}
