${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libControlFlowFlattening.so \
    -passes=cff -S ../../../../donut.ll -o ./donut_cff.ll

