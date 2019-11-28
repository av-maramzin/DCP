cmake_minimum_required(VERSION 3.10)

# set the project name
project(DCP)

set(PROJECT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(ABSTRACT_LIBRARY_DIR ${PROJECT_DIR}/abstract)
set(PLAYGROUND_DIR ${PROJECT_DIR}/playground)

message(${PROJECT_DIR})
message(${ABSTRACT_LIBRARY_DIR})
message(${PLAYGROUND_DIR})


list(APPEND INCLUDE_DIRS ${ABSTRACT_LIBRARY_DIR}/include)

add_compile_options("-std=c++0x")

include_directories(${INCLUDE_DIRS})

add_subdirectory(abstract)
add_subdirectory(playground)
