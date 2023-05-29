${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libReachableIntegers.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libConstantObfuscation.so \
    -passes=cobfs -S ../../../../donut.ll -o ./donut_cobfs.ll

