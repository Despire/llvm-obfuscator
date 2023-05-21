#include <iostream>
#include <unordered_map>

#include "Utils.h"
#include "OpaquePredicates.h"
#include "cmd-args/Coverage.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/FixIrreducible.h"

#define DEBUG_TYPE "opaque-predicates"

STATISTIC(BogusFlowBlockSplitCount, "# of performed block splitting");

static llvm::cl::opt<Coverage, false, CoverageParser> constOpCoverage{
        "op-coverage",
        llvm::cl::desc("applies opaque predicate obfuscation on <coverage> percentage of basic blocks"),
        llvm::cl::value_desc("op-coverage"),
        llvm::cl::init(0.20),
        llvm::cl::Optional
};

llvm::PreservedAnalyses OpaquePredicates::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = false;

    // Collect all Basic Blocks for which there are reachable integers.
    auto &RISet = FAM.getResult<ReachableIntegers>(F);
    auto &LoopInfo = FAM.getResult<llvm::LoopAnalysis>(F);

    std::vector<llvm::BasicBlock *> validBB = findAllBBWithReachableIntegers(F, RISet);

    auto generator = GetRandomGenerator();
    std::uniform_real_distribution<std::float_t> uniformDist(0.0, 1.0);

    // add opaque predicates to loop conditionals.
    for (auto &L: LoopInfo) {
        if (uniformDist(generator) > constOpCoverage.getValue()) {
            continue;
        }

        modified |= handleLoopOpaquelyTruePredicates(*L, RISet);
    }

    // Create bogus flow by splitting a block and inserting new BasicBlocks based on some opaque predicates.
    for (auto &BB: validBB) {
        if (uniformDist(generator) > constOpCoverage.getValue()) {
            continue;
        }
        if ((this->*OpaquePredicateHandlers[RandomInt64(OpaquePredicateFuncCount)])(*BB, FAM)) {
            modified |= true;
            ++BogusFlowBlockSplitCount;
        }
    }

    if (modified) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

bool OpaquePredicates::handleOpaquelyTruePredicate(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM) {
    auto RI = FAM.getResult<ReachableIntegers>(*BB.getParent())[&BB];
    FAM.clear();

    // select a random instruction to split on.
    auto randomInstruction = RandomNonPHIInstruction(BB);
    LLVM_DEBUG(llvm::dbgs() << "selected instruction to split on: " << *randomInstruction << '\n');

    auto randomInteger = RandomElement(RI.begin(), RI.end());
    LLVM_DEBUG(llvm::dbgs() << "choosing integer for condition: " << **randomInteger << '\n');

    // select a random condition.
    auto pair = getRandomOpaquelyTruePredicate();
    auto *cond = (this->*pair.first)(*randomInteger, randomInstruction);

    LLVM_DEBUG(llvm::dbgs() << "condition for evaluating the next block: " << *cond << '\n');

    // split block and insert bogus operation.
    auto newBB = llvm::SplitBlockAndInsertIfThen(cond, randomInstruction, false);
    addBogusOperations(newBB->getParent(), (*randomInteger)->getType());

    Substitution substitution;

    // obfuscate the condition.
    auto Inst = llvm::cast<llvm::Instruction>(cond);
    auto Iter = Inst->getIterator();
    (substitution.*pair.second)(BB, llvm::dyn_cast<llvm::BinaryOperator>(Iter), Iter);

    return true;
}

bool OpaquePredicates::handleOpaquelyTruePredicateWithClone(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM) {
    auto RI = FAM.getResult<ReachableIntegers>(*BB.getParent())[&BB];
    FAM.clear();

    auto randomInteger = *RandomElement(RI.begin(), RI.end());
    LLVM_DEBUG(
            llvm::dbgs() << "selected random integer from the set of reachable integers: " << *randomInteger << "\n");

    auto randomInstruction = RandomNonPHIInstruction(BB);
    LLVM_DEBUG(llvm::dbgs() << "selected instruction to split on: " << *randomInstruction << '\n');

    llvm::IRBuilder Builder(randomInstruction);

    // Create Condition (I mod 2 == 0)
    llvm::Value *rem = Builder.CreateSRem(randomInteger, LLVM_CONST_INT(randomInteger->getType(), 2));
    llvm::Value *cond = Builder.CreateICmpEQ(rem, LLVM_CONST_INT(rem->getType(), 0));

    llvm::Instruction *Then = nullptr;
    llvm::Instruction *Else = nullptr;

    llvm::SplitBlockAndInsertIfThenElse(cond, randomInstruction, &Then, &Else);

    llvm::BasicBlock *Common = Else->getSuccessor(0);

    // We need to clone the instruction from the common BB to the Then, Else Blocks. We build a Map
    // of values so that we can then Remap the instruction to the respective instruction in the Then, Else Blocks.
    llvm::ValueToValueMapTy ThenMappings, ElseMappings;

    std::vector<llvm::Instruction *> duplicates;
    for (auto beg = Common->begin(); beg != Common->end(); ++beg) {
        if (beg->isTerminator()) {
            continue;
        }

        // clone instruction to Then, Else Blocks followed by the Remapping of them.
        // to their respective clones for each Basic Block.
        llvm::Instruction *ThenClone = beg->clone();
        llvm::RemapInstruction(ThenClone, ThenMappings, llvm::RF_IgnoreMissingLocals);
        ThenMappings[&*beg] = ThenClone;

        llvm::Instruction *ElseClone = beg->clone();
        llvm::RemapInstruction(ElseClone, ElseMappings, llvm::RF_IgnoreMissingLocals);
        ElseMappings[&*beg] = ElseClone;

        // move the instruction to the new blocks.
        ElseClone->insertBefore(Else);
        ThenClone->insertBefore(Then);

        if (beg->getType()->isVoidTy()) {
            // void instruction could have side effects and thus needs to be deleted.
            duplicates.push_back(&*beg);
            continue;
        }

        // Since there exist two paths we need to replace the original instructions with PHI nodes
        // even though they may not be used in the blocks that follows it may be used in a context later.
        llvm::PHINode *PHINode = llvm::PHINode::Create(beg->getType(), 2);
        PHINode->addIncoming(ElseClone, Else->getParent());
        PHINode->addIncoming(ThenClone, Then->getParent());

        llvm::ReplaceInstWithInst(Common->getInstList(), beg, PHINode);
    }

    for (auto &v: duplicates) {
        v->eraseFromParent();
    }

    // Obfuscate one of the blocks.
    if (RandomInt64() % 2) {
        Substitution().handleBasicBlock(*Else->getParent());
    } else {
        Substitution().handleBasicBlock(*Then->getParent());
    }

    return true;
}

bool OpaquePredicates::handleLoopOpaquelyTruePredicates(llvm::Loop &Loop, ReachableIntegers::Result &RI) {
    bool modified = false;

    // Recursively update nested loops.
    for (auto &SL: Loop.getSubLoops()) {
        modified |= handleLoopOpaquelyTruePredicates(*SL, RI);
    }

    llvm::BasicBlock *Header = Loop.getHeader();
    auto headerRI = RI[Header];

    // Update the Header branching condition if exists and there exist reachable integers.
    if (auto br = llvm::dyn_cast<llvm::BranchInst>(Header->getTerminator()); br && br->isConditional() &&
                                                                             !headerRI.empty()) {
        auto pair = getRandomOpaquelyTruePredicate();
        auto *predicate = (this->*pair.first)(*RandomElement(headerRI.begin(), headerRI.end()), br);

        llvm::IRBuilder<> Builder(br);
        auto cond = Builder.CreateAnd(br->getCondition(), predicate);
        br->setCondition(cond);

        Substitution substitution;

        // obfuscate the created predicate.
        auto iter = llvm::dyn_cast<llvm::Instruction>(predicate)->getIterator();
        (substitution.*pair.second)(*Header, llvm::dyn_cast<llvm::BinaryOperator>(iter), iter);

        // obfuscate the joined new condition.
        auto condHandler = substitution.ANDHandlers[RandomInt64(ANDSubstitutionFuncCount)];
        auto condIter = llvm::dyn_cast<llvm::Instruction>(cond)->getIterator();
        (substitution.*condHandler)(*Header, llvm::dyn_cast<llvm::BinaryOperator>(condIter), condIter);

        modified = true;
    }

    llvm::SmallVector<llvm::BasicBlock *> latches;
    Loop.getLoopLatches(latches);

    for (auto &Latch: latches) {
        if (Header != Latch) {
            auto latchRI = RI[Latch];
            // Update the Latch branch condition if exists.
            if (auto br = llvm::dyn_cast<llvm::BranchInst>(Loop.getLoopLatch()); br && br->isConditional() &&
                                                                                 !latchRI.empty()) {
                auto pair = getRandomOpaquelyTruePredicate();
                llvm::Value *predicate = (this->*pair.first)(*RandomElement(latchRI.begin(), latchRI.end()), br);

                llvm::IRBuilder<> Builder(br);
                llvm::Value *cond = Builder.CreateAnd(br->getCondition(), predicate);
                br->setCondition(cond);

                Substitution substitution;

                // obfuscate the created predicate.
                auto iter = llvm::dyn_cast<llvm::Instruction>(predicate)->getIterator();
                (substitution.*pair.second)(*Latch, llvm::dyn_cast<llvm::BinaryOperator>(iter), iter);

                // obfuscate the joined new condition.
                auto condHandler = substitution.ANDHandlers[RandomInt64(ANDSubstitutionFuncCount)];
                auto condIter = llvm::dyn_cast<llvm::Instruction>(cond)->getIterator();
                (substitution.*condHandler)(*Latch, llvm::dyn_cast<llvm::BinaryOperator>(condIter), condIter);

                modified = true;
            }
        }
    }

    return modified;
}

llvm::Value *
OpaquePredicates::conditionOpaquePredicateOR(
        llvm::Value *ChosenInteger,
        llvm::Instruction *InsertBefore
) {
    llvm::IRBuilder<> Builder(InsertBefore);

    // ((a & 1 == 0) || (3(x+1)(x+2)) % 2 == 0)
    llvm::Value *Res = Builder.CreateOr(
            Builder.CreateICmpEQ(
                    Builder.CreateAnd(
                            ChosenInteger,
                            LLVM_CONST_INT(ChosenInteger->getType(), 1)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            ),
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            Builder.CreateMul(
                                    // 3(x^2 + x)
                                    Builder.CreateAdd(
                                            // x^2
                                            Builder.CreateMul(
                                                    ChosenInteger,
                                                    ChosenInteger
                                            ),
                                            ChosenInteger
                                    ),
                                    LLVM_CONST_INT(ChosenInteger->getType(), 3)
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            )
    );

    return Res;
}

std::pair<OpaquePredicates::OpaquelyTruePredicate, Substitution::SubstitutionHandler>
OpaquePredicates::getRandomOpaquelyTruePredicate() {
    if (RandomInt64() % 2) {
        return {
                OROpaquelyTruePredicates[RandomInt64(OROpaquelyTruePredicatesFuncCount)],
                Substitution().ORHandlers[RandomInt64(ORSubstitutionFuncCount)]
        };
    }

    return {
            ANDOpaquelyTruePredicates[RandomInt64(ANDOpaquelyTruePredicatesFuncCount)],
            Substitution().ANDHandlers[RandomInt64(ANDSubstitutionFuncCount)]
    };
}

llvm::Value *
OpaquePredicates::conditionOpaquePredicateAND(
        llvm::Value *ChosenInteger,
        llvm::Instruction *InsertBefore
) {
    llvm::IRBuilder<> Builder(InsertBefore);

    // 3(x^2 + x) % 2 == 0
    llvm::Value *LHS = Builder.CreateICmpEQ(
            Builder.CreateSRem(
                    Builder.CreateMul(
                            // 3(x^2 + x)
                            Builder.CreateAdd(
                                    // x^2
                                    Builder.CreateMul(
                                            ChosenInteger,
                                            ChosenInteger
                                    ),
                                    ChosenInteger
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 3)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 2)
            ),
            LLVM_CONST_INT(ChosenInteger->getType(), 0)
    );

    // (x^2 + x) % 2 == 0
    llvm::Value *RHS = Builder.CreateICmpEQ(
            Builder.CreateSRem(
                    // (x^2 + x)
                    Builder.CreateAdd(
                            // x^2
                            Builder.CreateMul(
                                    ChosenInteger,
                                    ChosenInteger
                            ),
                            ChosenInteger
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 2)
            ),
            LLVM_CONST_INT(ChosenInteger->getType(), 0)
    );

    // 3(x^2 + x) % 2 == 0 && (x^2 + x) % 2 == 0)
    return Builder.CreateAnd(LHS, RHS);
}

llvm::Value *
OpaquePredicates::conditionOpaquePredicateORv2(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore) {
    llvm::IRBuilder<> Builder(InsertBefore);

    // (a & 1 == 1 || (x^2 + x) % 2 == 0)
    llvm::Value *Res = Builder.CreateOr(
            Builder.CreateICmpEQ(
                    Builder.CreateAnd(
                            ChosenInteger,
                            LLVM_CONST_INT(ChosenInteger->getType(), 1)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 1)
            ),
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            // (x^2 + x)
                            Builder.CreateAdd(
                                    // x^2
                                    Builder.CreateMul(
                                            ChosenInteger,
                                            ChosenInteger
                                    ),
                                    ChosenInteger
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            )
    );

    return Res;
}

llvm::Value *
OpaquePredicates::conditionOpaquePredicateORv3(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore) {
    llvm::IRBuilder<> Builder(InsertBefore);

    // ((2x + 2)(2x) % 4 == 0 || (x^2 + x) % 2 == 0)
    llvm::Value *Res = Builder.CreateOr(
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            Builder.CreateMul(
                                    Builder.CreateMul(ChosenInteger, LLVM_CONST_INT(ChosenInteger->getType(), 2)),
                                    Builder.CreateAdd(
                                            LLVM_CONST_INT(ChosenInteger->getType(), 2),
                                            Builder.CreateMul(
                                                    ChosenInteger,
                                                    LLVM_CONST_INT(ChosenInteger->getType(), 2)
                                            )
                                    )
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 4)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            ),
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            // (x^2 + x)
                            Builder.CreateAdd(
                                    // x^2
                                    Builder.CreateMul(
                                            ChosenInteger,
                                            ChosenInteger
                                    ),
                                    ChosenInteger
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            )
    );

    return Res;
}

llvm::Value *
OpaquePredicates::conditionOpaquePredicateANDv2(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore) {
    llvm::IRBuilder<> Builder(InsertBefore);

    // ((x^2 + x) % 2 == 0 && ((2x+2)(2x) % 4 == 0)
    llvm::Value *Res = Builder.CreateAnd(
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            Builder.CreateMul(
                                    Builder.CreateMul(ChosenInteger, LLVM_CONST_INT(ChosenInteger->getType(), 2)),
                                    Builder.CreateAdd(
                                            LLVM_CONST_INT(ChosenInteger->getType(), 2),
                                            Builder.CreateMul(
                                                    ChosenInteger,
                                                    LLVM_CONST_INT(ChosenInteger->getType(), 2)
                                            )
                                    )
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 4)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            ),
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            // (x^2 + x)
                            Builder.CreateAdd(
                                    // x^2
                                    Builder.CreateMul(
                                            ChosenInteger,
                                            ChosenInteger
                                    ),
                                    ChosenInteger
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            )
    );

    return Res;
}

llvm::Value *
OpaquePredicates::conditionOpaquePredicateANDv3(llvm::Value *ChosenInteger, llvm::Instruction *InsertBefore) {
    llvm::IRBuilder<> Builder(InsertBefore);

    // (x + x^3) % 2 == 0 && (2x + 2)(2x) % 4 == 0)
    llvm::Value *Res = Builder.CreateAnd(
            //(2x + 2)(2x) % 4 == 0
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            Builder.CreateMul(
                                    Builder.CreateMul(ChosenInteger, LLVM_CONST_INT(ChosenInteger->getType(), 2)),
                                    Builder.CreateAdd(
                                            LLVM_CONST_INT(ChosenInteger->getType(), 2),
                                            Builder.CreateMul(
                                                    ChosenInteger,
                                                    LLVM_CONST_INT(ChosenInteger->getType(), 2)
                                            )
                                    )
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 4)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            ),
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            // (x^3 + x)
                            Builder.CreateAdd(
                                    // x^3
                                    Builder.CreateMul(
                                            Builder.CreateMul(
                                                    ChosenInteger,
                                                    ChosenInteger
                                            ),
                                            ChosenInteger
                                    ),
                                    ChosenInteger
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            )
    );

    return Res;
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getBogusFlowBlockSplitPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "op",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "op") {
                                FPM.addPass(OpaquePredicates());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBogusFlowBlockSplitPluginInfo();
}