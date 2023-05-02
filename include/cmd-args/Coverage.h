#ifndef LLVM_OBFUSCATOR_COVERAGE_H
#define LLVM_OBFUSCATOR_COVERAGE_H

#include "llvm/Support/CommandLine.h"

// Coverage is a command-line argument that states how many of the statements
// should be obfuscated, the value is a number between <0, 1> inclusive.
// To give an example if we have a coverage of 0.2 then 20% of the statements
// will be obfuscated.
// source: https://llvm.org/docs/CommandLine.html#extending-the-library
using Coverage = float;

struct CoverageParser : public llvm::cl::parser<Coverage> {
    explicit CoverageParser(llvm::cl::Option &O) : llvm::cl::parser<Coverage>(O) {}

    bool parse(llvm::cl::Option &O, llvm::StringRef ArgName, const llvm::StringRef &ArgValue, Coverage &Val);
};


#endif //LLVM_OBFUSCATOR_COVERAGE_H
