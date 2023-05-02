#include "Utils.h"
#include "StringObfuscation.h"
#include "StringStateMachine.h"

#include "llvm/IRReader/IRReader.h"
#include "llvm/IR/Constants.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Linker/Linker.h"
#include "llvm/IR/Module.h"

#include "llvm/ADT/Statistic.h"

#define DEBUG_TYPE "string-obfuscation"

STATISTIC(StringObfuscationCount, "# of performed string obfuscations");

llvm::PreservedAnalyses StringObfuscation::run(llvm::Module &M, llvm::ModuleAnalysisManager &AM) {
    bool changed = runOnModule(M);
    if (changed) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

bool StringObfuscation::runOnModule(llvm::Module &M) {
    std::string funcName;
    if (!createDecodeFunc(M, funcName)) {
        return false;
    }

    llvm::LLVMContext &ctx = M.getContext();
    std::vector<GlobalStringData> strings;

    for (auto &global: M.getGlobalList()) {
        if (!global.hasInitializer() || global.hasExternalLinkage()) {
            continue;
        }

        if (auto string = llvm::dyn_cast<llvm::ConstantDataArray>(global.getInitializer()); string) {
            std::string input = string->getAsString().str();
            std::string pattern;
            auto stateMachine = StateMachine();
            auto data = stateMachine.generate(input, pattern);

            llvm::Constant *newData = llvm::ConstantDataArray::getString(ctx, llvm::StringRef(pattern), false);
            global.setInitializer(newData);
            global.setConstant(false);
            strings.push_back({std::move(data.first), std::move(data.second), pattern, &global});
        }
    }

    createCtor(M, strings, funcName);
    StringObfuscationCount += strings.size();
    return true;
}


bool StringObfuscation::createDecodeFunc(llvm::Module &M, std::string &funcName) {
    const std::string func = R"(
define void @decode(i8* %0, i32 %1, i8* %2, i32* %3, i8* %4) {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = zext i32 %1 to i64
  br label %10

9:                                                ; preds = %10, %5
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %24, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %23, %10 ]
  %13 = getelementptr inbounds i8, i8* %0, i64 %11
  %14 = load i8, i8* %13, align 1
  %15 = shl i32 %12, 1
  %16 = sext i8 %14 to i32
  %17 = add nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %4, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = getelementptr inbounds i8, i8* %2, i64 %11
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds i32, i32* %3, i64 %18
  %23 = load i32, i32* %22, align 4
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %9, label %10
}
)";

    llvm::SMDiagnostic error;
    auto funcBuffer = llvm::MemoryBuffer::getMemBuffer(func, "decodeFunc", false);
    auto decodeModule = llvm::parseIR(funcBuffer->getMemBufferRef(), error, M.getContext());
    if (decodeModule == nullptr) {
        llvm::errs() << error.getMessage() << '\n';;
        return false;
    }

    funcName = "decode" + std::to_string(RandomInt64());
    decodeModule->getFunction("decode")->setName(funcName);

    llvm::Linker linker(M);
    if (linker.linkInModule(std::move(decodeModule))) {
        llvm::errs() << "failed to link modules" << '\n';
        return false;
    }

    return true;
}

void StringObfuscation::createCtor(llvm::Module &M, std::vector<GlobalStringData> &strings, const std::string &funcName) {
    // Create an array of two elements
    llvm::LLVMContext &ctx = M.getContext();

    llvm::Function *decodeFunc = M.getFunction(funcName);
    llvm::Function *initFunc = llvm::Function::Create(
            llvm::FunctionType::get(llvm::Type::getVoidTy(ctx), false),
            llvm::Function::InternalLinkage,
            "init" + std::to_string(RandomInt64()),
            M
    );

    llvm::BasicBlock *returnBlock = llvm::BasicBlock::Create(ctx, "", initFunc);
    llvm::ReturnInst::Create(ctx, returnBlock);

    llvm::IRBuilder<> builder(&*initFunc->getEntryBlock().getFirstInsertionPt());
    for (auto &globalStrings: strings) {
        llvm::AllocaInst *outArray = builder.CreateAlloca(
                LLVM_I8_ARRAY(ctx, globalStrings.out.size()),
                nullptr,
                "outArray"
        );
        // initialize out array.
        for (std::size_t idx = 0; idx < globalStrings.out.size(); ++idx) {
            llvm::Value *EP = builder.CreateInBoundsGEP(
                    LLVM_I8_ARRAY(ctx, globalStrings.out.size()),
                    outArray,
                    {LLVM_CONST_I32(ctx, 0), LLVM_CONST_I32(ctx, idx)}
            );
            builder.CreateStore(LLVM_CONST_I8(ctx, globalStrings.out[idx]), EP);
        }

        llvm::AllocaInst *nextArray = builder.CreateAlloca(
                LLVM_I32_ARRAY(ctx, globalStrings.next.size()),
                nullptr,
                "nextArray"
        );
        // initialize the next array.
        for (std::size_t idx = 0; idx < globalStrings.next.size(); ++idx) {
            llvm::Value *EP = builder.CreateInBoundsGEP(
                    LLVM_I32_ARRAY(ctx, globalStrings.next.size()),
                    nextArray,
                    {LLVM_CONST_I32(ctx, 0), LLVM_CONST_I32(ctx, idx)}
            );
            builder.CreateStore(LLVM_CONST_I32(ctx, globalStrings.next[idx]), EP);
        }

        llvm::Value *ptr = builder.CreateInBoundsGEP(
                globalStrings.ptr->getValueType(),
                globalStrings.ptr,
                {LLVM_CONST_I32(ctx, 0), LLVM_CONST_I32(ctx, 0)}
        );
        llvm::Value *nextPtr = builder.CreateInBoundsGEP(
                nextArray->getAllocatedType(),
                nextArray,
                {LLVM_CONST_I32(ctx, 0), LLVM_CONST_I32(ctx, 0)}
        );
        llvm::Value *outPtr = builder.CreateInBoundsGEP(
                outArray->getAllocatedType(),
                outArray,
                {LLVM_CONST_I32(ctx, 0), LLVM_CONST_I32(ctx, 0)}
        );

        llvm::CallInst *call = builder.CreateCall(decodeFunc, {
                ptr,
                LLVM_CONST_I32(ctx, globalStrings.pattern.size()),
                ptr,
                nextPtr,
                outPtr
        });

        returnBlock->splitBasicBlock(call, "", true);
    }

    std::vector<llvm::Constant *> ctorsArray = {
            llvm::ConstantStruct::getAnon(
                    {
                            LLVM_CONST_I32(ctx, 65535),
                            initFunc, // void ()*
                            llvm::Constant::getNullValue(llvm::Type::getInt8PtrTy(ctx)) // i8*
                    }
            ),
    };


    llvm::GlobalVariable *GV = M.getGlobalVariable("llvm.global_ctors");
    if (!GV) {
        llvm::ArrayType *ctorsArrayType = llvm::ArrayType::get(
                llvm::StructType::get(
                        ctx,
                        {
                                llvm::Type::getInt32Ty(ctx), // i32
                                initFunc->getType(), // void ()*
                                llvm::Type::getInt8PtrTy(ctx) // i8*
                        }
                ),
                1 // number of elements
        );

        new llvm::GlobalVariable(
                M,
                ctorsArrayType,
                true, // isConstant
                llvm::GlobalValue::AppendingLinkage, // linkage
                llvm::ConstantArray::get(ctorsArrayType, ctorsArray), // initializer
                "llvm.global_ctors" // name
        );
        return;
    }

    llvm::ConstantArray *CA = llvm::cast<llvm::ConstantArray>(GV->getInitializer());
    for (auto &V: CA->operands()) {
        llvm::ConstantStruct *CS = llvm::cast<llvm::ConstantStruct>(V);
        ctorsArray.push_back(CS);
    }

    // Create the new array initializer.
    llvm::ArrayType *ATy = llvm::ArrayType::get(CA->getType()->getElementType(), ctorsArray.size());
    llvm::Constant *newCA = llvm::ConstantArray::get(ATy, ctorsArray);

    // Create the new global and insert it next to the existing list.
    auto *NGV = new llvm::GlobalVariable(
            newCA->getType(),
            GV->isConstant(),
            GV->getLinkage(),
            newCA,
            "",
            GV->getThreadLocalMode()
    );

    M.getGlobalList().insertAfter(GV->getIterator(), NGV);
    NGV->takeName(GV);

    // Nuke the old list, replacing any uses with the new one.
    if (!GV->use_empty()) {
        llvm::Constant *V = NGV;
        if (V->getType() != GV->getType()) {
            V = llvm::ConstantExpr::getBitCast(V, GV->getType());
        }
        GV->replaceAllUsesWith(V);
    }
    GV->eraseFromParent();
}


//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getStringObfuscationPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "strobfs",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, ModulePassManager &MPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "strobfs") {
                                MPM.addPass(StringObfuscation());
                                return true;
                            }
                            return false;
                        });
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getStringObfuscationPluginInfo();
}
