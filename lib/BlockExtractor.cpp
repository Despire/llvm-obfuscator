#include "Utils.h"
#include "BlockExtractor.h"
#include "cmd-args/Coverage.h"

#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Transforms/Utils/CodeExtractor.h"
#include "llvm/ADT/Statistic.h"

#define DEBUG_TYPE "blocks-extracted"

STATISTIC(BlocksExtractedCount, "# of performed block extractions");

// splitLimit is the size after which a basic block will be split into two halves.
constexpr int32_t splitLimit = 6;
// extractLimit is the size after which a basic block will be considered to be extracted in a function.
constexpr int32_t extractLimit = 2;

static llvm::cl::opt<Coverage, false, CoverageParser> coverage{
    "coverage",
    llvm::cl::desc("applies block extraction on <coverage> percentage of the basic blocks"),
    llvm::cl::value_desc("coverage"),
    llvm::cl::init(0.35),
    llvm::cl::Optional
};

llvm::PreservedAnalyses BlockExtractor::run(llvm::Module &M, llvm::ModuleAnalysisManager &) {
    bool modified = runOnModule(M);
    if (modified) {
        return llvm::PreservedAnalyses::none();
    }
    return llvm::PreservedAnalyses::all();
}

bool BlockExtractor::runOnModule(llvm::Module &M) {
    bool modified = false;
    std::vector<llvm::Function *> funcs;

    // collect first so we don't run into an endless loop.
    for (auto &F: M) {
        funcs.push_back(&F);
    }

    for (auto &F: funcs) {
        if (F->isDeclaration()) {
            continue;
        }

        if (handleFunction(*F)) {
            modified = true;
            BlocksExtractedCount++;
        }
    }
    return modified;
}

bool BlockExtractor::handleFunction(llvm::Function &F) {
    std::vector<llvm::BasicBlock *> blocksToExtract;

    auto generator = GetRandomGenerator();
    std::uniform_real_distribution<std::float_t> uniformDist(0.0, 1.0);

    for (auto &BB: F) {
        if (BB.size() > extractLimit) {
            std::vector<llvm::BasicBlock *> bbs{&BB};
            if (llvm::CodeExtractor{bbs}.isEligible()) {
                if (uniformDist(generator) > coverage.getValue()) {
                    continue;
                }
                blocksToExtract.push_back(&BB);
            }
        }
    }

    llvm::CodeExtractorAnalysisCache CEAC(F);
    std::vector<llvm::Function*> extractedFuncs;

    for (auto BB: blocksToExtract) {
        std::vector<llvm::BasicBlock *> bbs{BB};
        llvm::CodeExtractor extractor(bbs);
        llvm::Function *extractedBlockFunc = extractor.extractCodeRegion(CEAC);
        extractedBlockFunc->addFnAttr(llvm::Attribute::NoInline);
        extractedFuncs.push_back(extractedBlockFunc);
    }

    // since the blocks were okay for extracting in the first place
    // we don't need to check for the condition after splitting the block.
    for (auto *extractedFunc: extractedFuncs) {
        auto *block = &*(++extractedFunc->begin());
        if (block->size() >= splitLimit) {
            auto beg = block->getFirstInsertionPt();
            if (std::distance(beg, block->end()) >= splitLimit) {
                auto iter = RandomElement(beg, block->end());
                std::vector<llvm::BasicBlock*> bbs{block->splitBasicBlock(iter)};
                llvm::CodeExtractor extractor(bbs);
                llvm::Function* extractedBlockFunc = extractor.extractCodeRegion(CEAC);
                extractedBlockFunc->addFnAttr(llvm::Attribute::NoInline);
            }
        }
    }

    return !blocksToExtract.empty();
}

//------------------------------------------------------
//               Registration of the Plugin
//------------------------------------------------------
llvm::PassPluginLibraryInfo getBlockExtractorPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION,
            "bext",
            LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                using namespace llvm;
                PB.registerPipelineParsingCallback(
                        [&](StringRef Name, ModulePassManager &MPM, ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "bext") {
                                MPM.addPass(BlockExtractor());
                                return true;
                            }
                            return false;
                        });
            }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getBlockExtractorPluginInfo();
}