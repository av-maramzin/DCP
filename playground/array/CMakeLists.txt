

set(ABSTRACT_IMPL_DIR abstract)
set(ORIGINAL_IMPL_DIR original)

set(ABSTRACT_SOURCES ${ABSTRACT_IMPL_DIR}/array.cpp)
set(ORIGINAL_SOURCES ${ORIGINAL_IMPL_DIR}/array.c)

add_executable(array_abstract ${ABSTRACT_SOURCES})
add_executable(array_original ${ORIGINAL_SOURCES})

target_link_libraries(array_abstract abstract)

