#/bin/bash
clang++ -std=c++17 -O1 -S -emit-llvm -Xclang -disable-O0-optnone ${input_path}.cpp -o ${output_path}/ex9.ll
${llvm_path}/bin/opt -load-pass-plugin ./cmake-build-debug/lib/libSubstitution.dylib -load-pass-plugin ./cmake-build-debug/lib/libReachableIntegers.dylib -load-pass-plugin ./cmake-build-debug/lib/libBogusFlowOpaquePredicates.dylib -load-pass-plugin ./cmake-build-debug/lib/libBogusFlowJumpIntoLoop.dylib -passes=jmp -S ${output_path}/ex9.ll -o ${output_path}/jmp.ll

