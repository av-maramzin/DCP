cmake_minimum_required(VERSION 3.2)

project(playground)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../")

include(LLVMIRUtil)

add_subdirectory(array)
add_subdirectory(linked-list)



add_executable(array_abstract array/abstract/array.cpp)
add_executable(array_original array/original/array.c)

target_link_libraries(array_abstract abstract)

