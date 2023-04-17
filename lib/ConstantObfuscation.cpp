#include "Utils.h"
#include "ConstantObfuscation.h"
#include "Substitution.h"

#include "llvm/IR/Constants.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/NoFolder.h"

llvm::PreservedAnalyses ConstantObfuscation::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = handleFunction(F, FAM);
    if (modified) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

llvm::Value *ConstantObfuscation::replaceConstant(
        llvm::Instruction *I,
        llvm::ConstantInt *ToReplace,
        llvm::SmallDenseSet<llvm::Value *> &integers
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

    // Create an odd number
    uint64_t odd = RandomInt64(0, std::numeric_limits<uint64_t>::max() / 2);
    odd = odd * 2 + 1;

    auto *lhs = generateSequence(I, LLVM_CONST_I64(ctx, odd), integers);
    auto *rhs = generateSequence(I, LLVM_CONST_I64(ctx, modularInverseOdd(odd) * originalValue), integers);

    llvm::IRBuilder<llvm::NoFolder> Builder(I);
    return Builder.CreateIntCast(Builder.CreateMul(lhs, rhs), typ, true);
}

bool ConstantObfuscation::handleFunction(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = false;

    auto &Set = FAM.getResult<ReachableIntegers>(F);

    for (auto &BB: F) {
        for (auto beg = BB.getFirstInsertionPt(); beg != BB.end(); ++beg) {
            llvm::Instruction *I = &*beg;
            // skip elem ptrs
            if (llvm::isa<llvm::GetElementPtrInst>(I)) {
                continue;
            }

            // skip switch instructions.
            if (llvm::isa<llvm::SwitchInst>(I)) {
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
                    if (!Set[&BB].empty()) {
                        if (auto *replacement = replaceConstant(I, constantInt, Set[&BB]); replacement) {
                            I->setOperand(i, replacement);
                            modified |= true;
                        }
                    }
                }
            }
        }
    }

    return modified;
}

llvm::Value *
ConstantObfuscation::generateSequence(
        llvm::Instruction *InsertBefore,
        llvm::Value *From,
        llvm::SmallDenseSet<llvm::Value *> &integers
) {
    auto &ctx = InsertBefore->getParent()->getContext();
    llvm::IRBuilder<llvm::NoFolder> Builder(InsertBefore);
    std::vector<llvm::Value *> operations{From};

    Substitution substitution;

    // the operations will be a sequence of XORs
    // A ^ B ^ C ^ D ^ E ....
    // which will eventually cancel out and only the original value stays.
    uint64_t sequenceLength = 2 + RandomInt64(2); // [2..3]
    for (std::size_t i = 0; i < sequenceLength; i++) {
        llvm::Value *elem = *RandomElement(integers.begin(), integers.end());
        llvm::Value *castElem = Builder.CreateIntCast(elem, LLVM_I64(ctx), true);
        uint64_t rng = RandomInt64();

        llvm::Value *op = nullptr;
        llvm::Value *op2 = nullptr;

        switch (RandomInt64(3)) {
            case 0: {
                op = Builder.CreateAnd(castElem, LLVM_CONST_I64(ctx, rng));
                op2 = Builder.CreateAnd(LLVM_CONST_I64(ctx, rng), castElem);

                auto iter = llvm::cast<llvm::BinaryOperator>(op2)->getIterator();
                (&substitution->*substitution.ANDHandlers[RandomInt64(ANDSubstitutionFuncCount)])(
                        *InsertBefore->getParent(),
                        llvm::cast<llvm::BinaryOperator>(op2),
                        iter
                );

                op2 = &*iter;
                break;
            }
            case 1: {
                op = Builder.CreateOr(castElem, LLVM_CONST_I64(ctx, rng));
                op2 = Builder.CreateOr(LLVM_CONST_I64(ctx, rng), castElem);

                auto iter = llvm::cast<llvm::BinaryOperator>(op2)->getIterator();
                (&substitution->*substitution.ORHandlers[RandomInt64(ORSubstitutionFuncCount)])(
                        *InsertBefore->getParent(),
                        llvm::cast<llvm::BinaryOperator>(op2),
                        iter
                );

                op2 = &*iter;
                break;
            }
            case 2: {
                op = Builder.CreateAdd(castElem, LLVM_CONST_I64(ctx, rng));
                op2 = Builder.CreateAdd(LLVM_CONST_I64(ctx, rng), castElem);

                auto iter = llvm::cast<llvm::BinaryOperator>(op2)->getIterator();
                (&substitution->*substitution.AddHandlers[RandomInt64(AdditionSubstitionFuncCount)])(
                        *InsertBefore->getParent(),
                        llvm::cast<llvm::BinaryOperator>(op2),
                        iter
                );

                op2 = &*iter;
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

    return result;
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
