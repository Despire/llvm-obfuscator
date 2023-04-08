set(LLVM_OBFUSCATOR_PLUGINS
        Substitution
        ControlFlowFlattening
        BogusFlowOpaquePredicates
        ReachableIntegers
        BogusFlowJumpIntoLoop
        StringObfuscation
        BogusFlowIntroduceLoop
)

set(Substitution_SOURCES Substitution.cpp cmd-args/Coverage.cpp)
set(ControlFlowFlattening_SOURCES ControlFlowFlattening.cpp)
set(BogusFlowOpaquePredicates_SOURCES OpaquePredicates.cpp)
set(BogusFlowJumpIntoLoop_SOURCES JumpIntoLoop.cpp)
set(ReachableIntegers_SOURCES ReachableIntegersAnalysis.cpp)
set(StringObfuscation_SOURCES StringObfuscation.cpp)
set(BogusFlowIntroduceLoop_SOURCES BogusFlowIntroduceLoop.cpp)

foreach (plugin ${LLVM_OBFUSCATOR_PLUGINS})
    add_library(${plugin} SHARED ${${plugin}_SOURCES})
    target_include_directories(${plugin} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../include")
    target_link_libraries(${plugin} "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")
endforeach ()