#include <unordered_map>

#include "Utils.h"
#include "OpaquePredicates.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"
#include "llvm/Transforms/Utils/FixIrreducible.h"

#define DEBUG_TYPE "opaque-predicates"

STATISTIC(BogusFlowBlockSplitCount, "# of performed block splitting");

llvm::PreservedAnalyses OpaquePredicates::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    bool modified = false;
    // Simplify any loops in the function.
    // https://llvm.org/docs/LoopTerminology.html
    modified |= !llvm::LoopSimplifyPass().run(F, FAM).areAllPreserved();
    modified |= !llvm::FixIrreduciblePass().run(F, FAM).areAllPreserved();

    // Gather Analysis of the function.
    auto &RISet = FAM.getResult<ReachableIntegers>(F);
    auto &LoopInfo = FAM.getResult<llvm::LoopAnalysis>(F);

    // if there is a loop and there exists at least 1 BB that's outside the loop
    // add a jump into the loop from that basic block.
    if (!LoopInfo.empty()) {
        // select a random top-level loop to jump to.
        std::vector<llvm::Loop *> &loops = LoopInfo.getTopLevelLoopsVector();
        auto jumpToLoop = *RandomElement(loops.begin(), loops.end());

        // try to insert a new path into the loop if possible.
        modified |= tryIntroducingNewPath(jumpToLoop, RISet);
    }

    // Collect all Basic Blocks for which there are reachable integers.
//    std::vector<llvm::BasicBlock *> validBB = findAllBBWithReachableIntegers(F, RISet);

//    // add opaque predicates to loop conditionals.
//    for (auto &L: LoopInfo) {
//        modified |= handleLoopOpaquelyTruePredicates(*L, RISet);
//    }
//
//    // Create bogus flow by splitting a block and inserting new BasicBlocks based on some opaque predicates.
//    for (auto &BB: validBB) {
//        if ((this->*OpaquePredicateHandlers[RandomInt64(OpaquePredicateFuncCount)])(*BB, FAM)) {
//            modified |= true;
//            ++BogusFlowBlockSplitCount;
//        }
//    }

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

    // select a random condition.
    auto pair = getRandomOpaquelyTruePredicate();
    auto *cond = (this->*pair.first)(*RandomElement(RI.begin(), RI.end()), randomInstruction);

    LLVM_DEBUG(llvm::dbgs() << "condition for evaluating the next block: " << *cond << '\n');

    // split block and insert bogus operation.
    auto newBB = llvm::SplitBlockAndInsertIfThen(cond, randomInstruction, false);
    addBogusOperations(newBB, RI);

    Substitution substitution;

    // obfuscate the condition.
    auto Inst = llvm::dyn_cast<llvm::Instruction>(cond);
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

    auto *Header = Loop.getHeader();
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
                auto *predicate = (this->*pair.first)(*RandomElement(latchRI.begin(), latchRI.end()), br);

                llvm::IRBuilder<> Builder(br);
                auto cond = Builder.CreateAnd(br->getCondition(), predicate);
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

std::vector<llvm::BasicBlock *>
OpaquePredicates::findAllBBWithReachableIntegers(llvm::Function &F, ReachableIntegers::Result &Set) {
    std::vector<llvm::BasicBlock *> result;

    for (auto &BB: F) {
        if (auto set = Set[&BB]; !set.empty()) {
            result.push_back(&BB);
        }
    }

    return result;
}

std::vector<llvm::BasicBlock *>
OpaquePredicates::findAllBBNotInLoop(llvm::Function &F, llvm::LoopInfo &LoopInfo, ReachableIntegers::Result &Set) {
    std::vector<llvm::BasicBlock *> result;

    for (auto &BB: F) {
        if (LoopInfo.getLoopFor(&BB) == nullptr && !Set[&BB].empty()) {
            result.push_back(&BB);
        }
    }

    return result;
}

void OpaquePredicates::findAllLoops(const std::vector<llvm::Loop *> &TopLevel, std::vector<llvm::Loop *> &loops) {
    for (auto &Loop: TopLevel) {
        findAllLoops(Loop->getSubLoopsVector(), loops);
        loops.push_back(Loop);
    }
}

std::unordered_set<llvm::Instruction *>
OpaquePredicates::findAllPrecedingInstructionInALoop(llvm::BasicBlock &BB, llvm::Loop &Loop) {
    std::queue<llvm::BasicBlock *> queue;
    std::unordered_set<llvm::BasicBlock *> visited;
    std::unordered_set<llvm::Instruction *> inst;

    if (Loop.getHeader() != &BB) {
        for (auto P: predecessors(&BB)) {
            if (Loop.contains(P)) {
                queue.push(P);
            }
        }
    }

    while (!queue.empty()) {
        auto *current = queue.front();
        queue.pop();

        // if we have processed this block already skip.
        if (visited.find(current) != visited.end()) {
            continue;
        }

        visited.insert(current);

        // if the current is not in the loop skip.
        if (!Loop.contains(current)) {
            continue;
        }

        // add instruction from the current block.
        for (auto &I: *current) {
            // instructions that don't return anything or are terminator don't need to be considered.
            if (I.getType()->isVoidTy() || I.isTerminator()) {
                continue;
            }
            inst.insert(&I);
        }

        // if current is the header we're done skip.
        if (current == Loop.getHeader()) {
            continue;
        }

        // add predecessors.
        for (auto P: llvm::predecessors(current)) {
            queue.push(P);
        }
    }

    return inst;
}

bool OpaquePredicates::tryIntroducingNewPath(llvm::Loop *TopLevelLoop, ReachableIntegers::Result &Set) {
    // given a top level loop find the deepest nested loop.
    llvm::Loop *innerLevelLoop = TopLevelLoop;
    findDeepestInnerLoop(TopLevelLoop, innerLevelLoop);

    // Currently deeply nested loops aren't supported only top level loops without nested loops.
    // TODO: fix me.
    if (innerLevelLoop->getLoopDepth() > 1) {
        return false;
    }

    // find the top-level loop predecessors.
    auto *loopPredecessor = TopLevelLoop->getLoopPredecessor();
    if (loopPredecessor == nullptr) {
        return false;
    }

    if (Set[loopPredecessor].empty()) {
        return false;
    }

    // pick a random basic block in the innermost loop to jump to.
    auto innerBlocks = innerLevelLoop->getBlocks();
    auto jumpToInnerLoopBlock = *RandomElement(innerBlocks.begin(), innerBlocks.end());

    // collect all instruction that appear before the block we're jumping to.
    // i.e. follow the predecessor path until we reach the header of the top-level loop.
    auto precedingInstructions = findAllPrecedingInstructionInALoop(*jumpToInnerLoopBlock, *TopLevelLoop);

    // find all the instructions along the paths from the basic block we jumped to the innermost loop header.
    // these instruction may need to be updated by introducing a new path into the loop.
    std::unordered_set<llvm::BasicBlock *> visited;
    std::unordered_map<llvm::BasicBlock *, std::unordered_set<llvm::Instruction *>> process;
    std::unordered_map<llvm::BasicBlock *, std::unordered_set<llvm::Instruction *>> remap;
    std::queue<llvm::BasicBlock *> queue;

    queue.push(jumpToInnerLoopBlock);
    while (!queue.empty()) {
        auto *current = queue.front();
        queue.pop();

        // have we visited this node.
        if (visited.find(current) != visited.end()) {
            continue;
        }
        visited.insert(current);

        // if current is not in the innermost loop skip.
        if (!innerLevelLoop->contains(current)) {
            continue;
        }

        // for each instruction that has an operand referencing an instruction
        // from blocks that precedes the jumped to block fix them.
        for (auto &I: *current) {
            // check if the current instruction operands reference any of such instructions.
            for (auto &O: I.operands()) {
                if (auto *inst = llvm::dyn_cast<llvm::Instruction>(O.get()); inst) {
                    if (precedingInstructions.find(inst) != precedingInstructions.end()) {
                        process[current].insert(inst);
                        remap[current].insert(&I);
                    }
                }
            }
        }

        // if current is the header skip.
        if (innerLevelLoop->getHeader() == current) {
            continue;
        }

        // add successors.
        for (auto S: llvm::successors(current)) {
            queue.push(S);
        }
    }

    LLVM_DEBUG(llvm::dbgs() << "jumping to: " << *jumpToInnerLoopBlock << '\n');

    // create the jump to the block in the loop.
    auto predecessorRI = Set[loopPredecessor];
    auto *instruction = loopPredecessor->getTerminator();
    auto pair = getRandomOpaquelyTruePredicate();
    auto *cond = (this->*pair.first)(*RandomElement(predecessorRI.begin(), predecessorRI.end()), instruction);
    auto newBB = llvm::SplitBlockAndInsertIfThen(cond, instruction, false);

    llvm::BranchInst::Create(jumpToInnerLoopBlock, newBB);

    // after the jump we need to update the phi nodes if any.
    for (auto &PHI: jumpToInnerLoopBlock->phis()) {
        // for each phi node in the BB we just jumped add a instruction (taken from the RI of the predecessors, which
        // should be reachable also from the new basic block because of the split before the branch instruction) and
        // add the newBB as the parent.
        PHI.addIncoming(llvm::ConstantAggregateZero::getNullValue(PHI.getType()), newBB->getParent());
    }

    // erase the old jump
    newBB->eraseFromParent();

    /*
     *  for the block we jumped to we need to create Phi nodes for every instruction that occurred before the basic block.
     */
    llvm::IRBuilder<> Builder(jumpToInnerLoopBlock->getFirstNonPHI());
    // perBlockMappings store mappings per Basic Block. As we follow the paths from the Jumped to Basic Block
    // we populate the data structure with the needed mappings.
    std::unordered_map<llvm::BasicBlock *, llvm::ValueToValueMapTy> perBlockMappings;

    // Handle the Jumped to block first, as that's the special case.
    // For each Instruction that yielded a value that precedes the Jumped To Block until the Top-Level Loop Header
    // create a Phi node.
    for (auto toProcess: precedingInstructions) {
        if (existsPhiThatContainInstruction(toProcess, *jumpToInnerLoopBlock)) {
            continue;
        }

        auto *PHI = Builder.CreatePHI(toProcess->getType(), 2);
        for (auto &block: directPredecessors(toProcess, jumpToInnerLoopBlock)) {
            PHI->addIncoming(toProcess, block);
        }

        for (auto p: llvm::predecessors(jumpToInnerLoopBlock)) {
            if (PHI->getBasicBlockIndex(p) >= 0) {
                continue;
            }
            PHI->addIncoming(llvm::ConstantAggregateZero::getNullValue(PHI->getType()), p);
        }

        perBlockMappings[jumpToInnerLoopBlock][toProcess] = PHI;
    }

    for (auto &inst: remap[jumpToInnerLoopBlock]) {
        llvm::RemapInstruction(inst, perBlockMappings[jumpToInnerLoopBlock], llvm::RF_IgnoreMissingLocals);
    }

    // we now need to correctly remap instruction from the jumped to block until the Header of the innermost loop.
    // this remap needs to be done for every basic block that has multiple predecessors.
    visited.clear();
    std::queue<std::pair<llvm::BasicBlock *, llvm::BasicBlock *>> logicQueue;
    logicQueue.emplace(jumpToInnerLoopBlock, nullptr);
    while (!logicQueue.empty()) {
        auto current = logicQueue.front();
        logicQueue.pop();

        // have we visited this node.
        if (visited.find(current.first) != visited.end()) {
            continue;
        }
        visited.insert(current.first);

        // if current is not in the innermost loop skip.
        if (!innerLevelLoop->contains(current.first)) {
            continue;
        }

        // process.
        {
            // update the mappings first.
            for (auto p: predecessors(current.first)) {
                auto &prevMappings = perBlockMappings[p];
                perBlockMappings[current.first].insert(prevMappings.begin(), prevMappings.end());
            }

            if (!process[current.first].empty()) {
                Builder.SetInsertPoint(current.first->getFirstNonPHI());

                if (numOfPredecessors(current.first) > 1) {
                    for (auto &toProcess: process[current.first]) {
                        if (existsPhiThatContainInstruction(toProcess, *current.first)) {
                            continue;
                        }

                        // when creating a PHI node we need to consider also the case
                        // that possible remappings could've been done in the predecessors.
                        auto *PHI = Builder.CreatePHI(toProcess->getType(), 2);
                        for (auto &block: directPredecessors(toProcess, current.first)) {
                            auto incomingValue = toProcess;
                            // if there is a mapping to another value in the previous block consider it.
                            if (auto r = perBlockMappings[block].find(toProcess); r != perBlockMappings[block].end()) {
                                incomingValue = llvm::cast<llvm::Instruction>(perBlockMappings[block][toProcess]);
                            }
                            PHI->addIncoming(incomingValue, block);
                        }

                        for (auto p: llvm::predecessors(current.first)) {
                            if (PHI->getBasicBlockIndex(p) >= 0) {
                                continue;
                            }
                            PHI->addIncoming(llvm::ConstantAggregateZero::getNullValue(PHI->getType()), p);
                        }

                        perBlockMappings[current.first][toProcess] = PHI;
                    }
                }

                for (auto &inst: remap[current.first]) {
                    llvm::RemapInstruction(inst, perBlockMappings[current.first], llvm::RF_IgnoreMissingLocals);
                }
            }
        }

        // if current is the header skip.
        if (innerLevelLoop->getHeader() == current.first) {
            continue;
        }

        // add successors.
        for (auto S: llvm::successors(current.first)) {
            logicQueue.emplace(S, current.first);
        }
    }

    return true;
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