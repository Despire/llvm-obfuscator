${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libStringObfuscation.so \
    -passes=strobfs -S ../../../../donut.ll -o ./donut_strobfs.ll
