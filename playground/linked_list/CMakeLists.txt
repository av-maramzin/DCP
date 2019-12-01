
set(ABSTRACT_IMPL_DIR abstract)
set(ORIGINAL_IMPL_DIR original)

set(ABSTRACT_SOURCES ${ABSTRACT_IMPL_DIR}/linked_list.cpp)
set(ORIGINAL_SOURCES ${ORIGINAL_IMPL_DIR}/linked_list.c)

add_executable(linked_list_abstract ${ABSTRACT_SOURCES})
add_executable(linked_list_original ${ORIGINAL_SOURCES})

target_compile_options(linked_list_abstract PUBLIC "-std=c++0x")

#target_link_libraries(linked_list_abstract abstract)

# this property is required by LLVM IR parasitic targets
set_target_properties(linked_list_abstract PROPERTIES LINKER_LANGUAGE CXX)
set_target_properties(linked_list_original PROPERTIES LINKER_LANGUAGE C)

llvmir_attach_bc_target(linked_list_abstract_bc linked_list_abstract)
add_dependencies(linked_list_abstract_bc linked_list_abstract)

llvmir_attach_bc_target(linked_list_original_bc linked_list_original)
add_dependencies(linked_list_original_bc linked_list_original)

llvmir_attach_disassemble_target(linked_list_abstract_ll linked_list_abstract_bc)
add_dependencies(linked_list_abstract_ll linked_list_abstract_bc)

llvmir_attach_disassemble_target(linked_list_original_ll linked_list_original_bc)
add_dependencies(linked_list_original_ll linked_list_original_bc)
