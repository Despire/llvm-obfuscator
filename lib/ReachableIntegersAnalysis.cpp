#include <vector>

#include "ReachableIntegersAnalysis.h"

#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

// Inspired by https://github.com/banach-space/llvm-tutor/blob/main/lib/RIV.cpp
ReachableIntegers::Result ReachableIntegers::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
    auto &tree = FAM.getResult<llvm::DominatorTreeAnalysis>(F);

    ReachableIntegers::Result blockDefinitions;
    for (auto &BB: F) {
        auto &list = blockDefinitions[&BB];

        for (auto &I: BB) {
            if (I.getType()->isIntegerTy()) {
                list.insert(&I);
            }
        }
    }

    ReachableIntegers::Result result;

    // for the entry block of the function also take into account
    // global variables and function arguments if any.
    auto &entryList = result[&F.getEntryBlock()];

    for (auto &Arg: F.args()) {
        if (Arg.getType()->isIntegerTy()) {
            entryList.insert(&Arg);
        }
    }

    for (auto &Global: F.getParent()->getGlobalList()) {
        if (Global.getValueType()->isIntegerTy()) {
            entryList.insert(&Global);
        }
    }

    // travers the Control flow graph from root.
    std::vector<llvm::DomTreeNodeBase<llvm::BasicBlock> *> queue;
    queue.push_back(tree.getRootNode());

    while (!queue.empty()) {
        auto *parent = queue.back();
        queue.pop_back();

        // retrieve definitions inside the block.
        auto parentBlockList = blockDefinitions[parent->getBlock()];
        // retrieve already present set of reachable integers for the parent.
        auto parentList = result[parent->getBlock()];

        for (auto &child: *parent) {
            queue.push_back(child);
            result[child->getBlock()].insert(parentBlockList.begin(), parentBlockList.end());
            result[child->getBlock()].insert(parentList.begin(), parentList.end());
        }
    }

    return result;
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::AnalysisKey ReachableIntegers::Key;

llvm::PassPluginLibraryInfo getReachableIntegersAnalysisPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "ria",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerAnalysisRegistrationCallback(
                        [](FunctionAnalysisManager &FAM) {
                            FAM.registerPass([&] {
                                return ReachableIntegers();
                            });
                        }
                );
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getReachableIntegersAnalysisPluginInfo();
}