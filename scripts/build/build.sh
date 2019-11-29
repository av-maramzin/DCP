#!/bin/bash

source $(dirname "$0")/../include/project-environment.sh

echo "< build.sh script >"
echo "=> Building project"

ERROR_MSG_BASE="build.sh:"
if [ -d ${PROJECT_BUILD_DIR} ]; then
#    ERROR_MSG="${ERROR_MSG_BASE} warning: cannot find the topmost build directory!"
#    echo "${ERROR_MSG}"
    rm -rf ${PROJECT_BUILD_DIR}
fi

echo "mkdir ${PROJECT_BUILD_DIR}"
mkdir ${PROJECT_BUILD_DIR}

C_FLAGS=""

(
INSTALL_PREFIX=${2:-../install/}
#C_FLAGS="-g -Wall -O2"
C_FLAGS="-Wall"
LINKER_FLAGS="-Wl,-L$(llvm-config --libdir) -Wl,-rpath=$(llvm-config --libdir)"
#LINKER_FLAGS="${LINKER_FLAGS} -lc++ -lc++abi" 

cd ${PROJECT_BUILD_DIR}
echo "=> CMake is generating playground build system"
CC=clang CXX=clang++ cmake \
    -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_C_FLAGS="${C_FLAGS}" \
    -DCMAKE_POLICY_DEFAULT_CMP0056=NEW \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=On \
    -DLLVM_DIR=$(llvm-config --prefix)/share/llvm/cmake/ \
    -DCMAKE_EXE_LINKER_FLAGS="${LINKER_FLAGS}" \
    -DCMAKE_SHARED_LINKER_FLAGS="${LINKER_FLAGS}" \
    -DCMAKE_MODULE_LINKER_FLAGS="${LINKER_FLAGS}" \
    -DCMAKE_INSTALL_PREFIX="${INSTALL_PREFIX}" \
    -DHARNESS_USE_LLVM=On \
    "${PROJECT_ROOT_DIR}"
echo "=> Building playground"
cmake --build .
)

echo "=> Build script finished!"
