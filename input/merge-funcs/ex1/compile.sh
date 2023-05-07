#/bin/bash
clang++ -std=c++17 -O1 -S -emit-llvm -Xclang -disable-O0-optnone ${input_path}.cpp -o ${output_path}/ex1.ll
${llvm_path}/bin/opt -load-pass-plugin ./cmake-build-debug/lib/libMergeFuncs.dylib -passes=mergef -S ${output_path}/ex1.ll -o ${output_path}/mergef.ll
