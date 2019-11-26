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
cd ${PROJECT_BUILD_DIR}
echo "=> CMake is generating playground build system"
CC=gcc CXX=g++ cmake \
    -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_C_FLAGS="${C_FLAGS}" \
    "${PROJECT_ROOT_DIR}"
echo "=> Building playground"
cmake --build .
)

echo "=> Build script finished!"
