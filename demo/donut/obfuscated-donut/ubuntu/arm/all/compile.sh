# first perform control flow obfuscation techniques.
${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libReachableIntegers.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBogusFlowOpaquePredicates.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBogusFlowJumpIntoLoop.so \
    -passes=jmp -S ../../../../donut.ll -o ./donut_jmp.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libReachableIntegers.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBogusFlowOpaquePredicates.so \
    -passes=op -S ./donut_jmp.ll -o ./donut_op.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libReachableIntegers.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBogusFlowOpaquePredicates.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBogusFlowIntroduceLoop.so \
    -passes=floop -S ./donut_op.ll -o ./donut_loop.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBlockExtractor.so \
    -passes=bext -S ./donut_loop.ll -o ./donut_bext.ll

# Function obfuscation
${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libCallObfuscation.so \
    -passes=callobfs -S ./donut_bext.ll -o ./donut_callobfs.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libMergeFuncs.so \
    -passes=mergef -S ./donut_callobfs.ll -o ./donut_merge_funcs.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libControlFlowFlattening.so \
    -passes=cff -S ./donut_merge_funcs.ll -o ./donut_cff.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libReachableIntegers.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBogusFlowOpaquePredicates.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libBranchFunction.so \
    -passes=branchf -S ./donut_cff.ll -o ./donut_bf.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libStringObfuscation.so \
    -passes=strobfs -S ./donut_bf.ll -o ./donut_strobfs.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -passes=substitution -S ./donut_strobfs.ll -o ./donut_substitution.ll

${llvm_path}/bin/opt \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libSubstitution.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libReachableIntegers.so \
    -load-pass-plugin ../../../../obfuscation-libs/ubuntu/arm/debug/libConstantObfuscation.so \
    -passes=cobfs -S ./donut_substitution.ll -o ./donut_cobfs.ll



rm ./donut_jmp.ll
rm ./donut_op.ll
rm ./donut_loop.ll
rm ./donut_cff.ll
rm ./donut_bext.ll
rm ./donut_bf.ll
rm ./donut_strobfs.ll
rm ./donut_callobfs.ll
rm ./donut_substitution.ll
rm ./donut_merge_funcs.ll

mv ./donut_cobfs.ll ./donut_all.ll



