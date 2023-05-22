#include "MergeFuncs.h"
#include "cmd-args/Coverage.h"
#include "Utils.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/Metadata.h"

#include <unordered_map>

#define DEBUG_TYPE "blocks-extracted"

STATISTIC(MergeFuncsCount, "# of performed functions merging");

static llvm::cl::opt<Coverage, false, CoverageParser> constMergefCoverage{
        "mergef-coverage",
        llvm::cl::desc("applies merge function obfuscation on <coverage> percentage of function in a module"),
        llvm::cl::value_desc("mergef-coverage"),
        llvm::cl::init(0.40),
        llvm::cl::Optional
};

llvm::PreservedAnalyses MergeFuncs::run(llvm::Module &M, llvm::ModuleAnalysisManager &) {
    bool modified = runOnModule(M);
    if (modified) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

bool MergeFuncs::runOnModule(llvm::Module &M) {
    std::vector<llvm::Function *> functionsToMerge;

    auto generator = GetRandomGenerator();
    std::uniform_real_distribution<std::float_t > uniformDist(0.0, 1.0);

    for (auto &F: M) {
        if (F.isVarArg() || F.isDeclaration() || F.isIntrinsic() || F.getReturnType()->isVoidTy()) {
            continue;
        }

        llvm::GlobalValue::LinkageTypes typ = F.getLinkage();
        if (typ == llvm::GlobalValue::LinkageTypes::InternalLinkage) {
            if (uniformDist(generator) > constMergefCoverage.getValue()) {
                continue;
            }
            functionsToMerge.push_back(&F);
        }
    }

    if (functionsToMerge.size() < 2) {
        return false;
    }

    mergeFuncs(M, functionsToMerge);
    MergeFuncsCount += functionsToMerge.size();
    return !functionsToMerge.empty();
}

void MergeFuncs::mergeFuncs(llvm::Module &M, std::vector<llvm::Function *> &funcs) {
    // FunctionInfo wraps some data that is accessed multiple times in a struct.
    struct FunctionInfo {
        // params are the params of the function.
        std::vector<llvm::Type *> params;
        // returnType is the return type of the function.
        llvm::Type *returnType = nullptr;
        // switchCase is the number under which the function will be accessible
        // in the mergedFunction.
        int64_t switchCase = -1; // will be set later on.
        // paramOffset is the offset at which the params of the function start in
        // the merged function.
        int64_t paramOffset = -1; // will be set later on.
    };

    // Collect basic info.
    std::unordered_map<llvm::Function *, FunctionInfo> infoMap;
    for (auto ptr: funcs) {
        infoMap[ptr] = FunctionInfo{
                .params = std::vector<llvm::Type *>(
                        ptr->getFunctionType()->params().begin(),
                        ptr->getFunctionType()->params().end()
                ),
                .returnType = ptr->getFunctionType()->getReturnType(),
        };
    }

    // collect return types and params.
    std::vector<llvm::Type *> params{LLVM_I32(M.getContext())};
    for (auto &[ptr, info]: infoMap) {
        info.paramOffset = params.size();
        params.insert(params.end(), info.params.begin(), info.params.end());
        params.push_back(llvm::PointerType::get(info.returnType, 0));
    }


    // create a new function.
    llvm::Function *mergedFunction = llvm::Function::Create(
            llvm::FunctionType::get(
                    llvm::Type::getVoidTy(M.getContext()),
                    params,
                    false
            ),
            llvm::Function::LinkageTypes::InternalLinkage,
            std::to_string(RandomInt64()),
            M
    );


    // Prepare the function with a switch statement and a default block.
    llvm::BasicBlock *entryBlock = llvm::BasicBlock::Create(mergedFunction->getContext(), "", mergedFunction);

    llvm::IRBuilder<> builder(entryBlock);

    // create switch for each function.
    llvm::SwitchInst *switchStmt = builder.CreateSwitch(mergedFunction->getArg(0), nullptr);

    // switch statement default block.
    llvm::BasicBlock *defaultBlock = llvm::BasicBlock::Create(mergedFunction->getContext(), "", mergedFunction);
    llvm::ReturnInst::Create(mergedFunction->getContext(), defaultBlock);
    switchStmt->setDefaultDest(defaultBlock);

    // function cloning and switch statement assigning.
    std::size_t beg = 1;
    int64_t switchCase = 0;
    llvm::BasicBlock *prev = defaultBlock;
    for (auto &[func, info]: infoMap) {
        info.switchCase = switchCase++;

        llvm::SmallVector<llvm::ReturnInst *> vec;
        llvm::ValueToValueMapTy vMap;

        // remap old function argument to new.
        std::size_t end = beg + info.params.size();
        std::size_t paramIdx = 0;
        while (beg < end) {
            llvm::Value *src = func->getArg(paramIdx);
            llvm::Value *dst = mergedFunction->getArg(beg);
            vMap[src] = dst;

            ++beg;
            ++paramIdx;
        }

        std::size_t returnArg = beg++; // skip the return.

        // clone blocks inside the new func
        llvm::CloneFunctionInto(
                mergedFunction,
                func,
                vMap,
                llvm::CloneFunctionChangeType::LocalChangesOnly,
                vec
        );

        // modify the return statement since we use a void return.
        for (auto ret: vec) {
            builder.SetInsertPoint(ret);
            builder.CreateStore(ret->getReturnValue(), mergedFunction->getArg(returnArg));
            builder.CreateRetVoid();
        }

        // remove the previously unused return statements.
        for (auto ret: vec) {
            ret->eraseFromParent();
        }

        // find the basic block denoting start of that function.
        auto curr = prev->getIterator();
        while (curr != mergedFunction->end()) {
            if (curr->hasNPredecessors(0)) {
                break;
            }
            ++curr;
        }

        switchStmt->addCase(LLVM_CONST_I32(mergedFunction->getContext(), info.switchCase), &*curr);
        prev = &*curr;
    }

    // since we move to a modified function remove all the attributes that were set
    // when calling the CloneFunctionInto function.
    for (int i = llvm::Attribute::FirstEnumAttr; i < llvm::Attribute::EndAttrKinds; i++) {
        auto kind = static_cast<llvm::Attribute::AttrKind>(i);
        mergedFunction->removeFnAttr(kind);
        mergedFunction->removeRetAttr(kind);
        for (auto &arg: mergedFunction->args()) {
            arg.removeAttr(kind);
        }
    }

    // for every use call the merged function.
    for (auto &[func, info]: infoMap) {
        // If the uses are only call instruction we can safely delete the function from the module.
        // If however there are also invoke instruction we can't delete the function from the module.
        // Since dealing with invoke instructions is a bit complicated than with plain call instructions.
        bool canDeleteFunc = true;
        for (auto &use: func->uses()) {
            if (auto *invoke = llvm::dyn_cast<llvm::InvokeInst>(use.getUser()); invoke) {
                canDeleteFunc = false;
                continue;
            }

            if (auto *call = llvm::dyn_cast<llvm::CallInst>(use.getUser()); call) {
                builder.SetInsertPoint(call);

                // return value.
                auto result = builder.CreateAlloca(info.returnType, nullptr);

                std::vector<llvm::Value *> args(call->args().begin(), call->args().end());
                std::vector<llvm::Value *> preArgs{LLVM_CONST_I32(mergedFunction->getContext(), info.switchCase)};
                std::vector<llvm::Value *> afterArgs{result};

                for (int i = 1 /* switch case param */; i < info.paramOffset; i++) {
                    preArgs.push_back(llvm::Constant::getNullValue(mergedFunction->getArg(i)->getType()));
                }
                for (int i = info.paramOffset + info.params.size() + 1 /*return param*/;
                     i < mergedFunction->arg_size(); i++) {
                    afterArgs.push_back(llvm::Constant::getNullValue(mergedFunction->getArg(i)->getType()));
                }

                args.insert(args.begin(), preArgs.begin(), preArgs.end());
                args.insert(args.end(), afterArgs.begin(), afterArgs.end());

                builder.CreateCall(mergedFunction, args);
                call->replaceAllUsesWith(builder.CreateLoad(result->getAllocatedType(), result));
                call->eraseFromParent();
            }
        }
        if (canDeleteFunc) {
            // do nothing for the deletion keep the old function.
        }
    }

}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getMergeFuncsPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "mergef",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, ModulePassManager &MPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "mergef") {
                                MPM.addPass(MergeFuncs());
                                return true;
                            }
                            return false;
                        });
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getMergeFuncsPluginInfo();
}