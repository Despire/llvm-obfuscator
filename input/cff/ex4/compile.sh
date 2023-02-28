#/bin/bash
clang++ -std=c++17 -O0 -S -emit-llvm -Xclang -disable-O0-optnone ${input_path}.cpp -o ${output_path}/ex4.ll
${llvm_path}/bin/opt -load-pass-plugin ./cmake-build-debug/lib/libControlFlowFlattening.dylib -passes=cff -S ${output_path}/ex4.ll -o ${output_path}/cff.ll
#${llvm_path}/bin/opt -O3 -S ${output_path}/cff.ll -o ${output_path}/cff.ll

