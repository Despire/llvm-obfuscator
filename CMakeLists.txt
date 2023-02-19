cmake_minimum_required(VERSION 3.24)
project(llvm_obfuscator)

set(CMAKE_CXX_STANDARD 17)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif ()

# Set the directory for the LLVM instalation (crucial step for when using find_package)
set(LT_LLVM_INSTALL_DIR "/opt/homebrew/opt/llvm@15")

# check for llvm headers
set(LT_LLVM_INCLUDE_DIR "${LT_LLVM_INSTALL_DIR}/include/llvm")
if (NOT EXISTS "${LT_LLVM_INCLUDE_DIR}")
    message(FATAL_ERROR "LT_LLVM_INSTALL_DIR (${LT_LLVM_INCLUDE_DIR}) is invalid.")
endif ()

set(LT_VALID_INSTALLATION FALSE)

# Ubuntu and Darwin
if (EXISTS "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/LLVMConfig.cmake")
    set(LT_VALID_INSTALLATION TRUE)
endif ()

if (NOT ${LT_VALID_INSTALLATION})
    message(FATAL_ERROR "LLVM installation directory, (${LT_LLVM_INSTALL_DIR}), is invalid. Couldn't find LLVMConfig.cmake.")
endif ()

# Load LLVM config -> http://llvm.org/docs/CMake.html#embedding-llvm-in-your-project
list(APPEND CMAKE_PREFIX_PATH "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/")

find_package(LLVM 15 REQUIRED CONFIG)

if (NOT "15" VERSION_EQUAL "${LLVM_VERSION_MAJOR}")
    message(FATAL_ERROR "Found LLVM ${LLVM_VERSION_MAJOR}, but need LLVM 15")
endif ()

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LT_LLVM_INSTALL_DIR}")

message("LLVM STATUS:
    Definitions ${LLVM_DEFINITIONS}
    Includes    ${LLVM_INCLUDE_DIRS}
    Libraries   ${LLVM_LIBRARY_DIRS}
    Targets     ${LLVM_TARGETS_TO_BUILD}"
        )

include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -fdiagnostics-color=always")

# LLVM is built without RTTI
if (NOT LLVM_ENABLE_RTTI)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif ()

# Set the build directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")

add_subdirectory(lib)
