#include <llvm/Transforms/Utils/ModuleUtils.h>
#include "Utils.h"
#include "CallObfuscation.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

#define DEBUG_TYPE "call-obfuscation"

STATISTIC(CallObfuscationCount, "# of call obfuscations");

llvm::PreservedAnalyses CallObfuscation::run(llvm::Module &M, llvm::ModuleAnalysisManager &AM) {
    std::vector<llvm::Function *> originalFuncs;
    for (auto &F: M) {
        originalFuncs.push_back(&F);
    }

    createMapFunction(M);

    // for each function check whether a "local array needs to be created"
    for (auto F: originalFuncs) {
        uint64_t calls = 0;

        for (auto &BB: *F) {
            for (auto &I: BB) {
                if (auto call = llvm::dyn_cast<llvm::CallInst>(&I); call) {
                    if (!call->getCalledFunction()->isIntrinsic()) {
                        ++calls;
                    }
                }
            }
        }

        if (calls) {
            llvm::ArrayType *arrayTy = llvm::ArrayType::get(
                    llvm::PointerType::getInt8PtrTy(M.getContext()),
                    calls
            );

            llvm::Constant *CA = llvm::ConstantArray::get(arrayTy, llvm::ConstantAggregateZero::getNullValue(arrayTy));
            auto localLookupTable = new llvm::GlobalVariable(
                    M,
                    CA->getType(),
                    false,
                    llvm::GlobalVariable::LinkageTypes::PrivateLinkage,
                    CA,
                    "obfsfuncAddrLookupTable" + std::to_string(RandomInt64())
            );

            llvm::appendToCompilerUsed(M, {localLookupTable});

            lookupTables[F] = {createFunction(M, localLookupTable), localLookupTable, calls};
        }
    }

    for (auto &F: M) {
        if (F.isDeclaration()) {
            continue;
        }
        handleFunction(F);
    }

    return llvm::PreservedAnalyses::none();
}

void CallObfuscation::handleFunction(llvm::Function &F) {
    // we don't want to process the function we created otherwise an endless loop will be created.
    if (lookupTables.find(&F) == lookupTables.end()) {
        return;
    }

    auto [lookupFunction, LookupTable, callCount] = lookupTables[&F];

    std::vector<llvm::CallInst *> calls;

    for (auto &BB: F) {
        for (auto &I: BB) {
            if (auto call = llvm::dyn_cast<llvm::CallInst>(&I); call) {
                if (!call->getCalledFunction()->isIntrinsic()) {
                    calls.push_back(call);
                }
            }
        };
    }

    llvm::IRBuilder<> Builder(&*F.getEntryBlock().getFirstInsertionPt());
    llvm::AllocaInst *Index = Builder.CreateAlloca(LLVM_I64(F.getContext()));

    std::vector<int32_t> order(callCount);
    std::iota(order.begin(), order.end(), 0);
    std::shuffle(order.begin(), order.end(), GetRandomGenerator());

    std::vector<std::pair<llvm::Function *, uint64_t>> functionMappings;
    for (auto call: calls) {
        llvm::Function *callee = call->getCalledFunction();
        functionMappings.emplace_back(callee, rng ^ order[functionMappings.size()]);
    }

    // initialize the function pointers.
    for (auto f: functionMappings) {
        llvm::Value *ptr = Builder.CreateGEP(
                LookupTable->getValueType(),
                LookupTable,
                {
                        LLVM_CONST_I32(F.getContext(), 0),
                        Builder.CreateCall(mapFunction, LLVM_CONST_I64(F.getContext(), f.second))
                }
        );

        llvm::Value *cast = Builder.CreateBitCast(f.first, llvm::PointerType::getInt8PtrTy(F.getContext()));
        Builder.CreateStore(cast, ptr);
    }

    for (std::size_t idx = 0; idx < calls.size(); idx++) {
        auto *call = calls[idx];
        llvm::Function *callee = call->getCalledFunction();

        Builder.SetInsertPoint(call);

        uint64_t mask = functionMappings[idx].second;
        Builder.CreateStore(LLVM_CONST_I64(F.getContext(), mask), Index);

        llvm::LoadInst *load = Builder.CreateLoad(
                llvm::PointerType::getInt8PtrTy(F.getContext()),
                Builder.CreateCall(
                        lookupFunction,
                        Index
                )
        );

        llvm::CallInst *newCall = Builder.CreateCall(
                callee->getFunctionType(),
                Builder.CreateBitCast(load, callee->getType()),
                std::vector<llvm::Value *>(call->args().begin(), call->args().end()),
                ""
        );

        llvm::ReplaceInstWithInst(call, newCall);
    }

    CallObfuscationCount += calls.size();
}

llvm::Function *CallObfuscation::createFunction(llvm::Module &M, llvm::GlobalVariable *LookupTable) {
    llvm::Function *lookupFunction = llvm::Function::Create(
            llvm::FunctionType::get(
                    llvm::IntegerType::getInt8PtrTy(M.getContext())->getPointerTo(),
                    {llvm::IntegerType::getInt64PtrTy(M.getContext())},
                    false
            ),
            llvm::Function::LinkageTypes::PrivateLinkage,
            "lk" + std::to_string(RandomInt64()),
            M
    );

    lookupFunction->addFnAttr(llvm::Attribute::NoInline);

    llvm::BasicBlock *entryBlock = llvm::BasicBlock::Create(
            lookupFunction->getContext(),
            "",
            lookupFunction
    );

    llvm::IRBuilder<> builder(entryBlock);

    llvm::CallInst *idx = builder.CreateCall(
            mapFunction,
            builder.CreateZExt(
                    builder.CreateLoad(
                            LLVM_I64(lookupFunction->getContext()), lookupFunction->getArg(0)
                    ),
                    LLVM_I64(lookupFunction->getContext())
            )
    );

    builder.CreateRet(builder.CreateInBoundsGEP(
            LookupTable->getValueType(),
            LookupTable,
            {
                    LLVM_CONST_I32(lookupFunction->getContext(), 0),
                    idx
            }
    ));

    // make the function un-deletable even if not used.
    llvm::appendToCompilerUsed(M, {lookupFunction});
    return lookupFunction;
}

void CallObfuscation::createMapFunction(llvm::Module &M) {
    mapFunction = llvm::Function::Create(
            llvm::FunctionType::get(
                    llvm::IntegerType::getInt64Ty(M.getContext()),
                    {llvm::IntegerType::getInt64Ty(M.getContext())},
                    false
            ),
            llvm::Function::LinkageTypes::PrivateLinkage,
            "m" + std::to_string(RandomInt64()),
            M
    );

    mapFunction->addFnAttr(llvm::Attribute::NoInline);


    llvm::BasicBlock *entryBlock = llvm::BasicBlock::Create(
            mapFunction->getContext(),
            "",
            mapFunction
    );

    llvm::IRBuilder Builder(entryBlock);
    Builder.CreateRet(Builder.CreateXor(
            LLVM_CONST_I64(mapFunction->getContext(), rng),
            mapFunction->getArg(0)
    ));

    llvm::appendToCompilerUsed(M, {mapFunction});
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getCallObfuscationPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "callobfs",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, ModulePassManager &MPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "callobfs") {
                                MPM.addPass(CallObfuscation());
                                return true;
                            }
                            return false;
                        });
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getCallObfuscationPluginInfo();
}
