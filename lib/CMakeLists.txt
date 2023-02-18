set(LLVM_OBFUSCATOR_PLUGINS Substitution)

set(Substitution_SOURCES Substitution.cpp)

foreach (plugin ${LLVM_OBFUSCATOR_PLUGINS})
    add_library(${plugin} SHARED ${${plugin}_SOURCES})
    target_include_directories(${plugin} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../include")
    target_link_libraries(${plugin} "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")
endforeach ()