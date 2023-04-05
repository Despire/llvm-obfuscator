#include "Utils.h"
#include "StringObfuscation.h"
#include "StringStateMachine.h"

#include "llvm/IRReader/IRReader.h"
#include "llvm/IR/Constants.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Linker/Linker.h"
#include "llvm/IR/Module.h"

llvm::PreservedAnalyses StringObfuscation::run(llvm::Module &M, llvm::ModuleAnalysisManager &AM) {
    bool changed = runOnModule(M);
    if (changed) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

bool StringObfuscation::runOnModule(llvm::Module &M) {
    auto &Ctx = M.getContext();
    std::vector<GlobalStringData> strings;

    for (auto &Global: M.getGlobalList()) {
        if (!Global.hasInitializer() || Global.hasExternalLinkage()) {
            continue;
        }

        if (auto string = llvm::dyn_cast<llvm::ConstantDataArray>(Global.getInitializer()); string) {
            std::string input = string->getAsString().str();
            std::string pattern;
            auto stateMachine = StateMachine();
            auto data = stateMachine.generate(input, pattern);

            auto *newData = llvm::ConstantDataArray::getString(Ctx, llvm::StringRef(pattern), false);
            Global.setInitializer(newData);
            Global.setConstant(false);
            strings.push_back({std::move(data.first), std::move(data.second), pattern, &Global});
        }
    }

    std::string funcName;
    if (!createDecodeFunc(M, funcName)) {
        return false;
    }

    createCtor(M, strings, funcName);
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
    auto &CTX = M.getContext();

    llvm::Function *decodeFunc = M.getFunction(funcName);
    llvm::Function *initFunc = llvm::Function::Create(
            llvm::FunctionType::get(llvm::Type::getVoidTy(CTX), false),
            llvm::Function::InternalLinkage,
            "init" + std::to_string(RandomInt64()),
            M
    );

    llvm::BasicBlock *ReturnBlock = llvm::BasicBlock::Create(CTX, "", initFunc);
    llvm::ReturnInst::Create(CTX, ReturnBlock);

    llvm::IRBuilder<> Builder(&*initFunc->getEntryBlock().getFirstInsertionPt());
    for (auto &globalStrings: strings) {
        auto outArray = Builder.CreateAlloca(
                LLVM_I8_ARRAY(CTX, globalStrings.out.size()),
                nullptr,
                "outArray"
        );
        // initialize out array.
        for (std::size_t idx = 0; idx < globalStrings.out.size(); ++idx) {
            auto *EP = Builder.CreateInBoundsGEP(
                    LLVM_I8_ARRAY(CTX, globalStrings.out.size()),
                    outArray,
                    {LLVM_CONST_I32(CTX, 0), LLVM_CONST_I32(CTX, idx)}
            );
            Builder.CreateStore(LLVM_CONST_I8(CTX, globalStrings.out[idx]), EP);
        }

        auto nextArray = Builder.CreateAlloca(
                LLVM_I32_ARRAY(CTX, globalStrings.next.size()),
                nullptr,
                "nextArray"
        );
        // initialize the next array.
        for (std::size_t idx = 0; idx < globalStrings.next.size(); ++idx) {
            auto *EP = Builder.CreateInBoundsGEP(
                    LLVM_I32_ARRAY(CTX, globalStrings.next.size()),
                    nextArray,
                    {LLVM_CONST_I32(CTX, 0), LLVM_CONST_I32(CTX, idx)}
            );
            Builder.CreateStore(LLVM_CONST_I32(CTX, globalStrings.next[idx]), EP);
        }

        auto ptr = Builder.CreateInBoundsGEP(
                globalStrings.ptr->getValueType(),
                globalStrings.ptr,
                {LLVM_CONST_I32(CTX, 0), LLVM_CONST_I32(CTX, 0)}
        );
        auto nextPtr = Builder.CreateInBoundsGEP(
                nextArray->getAllocatedType(),
                nextArray,
                {LLVM_CONST_I32(CTX, 0), LLVM_CONST_I32(CTX, 0)}
        );
        auto outPtr = Builder.CreateInBoundsGEP(
                outArray->getAllocatedType(),
                outArray,
                {LLVM_CONST_I32(CTX, 0), LLVM_CONST_I32(CTX, 0)}
        );

        auto call = Builder.CreateCall(decodeFunc, {
                ptr,
                LLVM_CONST_I32(CTX, globalStrings.pattern.size()),
                ptr,
                nextPtr,
                outPtr
        });

        ReturnBlock->splitBasicBlock(call, "", true);
    }

    std::vector<llvm::Constant *> ctorsArray = {
            llvm::ConstantStruct::getAnon(
                    {
                            LLVM_CONST_I32(CTX, 65535),
                            initFunc, // void ()*
                            llvm::Constant::getNullValue(llvm::Type::getInt8PtrTy(CTX)) // i8*
                    }
            ),
    };


    auto *GV = M.getGlobalVariable("llvm.global_ctors");
    if (!GV) {
        llvm::ArrayType *ctorsArrayType = llvm::ArrayType::get(
                llvm::StructType::get(
                        CTX,
                        {
                                llvm::Type::getInt32Ty(CTX), // i32
                                initFunc->getType(), // void ()*
                                llvm::Type::getInt8PtrTy(CTX) // i8*
                        }
                ),
                1 // number of elements
        );

        M.getGlobalList().push_back(new llvm::GlobalVariable(
                M,
                ctorsArrayType,
                true, // isConstant
                llvm::GlobalValue::AppendingLinkage, // linkage
                llvm::ConstantArray::get(ctorsArrayType, ctorsArray), // initializer
                "llvm.global_ctors" // name
        ));
        return;
    }

    auto *CA = llvm::cast<llvm::ConstantArray>(GV->getInitializer());
    for (auto &V: CA->operands()) {
        auto *CS = llvm::cast<llvm::ConstantStruct>(V);
        ctorsArray.push_back(CS);
    }

    // Create the new array initializer.
    auto *ATy = llvm::ArrayType::get(CA->getType()->getElementType(), ctorsArray.size());
    auto *newCA = llvm::ConstantArray::get(ATy, ctorsArray);

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
