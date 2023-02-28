set(LLVM_OBFUSCATOR_PLUGINS Substitution ControlFlowFlattening)

set(Substitution_SOURCES Substitution.cpp cmd-args/Coverage.cpp)
set(ControlFlowFlattening_SOURCES ControlFlowFlattening.cpp cmd-args/Coverage.cpp)

foreach (plugin ${LLVM_OBFUSCATOR_PLUGINS})
    add_library(${plugin} SHARED ${${plugin}_SOURCES})
    target_include_directories(${plugin} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../include")
    target_link_libraries(${plugin} "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")
endforeach ()