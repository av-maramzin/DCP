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
C_FLAGS="-Wall -g"
CXX_FLAGS="-Wall -g -fopenmp -std=c++11"
#C_FLAGS="-Wall"
#LINKER_FLAGS="-Wl,-L$(llvm-config --libdir) -Wl,-rpath=$(llvm-config --libdir)"
LINKER_FLAGS="-Wl"
#LINKER_FLAGS="${LINKER_FLAGS} -lc++ -lc++abi" 

BMK_CONFIG_FILE="${OLDEN_HARNESS_DIR}/config/suite_all.txt"
BMK_CLASS="S"

cd ${PROJECT_BUILD_DIR}
echo "=> CMake is generating playground build system"

#-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \

CC=gcc CXX=g++ cmake \
    -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_C_FLAGS="${C_FLAGS}" \
    -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
    -DCMAKE_CXX_FLAGS="${CXX_FLAGS}" \
    -DCMAKE_POLICY_DEFAULT_CMP0056=NEW \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=On \
    -DCMAKE_INSTALL_PREFIX="${INSTALL_PREFIX}" \
    -DHARNESS_USE_LLVM=Off \
    -DHARNESS_BMK_CONFIG_FILE=${BMK_CONFIG_FILE} \
    -DBMK_CLASS=${BMK_CLASS} \
    "${PROJECT_ROOT_DIR}"
echo "=> Building playground"
cmake --build .

    #-DLLVM_DIR=$(llvm-config --prefix)/share/llvm/cmake/ \
    #-DCMAKE_EXE_LINKER_FLAGS="${LINKER_FLAGS}" \
    #-DCMAKE_SHARED_LINKER_FLAGS="${LINKER_FLAGS}" \
    #-DCMAKE_MODULE_LINKER_FLAGS="${LINKER_FLAGS}" \
)

echo "=> Build script finished!"
