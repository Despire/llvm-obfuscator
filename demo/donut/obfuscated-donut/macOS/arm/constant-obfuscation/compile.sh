${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libSubstitution.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libReachableIntegers.dylib \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libConstantObfuscation.dylib \
    -passes=cobfs -S ../../../../donut.ll -o ./donut_cobfs.ll

