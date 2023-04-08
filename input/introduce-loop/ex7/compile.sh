#/bin/bash
clang++ -std=c++17 -O1 -S -emit-llvm -Xclang -disable-O0-optnone ${input_path}.cpp -o ${output_path}/ex7.ll
${llvm_path}/bin/opt -load-pass-plugin ./cmake-build-debug/lib/libSubstitution.dylib -load-pass-plugin ./cmake-build-debug/lib/libReachableIntegers.dylib -load-pass-plugin ./cmake-build-debug/lib/libBogusFlowOpaquePredicates.dylib -load-pass-plugin ./cmake-build-debug/lib/libBogusFlowIntroduceLoop.dylib -passes=floop -S ${output_path}/ex7.ll -o ${output_path}/loop.ll


