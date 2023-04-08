#/bin/bash
clang++ -std=c++17 -O2 -S -emit-llvm -Xclang -disable-O0-optnone ${input_path}.cpp -o ${output_path}/ex5.ll
${llvm_path}/bin/opt -load-pass-plugin ./cmake-build-debug/lib/libSubstitution.dylib -load-pass-plugin ./cmake-build-debug/lib/libReachableIntegers.dylib -load-pass-plugin ./cmake-build-debug/lib/libBogusFlowOpaquePredicates.dylib -load-pass-plugin ./cmake-build-debug/lib/libBogusFlowIntroduceLoop.dylib -passes=floop -S ${output_path}/ex5.ll -o ${output_path}/loop.ll




# link
${llvm_linker} ${output_path}/ex5.ll -o ${output_path}/ex5.s
${llvm_linker} ${output_path}/loop.ll -o ${output_path}/loop.s

# create binary.
clang++ ${output_path}/ex5.s -o ${output_path}/ex5.out
clang++ ${output_path}/loop.s -o ${output_path}/loop.out

# remove the .s files
rm ${output_path}/ex5.s
rm ${output_path}/loop.s