${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.dylib \
    -passes=substitution -S ../../../../donut.ll -o ./donut_substitution.ll

