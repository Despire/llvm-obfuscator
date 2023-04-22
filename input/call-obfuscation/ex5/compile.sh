#/bin/bash
clang++ -std=c++17 -O1 -S -emit-llvm -Xclang -disable-O0-optnone ${input_path}.cpp -o ${output_path}/ex5.ll
${llvm_path}/bin/opt -load-pass-plugin ./cmake-build-debug/lib/libCallObfuscation.dylib -passes=callobfs -S ${output_path}/ex5.ll -o ${output_path}/callobfs.ll



# link
${llvm_linker} ${output_path}/ex5.ll -o ${output_path}/ex5.s
${llvm_linker} ${output_path}/callobfs.ll -o ${output_path}/callobfs.s

# create binary.
clang++ ${output_path}/ex5.s -o ${output_path}/ex5.out
clang++ ${output_path}/callobfs.s -o ${output_path}/callobfs.out

# remove the .s files
rm ${output_path}/ex5.s
rm ${output_path}/callobfs.s