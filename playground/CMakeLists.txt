cmake_minimum_required(VERSION 3.2)

project(playground)

message(${CMAKE_CURRENT_SOURCE_DIR})

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/llvm-ir-cmake-utils/cmake")

message(${CMAKE_MODULE_PATH})

include(LLVMIRUtil)

add_subdirectory(array)
#add_subdirectory(linked_list)
