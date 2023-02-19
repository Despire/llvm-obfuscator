//
// Created by Matus Mrekaj on 18/02/2023.
//

#include "cmd-args/Coverage.h"
#include "Substitution.h"

#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/Debug.h"

#define DEBUG_TYPE "substitution"

STATISTIC(AdditionSubstitutionCount8Bit, "# of performed 8 bit addition substitutions");
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

void Substitution::handle8BitAddition(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    /*
     * Replace:
     * a=b+c
     *
     * With:
     * (((a XOR b) + 2 * (a AND b)) * 39 + 23) * 151 + 111
    */
    llvm::IRBuilder<> builder(BO);

    auto *Literal39 = llvm::ConstantInt::get(BO->getType(), 39);
    auto *Literal151 = llvm::ConstantInt::get(BO->getType(), 151);
    auto *Literal23 = llvm::ConstantInt::get(BO->getType(), 23);
    auto *Literal2 = llvm::ConstantInt::get(BO->getType(), 2);
    auto *Literal111 = llvm::ConstantInt::get(BO->getType(), 111);

    llvm::Instruction *NewInstruction = llvm::BinaryOperator::CreateAdd(
            Literal111,
            builder.CreateMul(
                    Literal151,
                    builder.CreateAdd(
                            Literal23,
                            builder.CreateMul(
                                    Literal39,
                                    builder.CreateAdd(
                                            builder.CreateXor(BO->getOperand(0),
                                                              BO->getOperand(1)),
                                            builder.CreateMul(
                                                    Literal2,
                                                    builder.CreateAnd(BO->getOperand(0),
                                                                      BO->getOperand(1))
                                            )
                                    )
                            )
                    )
            )
    );

    LLVM_DEBUG(llvm::dbgs() << "Replacing: " << *BO << " with: " << *NewInstruction << "\n");
    llvm::ReplaceInstWithInst(BB.getInstList(), BI, NewInstruction);
}

bool Substitution::handleAddition(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI) {
    if (BO->getType()->getIntegerBitWidth() == 8) {
        ++AdditionSubstitutionCount8Bit;
        handle8BitAddition(BB, BO, BI);
        return true;
    }

    /*
     * Replace:
     * a=b+c
     *
     * With:
     * a = b - (-c)
     * a = -(-b + (-c))
     * a = b + r; a += c; a -=r
     * a = b - r; a += c; a += r
     */

    ++AdditionSubstitutionCount;

    return false;
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
                break;
        }
    }

    return modified;
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

