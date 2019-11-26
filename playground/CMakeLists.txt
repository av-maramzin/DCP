cmake_minimum_required(VERSION 3.2)

project(playground)

add_executable(array_abstract array/abstract/array.cpp)
add_executable(array_original array/original/array.c)

target_link_libraries(array_abstract abstract)
