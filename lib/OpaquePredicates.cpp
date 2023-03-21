#include <unordered_map>

#include "Substitution.h"

#include "OpaquePredicates.h"
#include "Utils.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"

#define DEBUG_TYPE "opaque-predicates"

STATISTIC(BogusFlowBlockSplitCount, "# of performed block splitting");

llvm::PreservedAnalyses OpaquePredicates::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    // Simplify any loops in the function.
    auto res = llvm::LoopSimplifyPass().run(F, FAM);
    bool modified = !res.areAllPreserved();

    auto &RISet = FAM.getResult<ReachableIntegers>(F);

    // Collect all Basic Blocks for which there are reachable integers.
    std::vector<llvm::BasicBlock *> valid;
    for (auto &BB: F) {
        if (auto set = RISet[&BB]; !set.empty()) {
            valid.push_back(&BB);
        }
    }

    // add opaque predicates to loop conditionals.
    auto &LoopInfo = FAM.getResult<llvm::LoopAnalysis>(F);
    for (auto &L: LoopInfo) {
        modified |= handleLoopOpaquelyTruePredicates(*L, RISet);
    }

    // Create bogus flow by splitting a block and inserting new BasicBlocks based on some opaque predicates.
    for (auto &BB: valid) {
        modified |= (this->*OpaquePredicateHandlers[RandomInt64(OpaquePredicateFuncCount)])(*BB, FAM);
        if (modified) {
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
    // invalidate the cached result afterwards.
    FAM.clear();

    // select a random instruction to split on.
    auto randomInstruction = RandomNonPHIInstruction(BB);
    LLVM_DEBUG(llvm::dbgs() << "selected instruction to split on: " << *randomInstruction << '\n');


    auto pair = getRandomOpaquelyTruePredicate();
    auto *cond = (this->*pair.first)(RandomReachableInteger(RI), randomInstruction);

    LLVM_DEBUG(llvm::dbgs() << "condition for evaluating the next block: " << *cond << '\n');

    auto newBB = llvm::SplitBlockAndInsertIfThen(cond, randomInstruction, false);
    addBogusOperations(newBB, RI);

    Substitution substitution;

    auto Inst = llvm::dyn_cast<llvm::Instruction>(cond);
    auto Iter = Inst->getIterator();
    (substitution.*pair.second)(BB, llvm::dyn_cast<llvm::BinaryOperator>(Iter), Iter);

    return true;
}

bool OpaquePredicates::handleOpaquelyTruePredicateWithClone(llvm::BasicBlock &BB, llvm::FunctionAnalysisManager &FAM) {
    auto RI = FAM.getResult<ReachableIntegers>(*BB.getParent())[&BB];
    FAM.clear();

    auto randomInteger = RandomReachableInteger(RI);
    LLVM_DEBUG(
            llvm::dbgs() << "selected random integer from the set of reachable integers: " << *randomInteger << "\n");

    auto randomInstruction = RandomNonPHIInstruction(BB);
    LLVM_DEBUG(llvm::dbgs() << "selected instruction to split on: " << *randomInstruction << '\n');

    llvm::IRBuilder Builder(randomInstruction);

    // Create Condition (I mod 2 == 0)
    auto *rem = Builder.CreateSRem(randomInteger, LLVM_CONST_INT(randomInteger->getType(), 2));
    auto *cond = Builder.CreateICmpEQ(rem, LLVM_CONST_INT(rem->getType(), 0));

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
    Substitution().handleBasicBlock(*Else->getParent());

    return true;
}

bool OpaquePredicates::handleLoopOpaquelyTruePredicates(llvm::Loop &Loop, ReachableIntegers::Result &RI) {
    bool modified = false;

    // Recursively update nested loops.
    for (auto &SL: Loop.getSubLoops()) {
        modified |= handleLoopOpaquelyTruePredicates(*SL, RI);
    }

    auto *Header = Loop.getHeader();

    // Update the Header branching condition if exists and there exist reachable integers.
    if (auto br = llvm::dyn_cast<llvm::BranchInst>(Header->getTerminator()); br && br->isConditional() &&
                                                                             !RI[Header].empty()) {
        auto pair = getRandomOpaquelyTruePredicate();

        auto *predicate = (this->*pair.first)(RandomReachableInteger(RI[Header]), br);

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

    if (Header != Loop.getLoopLatch()) {
        auto Latch = Loop.getLoopLatch();
        // Update the Latch branch condition if exists.
        if (auto br = llvm::dyn_cast<llvm::BranchInst>(Loop.getLoopLatch()); br && br->isConditional() &&
                                                                             !RI[Latch].empty()) {
            auto pair = getRandomOpaquelyTruePredicate();

            auto *predicate = (this->*pair.first)(RandomReachableInteger(RI[Latch]), br);

            llvm::IRBuilder<> Builder(br);

            auto cond = Builder.CreateAnd(br->getCondition(), predicate);
            br->setCondition(cond);

            Substitution substitution;

            // obfuscate the created predicate.
            auto iter = llvm::dyn_cast<llvm::Instruction>(predicate)->getIterator();
            (substitution.*pair.second)(*Latch, llvm::dyn_cast<llvm::BinaryOperator>(iter), iter);

            auto condHandler = substitution.ANDHandlers[RandomInt64(ANDSubstitutionFuncCount)];
            auto condIter = llvm::dyn_cast<llvm::Instruction>(cond)->getIterator();
            (substitution.*condHandler)(*Latch, llvm::dyn_cast<llvm::BinaryOperator>(condIter), condIter);

            modified = true;
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


    // ((a & 1 == 0) || (3(x+1)(x+2)) % 6 == 0)
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
                            // (3(x+1)(x+2)
                            Builder.CreateMul(
                                    // 3(x+1)
                                    Builder.CreateMul(
                                            LLVM_CONST_INT(ChosenInteger->getType(), 3),
                                            Builder.CreateAdd(
                                                    ChosenInteger,
                                                    LLVM_CONST_INT(ChosenInteger->getType(), 1)
                                            )
                                    ),
                                    Builder.CreateAdd(
                                            ChosenInteger,
                                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                                    )
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 6)
                    ),
                    LLVM_CONST_INT(ChosenInteger->getType(), 0)
            )
    );

    return Res;
}

std::pair<
        OpaquePredicates::OpaquelyTruePredicate,
        Substitution::SubstitutionHandler
> OpaquePredicates::getRandomOpaquelyTruePredicate() {
    if (RandomInt64() % 2) {
        return {
                OROpaquelyTruePredicates[RandomInt64(OROpaquelyTruePredicatesFuncCount)],
                Substitution().ORHandlers[RandomInt64(ORSubstitutionFuncCount)]
        };
    }

    return {
            ANDOpaquelyTruePredicates[RandomInt64(ANDOpaquelyTruePredicatesFuncCount)],
            Substitution().ANDHandlers[RandomInt64(ORSubstitutionFuncCount)]
    };
}

llvm::Value *
OpaquePredicates::conditionOpaquePredicateAND(
        llvm::Value *ChosenInteger,
        llvm::Instruction *InsertBefore
) {
    llvm::IRBuilder<> Builder(InsertBefore);

    // ((3(x+1)(x+2)) % 6 == 0 && (x^2 + x) % 2 == 0)
    llvm::Value *Res = Builder.CreateAnd(
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            // (3(x+1)(x+2)
                            Builder.CreateMul(
                                    // 3(x+1)
                                    Builder.CreateMul(
                                            LLVM_CONST_INT(ChosenInteger->getType(), 3),
                                            Builder.CreateAdd(
                                                    ChosenInteger,
                                                    LLVM_CONST_INT(ChosenInteger->getType(), 1)
                                            )
                                    ),
                                    Builder.CreateAdd(
                                            ChosenInteger,
                                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                                    )
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 6)
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

    // ((x^3 + 3x^2 + 2x) % 3 == 0 || (x^2 + x) % 2 == 0)
    llvm::Value *Res = Builder.CreateOr(
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            // (3(x+1)(x+2)
                            Builder.CreateMul(
                                    // 3(x+1)
                                    Builder.CreateMul(
                                            LLVM_CONST_INT(ChosenInteger->getType(), 3),
                                            Builder.CreateAdd(
                                                    ChosenInteger,
                                                    LLVM_CONST_INT(ChosenInteger->getType(), 1)
                                            )
                                    ),
                                    Builder.CreateAdd(
                                            ChosenInteger,
                                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                                    )
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 6)
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

    // ((x^2 + x) % 2 == 0 && (x >= x))
    llvm::Value *Res = Builder.CreateAnd(
            Builder.CreateICmpEQ(
                    Builder.CreateSRem(
                            // (3(x+1)(x+2)
                            Builder.CreateMul(
                                    // 3(x+1)
                                    Builder.CreateMul(
                                            LLVM_CONST_INT(ChosenInteger->getType(), 3),
                                            Builder.CreateAdd(
                                                    ChosenInteger,
                                                    LLVM_CONST_INT(ChosenInteger->getType(), 1)
                                            )
                                    ),
                                    Builder.CreateAdd(
                                            ChosenInteger,
                                            LLVM_CONST_INT(ChosenInteger->getType(), 2)
                                    )
                            ),
                            LLVM_CONST_INT(ChosenInteger->getType(), 6)
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

    // ((x^3 + 3x^2 + 2x) % 3 == 0 && (x^2 + x) % 2 == 0)
    llvm::Value *Res = Builder.CreateAnd(
            Builder.CreateICmpSGE(
                    ChosenInteger,
                    ChosenInteger
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

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBogusFlowBlockSplitPluginInfo();
}