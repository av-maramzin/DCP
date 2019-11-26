#!/bin/bash

source $(dirname "$0")/../include/project-environment.sh

echo "< build-playground.sh script >"
echo "=> Building playground"

ERROR_MSG_BASE="build-playground.sh:"
if [ ! -d ${PROJECT_BUILD_DIR} ]; then
#    ERROR_MSG="${ERROR_MSG_BASE} warning: cannot find the topmost build directory!"
#    echo "${ERROR_MSG}"
    echo "mkdir ${PROJECT_BUILD_DIR}"
    mkdir ${PROJECT_BUILD_DIR}
fi

if [[ -e ${PLAYGROUND_BUILD_DIR} ]]; then
    rm -rf ${PLAYGROUND_BUILD_DIR}
fi
mkdir ${PLAYGROUND_BUILD_DIR}

C_FLAGS=""

(
cd ${PLAYGROUND_BUILD_DIR}
echo "=> CMake is generating playground build system"
CC=gcc CXX=g++ cmake \
    -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_C_FLAGS="${C_FLAGS}" \
    "${PLAYGROUND_DIR}"
echo "=> Building playground"
cmake --build .
)

echo "=> Playground build script finished!"
