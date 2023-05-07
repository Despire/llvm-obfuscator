set(LLVM_OBFUSCATOR_PLUGINS
        Substitution
        ControlFlowFlattening
        BogusFlowOpaquePredicates
        ReachableIntegers
        BogusFlowJumpIntoLoop
        StringObfuscation
        BogusFlowIntroduceLoop
        BranchFunction
        ConstantObfuscation
        CallObfuscation
        BlockExtractor
        MergeFuncs
)

set(Substitution_SOURCES Substitution.cpp cmd-args/Coverage.cpp)
set(ControlFlowFlattening_SOURCES ControlFlowFlattening.cpp)
set(BogusFlowOpaquePredicates_SOURCES OpaquePredicates.cpp)
set(BogusFlowJumpIntoLoop_SOURCES JumpIntoLoop.cpp)
set(ReachableIntegers_SOURCES ReachableIntegersAnalysis.cpp)
set(StringObfuscation_SOURCES StringObfuscation.cpp)
set(BogusFlowIntroduceLoop_SOURCES BogusFlowIntroduceLoop.cpp)
set(BranchFunction_SOURCES BranchFunction.cpp)
set(ConstantObfuscation_SOURCES ConstantObfuscation.cpp)
set(CallObfuscation_SOURCES CallObfuscation.cpp)
set(BlockExtractor_SOURCES BlockExtractor.cpp cmd-args/Coverage.cpp)
set(MergeFuncs_SOURCES MergeFuncs.cpp cmd-args/Coverage.cpp)

foreach (plugin ${LLVM_OBFUSCATOR_PLUGINS})
    add_library(${plugin} SHARED ${${plugin}_SOURCES})
    target_include_directories(${plugin} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../include")
    target_link_libraries(${plugin} "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")
endforeach ()