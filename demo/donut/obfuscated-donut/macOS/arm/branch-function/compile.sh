${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libSubstitution.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libReachableIntegers.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libBogusFlowOpaquePredicates.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libBranchFunction.dylib \
    -passes=branchf -S ../../../../donut.ll -o ./donut_bf.ll

