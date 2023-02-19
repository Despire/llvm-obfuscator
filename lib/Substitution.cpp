//
// Created by Matus Mrekaj on 18/02/2023.
//

#include "cmd-args/Coverage.h"
#include "Substitution.h"

#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

static llvm::cl::opt<Coverage, false, CoverageParser> coverage{
        "coverage",
        llvm::cl::desc(""),
        llvm::cl::value_desc(""),
        llvm::cl::init(1.0),
        llvm::cl::Optional
};

llvm::PreservedAnalyses Substitution::run(llvm::Function &F, llvm::FunctionAnalysisManager &) {
    return llvm::PreservedAnalyses::all();
}

bool Substitution::runOnBasicBlock(llvm::BasicBlock &B) {
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

