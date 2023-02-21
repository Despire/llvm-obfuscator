#/bin/bash

input_path=./input/and/ex1/ex1
output_path=./output/and/ex1

# create ll output.
clang++ -std=c++17 -O1 -S -emit-llvm -Xclang -disable-O0-optnone ${input_path}.cpp -o ${output_path}/ex1.ll

# used the dynamic library to obfusacte the original output.
llvm_path=/opt/homebrew/Cellar/llvm/15.0.7_1

${llvm_path}/bin/opt -load-pass-plugin ./cmake-build-debug/lib/libSubstitution.dylib -passes=substitution -S ${output_path}/ex1.ll -o ${output_path}/substitution.ll
