cmake_minimum_required(VERSION 3.10)

project(DCP)

set(PROJECT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(ABSTRACT_LIBRARY_DIR ${PROJECT_DIR}/abstract)
set(PLAYGROUND_DIR ${PROJECT_DIR}/playground)
set(TOOL_DIR ${PROJECT_DIR}/tool)
set(TOOL_SRC_DIR ${TOOL_DIR}/src)
set(TOOL_INCLUDE_DIR ${TOOL_DIR}/include)

message(${PROJECT_DIR})
message(${ABSTRACT_LIBRARY_DIR})
message(${PLAYGROUND_DIR})

list(APPEND INCLUDE_DIRS ${ABSTRACT_LIBRARY_DIR}/include)

include_directories(${INCLUDE_DIRS})

add_subdirectory(abstract)
add_subdirectory(tool)
add_subdirectory(playground)
