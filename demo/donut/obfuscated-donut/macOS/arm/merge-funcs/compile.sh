${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/macOS/arm/debug/libMergeFuncs.dylib \
    -passes=mergef -S ../../../../donut.ll -o ./donut_merge_funcs.ll
