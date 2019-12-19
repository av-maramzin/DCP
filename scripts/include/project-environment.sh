#!/bin/bash

# < project-environment.sh >
#
# This script is to be included into all project supporting scripts;
# This script sets all the necessary project environment, shell and function 
# variables for the rest of scripts in the set
#

error_exit() {
    echo "$1"
    exit 1
}

STATUS_MSG=""

# [1] check that script is being launched from the project root directory;
# stop and redirect the user to the right directory otherwise; 
STATUS_MSG="Checking script launch directory"
echo $STATUS_MSG
declare -a PROJECT_ROOT_SIGNS=("CMakeLists.txt" # DCP tool buildsystem generation CMake rules
                               "README.md" # GitHub's README file 
                               ".gitmodules") # Git repository stuff
ERROR_MSG_BASE="Error: the script cannot be launched from this directory! Use the root directory of the project instead."
for file in ${PROJECT_ROOT_SIGNS[@]}; do
    if [ ! -f ${file} ]; then
        ERROR_MSG="${ERROR_MSG_BASE} Could not find a file named ${file}, which is supposed to be in the project root directory."
        error_exit "${ERROR_MSG}"
    fi
done
STATUS_MSG="Script launch directory: OK"
echo $STATUS_MSG

# project directory layout information
PROJECT_ROOT_DIR="${PWD}" # project root directory
# project source directories and files - do not touch and delete automatically

# benchmarks
BENCHMARKS_DIR="${PROJECT_ROOT_DIR}/benchmarks"
OLDEN_BENCHMARKS_DIR="${BENCHMARKS_DIR}/olden"
OLDEN_HARNESS_DIR="${BENCHMARKS_DIR}/solden"

# toy examples
PLAYGROUND_DIR="${PROJECT_ROOT_DIR}/playground"

ABSTRACT_LIB_SOURCES_DIR="${PROJECT_ROOT_DIR}/abstract"
ABSTRACT_LIB_SOURCES_SRC_DIR="${ABSTRACT_LIB_SOURCES_DIR}/src"
ABSTRACT_LIB_SOURCES_INCLUDE_DIR="${ABSTRACT_LIB_SOURCES_DIR}/include"

SCRIPTS_DIR="${PROJECT_ROOT_DIR}/scripts"
DOCUMENTS_DIR="${PROJECT_ROOT_DIR}/doc"

# [2] perform a quick repository integrity check;
# stop and complain if some necessary repository pieces are missing; 
STATUS_MSG="Checking repository integrity"
echo $STATUS_MSG
declare -a PROJECT_SOURCE_DIRS=("${BENCHMARKS_DIR}"
                                "${OLDEN_BENCHMARKS_DIR}"
                                "${OLDEN_HARNESS_DIR}"
                                "${PLAYGROUND_DIR}"
                                "${ABSTRACT_LIB_SOURCES_DIR}"
                                "${ABSTRACT_LIB_SOURCES_SRC_DIR}"
                                "${ABSTRACT_LIB_SOURCES_INCLUDE_DIR}"
                                "${SCRIPTS_DIR}"
                                "${DOCUMENTS_DIR}")
ERROR_MSG_BASE="Error: the script cannot be launched from an incomplete repository!"
for dir in ${PROJECT_SOURCE_DIRS[@]}; do
    if [ ! -d ${dir} ]; then
        ERROR_MSG="${ERROR_MSG_BASE} Necessary ${dir} DCP project directory is missing!"
        error_exit "${ERROR_MSG}"
    fi
done
STATUS_MSG="Repository integrity: OK"
echo $STATUS_MSG

# project auto-generated build files, results, stuff to be cleaned and reobtained, etc.

PROJECT_BUILD_DIR="${PROJECT_ROOT_DIR}/build"
PLAYGROUND_BUILD_DIR="${PROJECT_BUILD_DIR}/playground"
