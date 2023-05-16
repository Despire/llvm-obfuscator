${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libControlFlowFlattening.dylib \
    -passes=cff -S ../../../../donut.ll -o ./donut_cff.ll

