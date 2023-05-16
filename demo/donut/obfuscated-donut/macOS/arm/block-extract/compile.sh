${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libBlockExtractor.dylib \
    -passes=bext -S ../../../../donut.ll -o ./donut_bext.ll
