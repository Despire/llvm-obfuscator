${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBlockExtractor.so \
    -passes=bext -S ../../../../donut.ll -o ./donut_bext.ll
