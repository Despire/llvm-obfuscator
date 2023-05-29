${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libReachableIntegers.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBogusFlowOpaquePredicates.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBranchFunction.so \
    -passes=branchf -S ../../../../donut.ll -o ./donut_bf.ll

