#include "Utils.h"
#include "BranchFunction.h"
#include "OpaquePredicates.h"

#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Transforms/Utils/ModuleUtils.h"

llvm::PreservedAnalyses BranchFunction::run(llvm::Module &M, llvm::ModuleAnalysisManager &AM) {
    for (auto &F: M) {
        uint64_t curr = 0;
        for (auto &BB: F) {
            if (!BB.isEntryBlock()) {
                ++curr;
            }
        }
        largestSequence = std::max(curr, largestSequence);
    }

    if (largestSequence == 0) {
        return llvm::PreservedAnalyses::all();
    }

    // create a global array with all the basic blocks.
    auto *arrayTy = llvm::ArrayType::get(
            llvm::IntegerType::getInt8PtrTy(M.getContext()),
            largestSequence
    );

    auto *CA = llvm::ConstantArray::get(arrayTy, llvm::ConstantAggregateZero::getNullValue(arrayTy));
    auto lookupTable = new llvm::GlobalVariable(
            M,
            CA->getType(),
            false,
            llvm::GlobalVariable::LinkageTypes::PrivateLinkage,
            CA,
            "obfsblockAddrLookupTable" + std::to_string(RandomInt64())
    );

    createMapFunction(M);
    // create the branch function.
    createFunction(M, lookupTable);

    for (auto &F: M) {
        if (F.isDeclaration()) {
            continue;
        }
        // modify each branch instruction in each function.
        handleFunction(F, lookupTable);
    }

    // make the global variable un-deletable even if not used.
    llvm::appendToCompilerUsed(M, {lookupTable});

    return llvm::PreservedAnalyses::none();
}

void BranchFunction::handleFunction(llvm::Function &F, llvm::GlobalVariable *LookupTable) {
    llvm::IRBuilder<> Builder(F.getEntryBlock().getFirstNonPHI());
    auto *Index = Builder.CreateAlloca(LLVM_I32(F.getContext()));

    std::vector<int32_t> order(largestSequence);
    std::iota(order.begin(), order.end(), 0);
    std::shuffle(order.begin(), order.end(), GetRandomGenerator());

    // initialize all dst blocks in the array.
    std::unordered_map<llvm::BasicBlock *, uint64_t> blockMappings;
    for (auto &BB: F) {
        if (BB.isEntryBlock()) {
            continue;
        }
        blockMappings[&BB] = upperLimit ^ order[blockMappings.size()];
    }

    // store the block addresses in the table.
    std::vector<llvm::Value *> GEPS;
    for (auto p: blockMappings) {
        GEPS.push_back(Builder.CreateGEP(
                LookupTable->getValueType(),
                LookupTable,
                {
                        LLVM_CONST_I32(F.getContext(), 0),
                        Builder.CreateCall(mapFunction, LLVM_CONST_I64(F.getContext(), p.second))
                }
        ));
        Builder.CreateStore(llvm::BlockAddress::get(p.first), GEPS[GEPS.size() - 1]);
    }

    // Replace with indirect jumps.
    for (auto &BB: F) {
        auto *br = llvm::dyn_cast<llvm::BranchInst>(BB.getTerminator());
        if (!br) {
            continue;
        }
        Builder.SetInsertPoint(br);
        std::vector<llvm::BasicBlock *> successors;

        if (br->isConditional()) {
            successors.push_back(br->getSuccessor(0));
            successors.push_back(br->getSuccessor(1));

            uint64_t mapping1 = blockMappings[successors[0]];
            uint64_t mapping2 = blockMappings[successors[1]];
            uint64_t next = mapping1 ^ mapping2;

            auto *selectInst = Builder.CreateSelect(
                    br->getCondition(),
                    LLVM_CONST_I32(F.getContext(), mapping2),
                    LLVM_CONST_I32(F.getContext(), mapping1),
                    "",
                    br
            );

            auto *xorResult = Builder.CreateXor(selectInst, LLVM_CONST_I32(F.getContext(), next));
            Builder.CreateStore(xorResult, Index);
        } else {
            successors.push_back(br->getSuccessor(0));
            if (!BB.isEntryBlock()) {
                // create a back reference to the same block to add further confusion.
                successors.push_back(&BB);
                for (auto &phi: BB.phis()) {
                    phi.addIncoming(llvm::ConstantAggregateZero::getNullValue(phi.getType()), &BB);
                }

                uint64_t mapping1 = blockMappings[successors[0]];
                uint64_t mapping2 = RandomElement(blockMappings.begin(), blockMappings.end())->second;
                uint64_t next = mapping1 ^ mapping2;

                // create a bogus condition.
                auto *conditionValue = *RandomElement(GEPS.begin(), GEPS.end());
                auto *chosenInteger = Builder.CreateLoad(
                        LLVM_I8(F.getContext()),
                        Builder.CreateLoad(
                                llvm::IntegerType::getInt8PtrTy(F.getContext()),
                                conditionValue
                        )
                );
                OpaquePredicates predicates;
                auto pair = predicates.getRandomOpaquelyTruePredicate();
                auto *cond = (&predicates->*pair.first)(chosenInteger, br);

                auto *selectInst = Builder.CreateSelect(
                        cond,
                        LLVM_CONST_I32(F.getContext(), mapping2),
                        LLVM_CONST_I32(F.getContext(), mapping1),
                        "",
                        br
                );

                auto *xorResult = Builder.CreateXor(selectInst, LLVM_CONST_I32(F.getContext(), next));
                Builder.CreateStore(xorResult, Index);
            } else {
                Builder.CreateStore(LLVM_CONST_I32(F.getContext(), blockMappings[successors[0]]), Index);
            }
        }

        auto indrBr = Builder.CreateIndirectBr(
                Builder.CreateLoad(
                        llvm::BlockAddress::get(&BB)->getType(),
                        Builder.CreateCall(
                                branchFunction,
                                Index
                        )
                )
        );

        for (auto *incoming: successors) {
            indrBr->addDestination(incoming);
        }

        br->eraseFromParent();
    }
}

void BranchFunction::createFunction(llvm::Module &M, llvm::GlobalVariable *LookupTable) {
    branchFunction = llvm::Function::Create(
            llvm::FunctionType::get(
                    llvm::IntegerType::getInt8PtrTy(M.getContext())->getPointerTo(),
                    {llvm::IntegerType::getInt32PtrTy(M.getContext())},
                    false
            ),
            llvm::Function::LinkageTypes::PrivateLinkage,
            "bf" + std::to_string(RandomInt64()),
            M
    );

    auto *entryBlock = llvm::BasicBlock::Create(branchFunction->getContext(), "", branchFunction);

    llvm::IRBuilder<> Builder(entryBlock);

    auto idx = Builder.CreateCall(
            mapFunction,
            Builder.CreateZExt(
                    Builder.CreateLoad(
                            LLVM_I32(branchFunction->getContext()), branchFunction->getArg(0)
                    ),
                    LLVM_I64(branchFunction->getContext())
            )
    );

    Builder.CreateRet(Builder.CreateInBoundsGEP(
            LookupTable->getValueType(),
            LookupTable,
            {
                    LLVM_CONST_I32(branchFunction->getContext(), 0),
                    idx
            }
    ));

    // make the function un-deletable even if not used.
    llvm::appendToCompilerUsed(M, {branchFunction});
}

void BranchFunction::createMapFunction(llvm::Module &M) {
    mapFunction = llvm::Function::Create(
            llvm::FunctionType::get(
                    llvm::IntegerType::getInt64Ty(M.getContext()),
                    {llvm::IntegerType::getInt64Ty(M.getContext())},
                    false
            ),
            llvm::Function::LinkageTypes::PrivateLinkage,
            "h" + std::to_string(RandomInt64()),
            M
    );

    if (largestSequence > upperLimit) {
        throw std::runtime_error("upperLimit is to small, a function has unexpect large number of basic blocks");
    }

    auto *entryBlock = llvm::BasicBlock::Create(mapFunction->getContext(), "", mapFunction);

    llvm::IRBuilder Builder(entryBlock);
    Builder.CreateRet(Builder.CreateXor(
            LLVM_CONST_I64(mapFunction->getContext(), upperLimit),
            mapFunction->getArg(0)
    ));

    llvm::appendToCompilerUsed(M, {mapFunction});
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getBranchFunctionPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "branchf",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, ModulePassManager &MPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "branchf") {
                                MPM.addPass(BranchFunction());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBranchFunctionPluginInfo();
}
