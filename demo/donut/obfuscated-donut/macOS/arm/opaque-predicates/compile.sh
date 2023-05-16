${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libSubstitution.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libReachableIntegers.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libBogusFlowOpaquePredicates.dylib \
    -passes=op -S ../../../../donut.ll -o ./donut_op.ll
