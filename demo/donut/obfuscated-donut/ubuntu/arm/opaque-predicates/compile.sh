${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libReachableIntegers.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBogusFlowOpaquePredicates.dylib \
    -passes=op -S ../../../../donut.ll -o ./donut_op.ll
