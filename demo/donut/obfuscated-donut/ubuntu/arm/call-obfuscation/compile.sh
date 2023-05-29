${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libCallObfuscation.so \
    -passes=callobfs -S ../../../../donut.ll -o ./donut_callobfs.ll

