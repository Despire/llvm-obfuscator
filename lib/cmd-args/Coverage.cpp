//
// Created by Matus Mrekaj on 18/02/2023.
//

#include "cmd-args/Coverage.h"

bool CoverageParser::parse(llvm::cl::Option &O, llvm::StringRef ArgName, const llvm::StringRef &ArgValue, Coverage &Val) {
    auto ArgStart = ArgValue.str();
    char *End;

    Val = (Coverage)std::strtof(ArgStart.c_str(), &End);

    if (End == ArgStart.c_str()) {
        return O.error(ArgName + " value: '" + ArgValue + "' is not a float");
    }

    if (Val < 0.0 || Val > 1.0) {
        return O.error(ArgValue + " is not in interval <0, 1> (inclusive>");
    }

    return false;
}