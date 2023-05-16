${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libCallObfuscation.dylib \
    -passes=callobfs -S ../../../../donut.ll -o ./donut_callobfs.ll

