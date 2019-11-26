#!/bin/bash

source $(dirname "$0")/include/project-environment.sh

echo "=> clean-project.sh script"
echo "=> cleaning up all builds!"

if [[ -e ${PROJECT_BUILD_DIR} ]]; then
    rm -rf ${PROJECT_BUILD_DIR}
    echo "Deleted ${PROJECT_BUILD_DIR}"
fi

echo "=> cleaning clean-project.sh script finished!"
