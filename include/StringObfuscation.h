#ifndef LLVM_OBFUSCATOR_STRINGOBFUSCATION_H
#define LLVM_OBFUSCATOR_STRINGOBFUSCATION_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct GlobalStringData {
    std::vector<int32_t> next;
    std::vector<char> out;
    std::string pattern;
    llvm::GlobalVariable *ptr;
};

struct StringObfuscation : public llvm::PassInfoMixin<StringObfuscation> {
    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &);
    bool runOnModule(llvm::Module &M);
    bool createDecodeFunc(llvm::Module &M, std::string &decodeFunc);
    void createCtor(llvm::Module &M, std::vector<GlobalStringData> &strings, const std::string &decodeFunc);
};

#endif //LLVM_OBFUSCATOR_STRINGOBFUSCATION_H
