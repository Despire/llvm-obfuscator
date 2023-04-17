#/bin/bash
clang++ -std=c++17 -O1 -S -emit-llvm -Xclang -disable-O0-optnone ${input_path}.cpp -o ${output_path}/ex5.ll
${llvm_path}/bin/opt -load-pass-plugin ./cmake-build-debug/lib/libSubstitution.dylib -load-pass-plugin ./cmake-build-debug/lib/libReachableIntegers.dylib -load-pass-plugin ./cmake-build-debug/lib/libConstantObfuscation.dylib -passes=cobfs -S ${output_path}/ex5.ll -o ${output_path}/cobfs.ll

# link
${llvm_linker} ${output_path}/ex5.ll -o ${output_path}/ex5.s
${llvm_linker} ${output_path}/cobfs.ll -o ${output_path}/cobfs.s

# create binary.
clang++ ${output_path}/ex5.s -o ${output_path}/ex5.out
clang++ ${output_path}/cobfs.s -o ${output_path}/cobfs.out

# remove the .s files
rm ${output_path}/ex5.s
rm ${output_path}/cobfs.s