//
// Created by Matus Mrekaj on 18/02/2023.
//

#include "RNG.h"
#include "cmd-args/Coverage.h"
#include "Substitution.h"

#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/Debug.h"

#define DEBUG_TYPE "substitution"

STATISTIC(AdditionSubstitutionCount, "# of performed addition substitutions");

static llvm::cl::opt<Coverage, false, CoverageParser> coverage{
        "coverage",
        llvm::cl::desc("applies substitution on <coverage> percentage of the instructions"),
        llvm::cl::value_desc("coverage"),
        llvm::cl::init(1.0),
        llvm::cl::Optional
};

llvm::PreservedAnalyses Substitution::run(llvm::Function &F, llvm::FunctionAnalysisManager &) {
    // we need to track if any changes were made so that we either preserve the existing analysis or not.
    bool modified = false;

    for (auto &BB: F) {
        modified |= handleBasicBlock(BB);
    }

    if (modified) {
        return llvm::PreservedAnalyses::none();
    }

    return llvm::PreservedAnalyses::all();
}

bool Substitution::handleBasicBlock(llvm::BasicBlock &BB) {
    bool modified = false;

    for (auto beg = BB.begin(); beg != BB.end(); ++beg) {
        auto *BinaryOperation = llvm::dyn_cast<llvm::BinaryOperator>(beg);
        if (BinaryOperation == nullptr || !BinaryOperation->getType()->isIntegerTy()) {
            continue;
        }

        switch (BinaryOperation->getOpcode()) {
            case llvm::Instruction::Add:
                modified |= handleAddition(BB, BinaryOperation, beg);
                ++AdditionSubstitutionCount;
                break;
            case llvm::Instruction::Sub:
                // TODO: implement me!
                break;
            case llvm::Instruction::And:
                // TODO: implement me!
                break;
            case llvm::Instruction::Or:
                // TODO: implement me!
                break;
            case llvm::Instruction::Xor:
                // TODO: implement me!
                break;
            default:
                // Leave other operations untouched.
                break;
        }
    }

    return modified;
}

llvm::Instruction* Substitution::get8BitAddition(llvm::BinaryOperator *BO) {
    /*
     * Replace:
     * a=b+c
     *
     * With:
     * (((a XOR b) + 2 * (a AND b)) * 39 + 23) * 151 + 111
     *
     * Defeating MBA-based Obfuscation
     * Source: https://hal.science/hal-01388109/document
    */

    llvm::IRBuilder<> builder(BO);

    auto *Literal39 = llvm::ConstantInt::get(BO->getType(), 39);
    auto *Literal151 = llvm::ConstantInt::get(BO->getType(), 151);
    auto *Literal23 = llvm::ConstantInt::get(BO->getType(), 23);
    auto *Literal2 = llvm::ConstantInt::get(BO->getType(), 2);
    auto *Literal111 = llvm::ConstantInt::get(BO->getType(), 111);

    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAdd(
            Literal111, builder.CreateMul(
                    Literal151, builder.CreateAdd(
                            Literal23, builder.CreateMul(
                                    Literal39, builder.CreateAdd(
                                            builder.CreateXor(BO->getOperand(0), BO->getOperand(1)),
                                            builder.CreateMul(
                                                    Literal2,
                                                    builder.CreateAnd(BO->getOperand(0), BO->getOperand(1))
                                            )
                                    )
                            )
                    )
            )
    );

    return NewInstruction;
}

llvm::Instruction *Substitution::getAdditionSubstitution(llvm::BinaryOperator *BO) {
    llvm::IRBuilder<> builder(BO);
    llvm::Instruction *NewInstruction = nullptr;

    /*
     * Replace:
     * a=b+c
     *
     * With one of the below substitution, chosen at random (where r is a random value):
     * a = b - (-c)
     * a = -(-b + (-c))
     * a = b + r; a += c; a -=r
     * a = b - r; a += c; a += r
     */
    uint64_t func = GenerateRandomInt64(AdditionSubstitionFuncCount);
    switch (func) {
        case 0: {
            // a = b - (-c)
            NewInstruction = llvm::BinaryOperator::CreateSub(BO->getOperand(0), builder.CreateNeg(BO->getOperand(1)));
            break;
        }
        case 1: {
            // a = -(-b + (-c))
            NewInstruction = llvm::BinaryOperator::CreateNeg(
                    builder.CreateAdd(
                            builder.CreateNeg(BO->getOperand(0)),
                            builder.CreateNeg(BO->getOperand(1))
                    )
            );
            break;
        }
        case 2: {
            // a = b + r; a += c; a -=r
            auto *randomConstant = llvm::ConstantInt::get(BO->getType(), GenerateRandomInt64());
            NewInstruction = llvm::BinaryOperator::CreateSub(
                    builder.CreateAdd(
                            builder.CreateAdd(BO->getOperand(0), randomConstant),
                            BO->getOperand(1)
                    ),
                    randomConstant
            );
            break;
        }
        case 3: {
            // a = b - r; a += c; a += r
            auto *randomConstant = llvm::ConstantInt::get(BO->getType(), GenerateRandomInt64());
            NewInstruction = llvm::BinaryOperator::CreateAdd(
                    builder.CreateAdd(
                            builder.CreateSub(BO->getOperand(0), randomConstant),
                            BO->getOperand(1)
                    ),
                    randomConstant
            );
            break;
        }
        default:
            // do nothing
            break;
    }

    return NewInstruction;
}

bool Substitution::handleAddition(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::Instruction *NewInstruction = nullptr;

    if (BO->getType()->getIntegerBitWidth() == 8) {
        auto rng = GenerateRandomInt64(AdditionSubstitionFuncCount + 1);  // +1 for the special 8bit substitution
        if (rng > AdditionSubstitionFuncCount) {
            NewInstruction = get8BitAddition(BO);
        }
    }

    if (NewInstruction == nullptr) {
        NewInstruction = getAdditionSubstitution(BO);
    }

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");

    return true;
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getSubstitutionPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "substitution",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "substitution") {
                                FPM.addPass(Substitution());
                                return true;
                            }
                            return false;
                        });
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getSubstitutionPluginInfo();
}

