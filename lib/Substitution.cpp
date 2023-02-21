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
#include "llvm/IR/Module.h"

#define DEBUG_TYPE "substitution"

STATISTIC(AdditionSubstitutionCount, "# of performed addition substitutions");
STATISTIC(SubtractionSubstitutionCount, "# of performed subtraction substitutions");
STATISTIC(XORSubstitutionCount, "# of performed XOR substitutions");
STATISTIC(ORSubstitutionCount, "# of performed OR substitutions");
STATISTIC(ANDSubstitutionCount, "# of performed AND substitutions");

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

        // TODO: implement coverage option.

        switch (BinaryOperation->getOpcode()) {
            case llvm::Instruction::Add:
                modified |= handleAddition(BB, BinaryOperation, beg);
                ++AdditionSubstitutionCount;
                break;
            case llvm::Instruction::Sub:
                modified |= handleSubtraction(BB, BinaryOperation, beg);
                ++SubtractionSubstitutionCount;
                break;
            case llvm::Instruction::And:
                modified |= handleBinaryAND(BB, BinaryOperation, beg);
                ++ANDSubstitutionCount;
                break;
            case llvm::Instruction::Or:
                modified |= handleBinaryOR(BB, BinaryOperation, beg);
                ++ORSubstitutionCount;
                break;
            case llvm::Instruction::Xor:
                modified |= handleBinaryXOR(BB, BinaryOperation, beg);
                ++XORSubstitutionCount;
                break;
            default:
                // Leave other operations untouched.
                break;
        }
    }

    return modified;
}

llvm::Instruction *Substitution::get8BitAddition(llvm::BinaryOperator *BO) {
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
     * a = b + c
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

bool Substitution::handleSubtraction(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::Instruction *NewInstruction = getSubtractionSubstitution(BO);
    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

llvm::Instruction *Substitution::getSubtractionSubstitution(llvm::BinaryOperator *BO) {
    llvm::IRBuilder<> builder(BO);
    llvm::Instruction *NewInstruction = nullptr;

    /*
     * Replace
     * a = b - c
     *
     * With one of the below substitution, chosen at random (where r is a random value):
     * a = b + (-c)
     * a = b + r; a -= c; a -= r;
     * a = b - r; a -= c; a += r;
     */

    uint64_t func = GenerateRandomInt64(SubtractionSubstitutionFuncCount);
    switch (func) {
        case 0: {
            // a = b + (-c)
            NewInstruction = llvm::BinaryOperator::CreateAdd(BO->getOperand(0), builder.CreateNeg(BO->getOperand(1)));
            break;
        }
        case 1: {
            // a = b + r; a -= c; a -= r;
            auto *randomConstant = llvm::ConstantInt::get(BO->getType(), GenerateRandomInt64());
            NewInstruction = llvm::BinaryOperator::CreateSub(
                    builder.CreateSub(
                            builder.CreateAdd(BO->getOperand(0), randomConstant),
                            BO->getOperand(1)
                    ),
                    randomConstant
            );
            break;
        }
        case 2: {
            // a = b - r; a -= c; a += r;
            auto *randomConstant = llvm::ConstantInt::get(BO->getType(), GenerateRandomInt64());
            NewInstruction = llvm::BinaryOperator::CreateAdd(
                    builder.CreateSub(
                            builder.CreateSub(BO->getOperand(0), randomConstant),
                            BO->getOperand(1)
                    ),
                    randomConstant
            );
            break;
        }
        default:
            // do nothing.
            break;
    }

    return NewInstruction;
}

bool Substitution::handleBinaryXOR(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);
    llvm::Instruction *NewInstruction = nullptr;

    /*
     * Replace
     * a = b XOR c
     *
     * With one of the below substitution, chosen at random (where r is a random value):
     * a = (b XOR r) XOR (c XOR r)
     * a = (!b AND r OR b AND !r) XOR (!c AND r OR c AND !r)
     * a = (!b AND c) OR (b AND !c)
     */

    uint64_t func = GenerateRandomInt64(XORSubstitutionFuncCount);
    switch (func) {
        case 0: {
            // a = (b XOR r) XOR (c XOR r)
            auto *randomConstant = llvm::ConstantInt::get(BO->getType(), GenerateRandomInt64());
            NewInstruction = llvm::BinaryOperator::CreateXor(
                    builder.CreateXor(BO->getOperand(0), randomConstant),
                    builder.CreateXor(BO->getOperand(1), randomConstant)
            );
            break;
        }
        case 1: {
            // a = (!b AND r OR b AND !r) XOR (!c AND r OR c AND !r)
            auto *randomConstant = llvm::ConstantInt::get(BO->getType(), GenerateRandomInt64());
            NewInstruction = llvm::BinaryOperator::CreateXor(
                    builder.CreateOr(
                            builder.CreateAnd(builder.CreateNot(BO->getOperand(0)), randomConstant),
                            builder.CreateAnd(BO->getOperand(0), builder.CreateNot(randomConstant))
                    ),
                    builder.CreateOr(
                            builder.CreateAnd(builder.CreateNot(BO->getOperand(1)), randomConstant),
                            builder.CreateAnd(BO->getOperand(1), builder.CreateNot(randomConstant))
                    )
            );
            break;
        }
        case 2: {
            // a = (!b AND c) OR (b AND !c)
            NewInstruction = llvm::BinaryOperator::CreateOr(
                    builder.CreateAnd(builder.CreateNot(BO->getOperand(0)), BO->getOperand(1)),
                    builder.CreateAnd(BO->getOperand(0), builder.CreateNot(BO->getOperand(1)))
            );
            break;
        }
        default:
            // do nothing.
            break;
    }

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handleBinaryOR(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);
    llvm::Instruction *NewInstruction = nullptr;

    /*
     * Replace
     * a = b OR c
     *
     * With one of the below substitution, chosen at random (where r is a random value):
     * a = (b & c) | (b ^ c)
     * a = [(!b & r) | (b & !r) ^ (!c & r) |(c & !r) ] | [!(!b | !c) && (r | !r)]
     */

    uint64_t func = GenerateRandomInt64(ORSubstitutionFuncCount);
    switch (func) {
        case 0: {
            // a = (b & c) | (b ^ c)
            NewInstruction = llvm::BinaryOperator::CreateOr(
                    builder.CreateAnd(BO->getOperand(0), BO->getOperand(1)),
                    builder.CreateXor(BO->getOperand(0), BO->getOperand(1))
            );
            break;
        }
        case 1: {
            // a = [(!b & r) | (b & !r) ^ (!c & r) | (c & !r) ] | [!(!b | !c) & (r | !r)]
            auto *randomConstant = llvm::ConstantInt::get(BO->getType(), GenerateRandomInt64());
            NewInstruction = llvm::BinaryOperator::CreateOr(
                    builder.CreateXor(
                            builder.CreateOr(
                                    builder.CreateAnd(builder.CreateNot(BO->getOperand(0)), randomConstant),
                                    builder.CreateAnd(BO->getOperand(0), builder.CreateNot(randomConstant))
                            ),
                            builder.CreateOr(
                                    builder.CreateAnd(builder.CreateNot(BO->getOperand(1)), randomConstant),
                                    builder.CreateAnd(BO->getOperand(1), builder.CreateNot(randomConstant))
                            )
                    ),
                    builder.CreateAnd(
                            builder.CreateNot(
                                    builder.CreateOr(
                                            builder.CreateNot(BO->getOperand(0)),
                                            builder.CreateNot(BO->getOperand(1))
                                    )
                            ),
                            builder.CreateOr(randomConstant, builder.CreateNot(randomConstant))
                    )
            );
            break;
        }
        default:
            // do nothing.
            break;
    }

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handleBinaryAND(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);
    llvm::Instruction *NewInstruction = nullptr;

    /*
     * Replace
     * a = b AND c
     *
     * With one of the below substitution, chosen at random (where r is a random value):
     * a = (b XOR !c) AND b
     * a = !(!b | !c) AND (r | !r)
     */

    uint64_t func = GenerateRandomInt64(ANDSubstitutionFuncCount);
    switch (func) {
        case 0: {
            NewInstruction = llvm::BinaryOperator::CreateAnd(
                    builder.CreateXor(
                            BO->getOperand(0),
                            builder.CreateNot(BO->getOperand(1))
                    ),
                    BO->getOperand(0)
            );
            break;
        }
        case 1: {
            auto *randomConstant = llvm::ConstantInt::get(BO->getType(), GenerateRandomInt64());
            NewInstruction = llvm::BinaryOperator::CreateAnd(
                    builder.CreateNot(
                            builder.CreateOr(
                                    builder.CreateNot(BO->getOperand(0)),
                                    builder.CreateNot(BO->getOperand(1))
                            )
                    ),
                    builder.CreateOr(
                            randomConstant,
                            builder.CreateNot(randomConstant)
                    )
            );
            break;
        }
        default:
            // do nothing.
            break;
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

