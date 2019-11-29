
set(ABSTRACT_IMPL_DIR abstract)
set(ORIGINAL_IMPL_DIR original)

set(ABSTRACT_SOURCES ${ABSTRACT_IMPL_DIR}/array.cpp)
set(ORIGINAL_SOURCES ${ORIGINAL_IMPL_DIR}/array.c)

add_executable(array_abstract ${ABSTRACT_SOURCES})
add_executable(array_original ${ORIGINAL_SOURCES})

target_compile_options(array_abstract PUBLIC "-std=c++0x")

#target_link_libraries(array_abstract abstract)

# this property is required by LLVM IR parasitic targets
set_target_properties(array_abstract array_original 
    PROPERTIES LINKER_LANGUAGE CXX 
)

set_target_properties(array_original 
    PROPERTIES LINKER_LANGUAGE C 
)

llvmir_attach_bc_target(array_abstract_bc array_abstract)
add_dependencies(array_abstract_bc array_abstract)

llvmir_attach_bc_target(array_original_bc array_original)
add_dependencies(array_original_bc array_original)

llvmir_attach_disassemble_target(array_abstract_ll array_abstract_bc)
add_dependencies(array_abstract_ll array_abstract_bc)

llvmir_attach_disassemble_target(array_original_ll array_original_bc)
add_dependencies(array_original_ll array_original_bc)
