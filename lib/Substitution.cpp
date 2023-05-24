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
        llvm::cl::init(0.35),
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

    auto generator = GetRandomGenerator();
    std::uniform_real_distribution<std::float_t> uniformDist(0.0, 1.0);

    for (auto beg = BB.begin(); beg != BB.end(); ++beg) {
        auto *BO = llvm::dyn_cast<llvm::BinaryOperator>(beg);
        if (BO == nullptr || !BO->getType()->isIntegerTy()) {
            continue;
        }

        if (uniformDist(generator) > coverage.getValue()) {
            continue;
        }

        switch (BO->getOpcode()) {
            case llvm::Instruction::Add: {
                ++AdditionSubstitutionCount;
                bool done = false;
                if (BO->getType()->isIntegerTy(8)) {
                    auto rng = RandomInt64(AdditionSubstitionFuncCount + 1);  // +1 for the special 8bit substitution
                    if (rng >= AdditionSubstitionFuncCount) {
                        modified |= handle8BitAddition(BB, BO, beg);
                        done = true;
                    }
                }

                if (!done) {
                    modified |= (this->*AddHandlers[RandomInt64(AdditionSubstitionFuncCount)])(BB, BO, beg);
                }
                break;
            }
            case llvm::Instruction::Sub:
                ++SubtractionSubstitutionCount;
                modified |= (this->*SubtractHandlers[RandomInt64(SubtractionSubstitutionFuncCount)])(BB, BO, beg);
                break;
            case llvm::Instruction::And:
                ++ANDSubstitutionCount;
                modified |= (this->*ANDHandlers[RandomInt64(ANDSubstitutionFuncCount)])(BB, BO, beg);
                break;
            case llvm::Instruction::Or:
                ++ORSubstitutionCount;
                modified |= (this->*ORHandlers[RandomInt64(ORSubstitutionFuncCount)])(BB, BO, beg);
                break;
            case llvm::Instruction::Xor:
                ++XORSubstitutionCount;
                modified |= (this->*XORHandlers[RandomInt64(XORSubstitutionFuncCount)])(BB, BO, beg);
                break;
            default:
                // Leave other operations untouched.
                break;
        }
    }

    return modified;
}

bool Substitution::handle8BitAddition(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
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

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerANDVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements the substitution a = !(!b | !c) AND (r | !r)
    auto *randomConstant = llvm::ConstantInt::get(BO->getType(), RandomInt64());
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAnd(
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

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerANDVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements the subsitution a = (b XOR !c) AND b
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAnd(
            builder.CreateXor(
                    BO->getOperand(0),
                    builder.CreateNot(BO->getOperand(1))
            ),
            BO->getOperand(0)
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerORVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = [(!b & r) | (b & !r) ^ (!c & r) | (c & !r) ] | [!(!b | !c) & (r | !r)]
    auto *randomConstant = llvm::ConstantInt::get(BO->getType(), RandomInt64());
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateOr(
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

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerORVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements the substitution a = (b & c) | (b ^ c)
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateOr(
            builder.CreateAnd(BO->getOperand(0), BO->getOperand(1)),
            builder.CreateXor(BO->getOperand(0), BO->getOperand(1))
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerXORVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = (b XOR r) XOR (c XOR r)
    auto *randomConstant = llvm::ConstantInt::get(BO->getType(), RandomInt64());
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateXor(
            builder.CreateXor(BO->getOperand(0), randomConstant),
            builder.CreateXor(BO->getOperand(1), randomConstant)
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerXORVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = (!b AND r OR b AND !r) XOR (!c AND r OR c AND !r)
    auto *randomConstant = llvm::ConstantInt::get(BO->getType(), RandomInt64());
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateXor(
            builder.CreateOr(
                    builder.CreateAnd(builder.CreateNot(BO->getOperand(0)), randomConstant),
                    builder.CreateAnd(BO->getOperand(0), builder.CreateNot(randomConstant))
            ),
            builder.CreateOr(
                    builder.CreateAnd(builder.CreateNot(BO->getOperand(1)), randomConstant),
                    builder.CreateAnd(BO->getOperand(1), builder.CreateNot(randomConstant))
            )
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerXORVersion3(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = (!b AND c) OR (b AND !c)
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateOr(
            builder.CreateAnd(builder.CreateNot(BO->getOperand(0)), BO->getOperand(1)),
            builder.CreateAnd(BO->getOperand(0), builder.CreateNot(BO->getOperand(1)))
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool
Substitution::handlerSubtractVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);
    // implements a = b + (-c)
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAdd(BO->getOperand(0),
                                                                        builder.CreateNeg(BO->getOperand(1)));
    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool
Substitution::handlerSubtractVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = b + r; a -= c; a -= r;
    auto *randomConstant = llvm::ConstantInt::get(BO->getType(), RandomInt64());
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateSub(
            builder.CreateSub(
                    builder.CreateAdd(BO->getOperand(0), randomConstant),
                    BO->getOperand(1)
            ),
            randomConstant
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool
Substitution::handlerSubtractVersion3(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implemenets a = b - r; a -= c; a += r;
    auto *randomConstant = llvm::ConstantInt::get(BO->getType(), RandomInt64());
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAdd(
            builder.CreateSub(
                    builder.CreateSub(BO->getOperand(0), randomConstant),
                    BO->getOperand(1)
            ),
            randomConstant
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerAddVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);
    // implements a = b - (-c)
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateSub(BO->getOperand(0),
                                                                        builder.CreateNeg(BO->getOperand(1)));
    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerAddVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);
    // implements a = -(-b + (-c))
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateNeg(
            builder.CreateAdd(
                    builder.CreateNeg(BO->getOperand(0)),
                    builder.CreateNeg(BO->getOperand(1))
            )
    );
    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerAddVersion3(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);
    // implements a = b + r; a += c; a -=r
    auto *randomConstant = llvm::ConstantInt::get(BO->getType(), RandomInt64());
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateSub(
            builder.CreateAdd(
                    builder.CreateAdd(BO->getOperand(0), randomConstant),
                    BO->getOperand(1)
            ),
            randomConstant
    );
    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerAddVersion4(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);
    // implements a = b - r; a += c; a += r
    auto *randomConstant = llvm::ConstantInt::get(BO->getType(), RandomInt64());
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAdd(
            builder.CreateAdd(
                    builder.CreateSub(BO->getOperand(0), randomConstant),
                    BO->getOperand(1)
            ),
            randomConstant
    );
    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerAddVersion5(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = (b XOR c) + 2 * (b AND c)
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAdd(
            builder.CreateXor(
                    BO->getOperand(0),
                    BO->getOperand(1)
            ),
            builder.CreateMul(
                    llvm::ConstantInt::get(BO->getType(), 2),
                    builder.CreateAnd(
                            BO->getOperand(0),
                            BO->getOperand(1)
                    )
            )
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerAddVersion6(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = (b AND c) + (b OR c)
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAdd(
            builder.CreateAnd(BO->getOperand(0), BO->getOperand(1)),
            builder.CreateOr(BO->getOperand(0), BO->getOperand(1))
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerXORVersion4(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = (b OR c) - (b AND c)
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateSub(
            builder.CreateOr(BO->getOperand(0), BO->getOperand(1)),
            builder.CreateAnd(BO->getOperand(0), BO->getOperand(1))
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerANDVersion3(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = (!b OR c) - (!b)
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateSub(
            builder.CreateOr(builder.CreateNot(BO->getOperand(0)), BO->getOperand(1)),
            builder.CreateNot(BO->getOperand(0))
    );

    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
    LLVM_DEBUG(llvm::dbgs() << "Replaced: " << *BO << " with: " << *NewInstruction << "\n");
    return true;
}

bool Substitution::handlerORVersion3(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    llvm::IRBuilder<> builder(BO);

    // implements a = (b AND !c) + c
    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAdd(
            builder.CreateAnd(BO->getOperand(0), builder.CreateNot(BO->getOperand(1))),
            BO->getOperand(1)
    );

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

