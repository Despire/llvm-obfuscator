${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -passes=substitution -S ../../../../donut.ll -o ./donut_substitution.ll

