cmake_minimum_required(VERSION 3.10)

project(DCP)

set(DCP_PROJECT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(ABSTRACT_LIBRARY_DIR ${DCP_PROJECT_DIR}/abstract)
set(DCP_PLAYGROUND_DIR ${DCP_PROJECT_DIR}/playground)
set(BENCHMARKS_DIR ${DCP_PROJECT_DIR}/benchmarks)
set(DCP_TOOL_DIR ${DCP_PROJECT_DIR}/tool)
set(DCP_TOOL_SRC_DIR ${DCP_TOOL_DIR}/src)
set(DCP_TOOL_INCLUDE_DIR ${DCP_TOOL_DIR}/include)

message(${DCP_PROJECT_DIR})
message(${ABSTRACT_LIBRARY_DIR})
message(${DCP_PLAYGROUND_DIR})

list(APPEND INCLUDE_DIRS ${ABSTRACT_LIBRARY_DIR}/include)

include_directories(${INCLUDE_DIRS})

add_subdirectory(abstract)
#add_subdirectory(tool)
#add_subdirectory(playground)
add_subdirectory(benchmarks)
