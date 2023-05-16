${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libStringObfuscation.dylib \
    -passes=strobfs -S ../../../../donut.ll -o ./donut_strobfs.ll
