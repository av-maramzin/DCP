
set(ABSTRACT_IMPL_DIR abstract)
set(ORIGINAL_IMPL_DIR original)

set(ABSTRACT_SOURCES ${ABSTRACT_IMPL_DIR}/std_vector.cpp)
set(ORIGINAL_SOURCES ${ORIGINAL_IMPL_DIR}/std_vector.cpp)

add_executable(std_vector_abstract ${ABSTRACT_SOURCES})
add_executable(std_vector_original ${ORIGINAL_SOURCES})

target_compile_options(std_vector_abstract PUBLIC "-std=c++0x")
target_compile_options(std_vector_original PUBLIC "-std=c++0x")

#target_link_libraries(std_vector_abstract abstract)

# this property is required by LLVM IR parasitic targets
set_target_properties(std_vector_abstract std_vector_original 
    PROPERTIES LINKER_LANGUAGE CXX 
)

set_target_properties(std_vector_original 
    PROPERTIES LINKER_LANGUAGE CXX 
)

llvmir_attach_bc_target(std_vector_abstract_bc std_vector_abstract)
add_dependencies(std_vector_abstract_bc std_vector_abstract)

llvmir_attach_bc_target(std_vector_original_bc std_vector_original)
add_dependencies(std_vector_original_bc std_vector_original)

llvmir_attach_disassemble_target(std_vector_abstract_ll std_vector_abstract_bc)
add_dependencies(std_vector_abstract_ll std_vector_abstract_bc)

llvmir_attach_disassemble_target(std_vector_original_ll std_vector_original_bc)
add_dependencies(std_vector_original_ll std_vector_original_bc)
