cmake_minimum_required(VERSION 3.2)

project(tool)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} -g -O0")

find_package(LLVM REQUIRED CONFIG)

if(${LLVM_FOUND})
    message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
    message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
else()
    message(FATAL_ERROR "Could not find LLVM")
endif()

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

file(GLOB TOOL_SOURCES src/*.cpp)

add_library(tool MODULE ${TOOL_SOURCES})

llvm_map_components_to_libnames(llvm_libs support core passes)

target_include_directories(tool PUBLIC "include")

target_link_libraries(tool ${llvm_libs})

install(TARGETS tool DESTINATION lib)
