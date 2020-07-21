# Install script for directory: /home/aleksandr/Work/DCP/benchmarks/sodden

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aleksandr/Work/DCP/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY MESSAGE_LAZY FILES "/home/aleksandr/Work/DCP/benchmarks/sodden/config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/scripts" TYPE DIRECTORY MESSAGE_LAZY FILES "/home/aleksandr/Work/DCP/benchmarks/sodden/utils/scripts/install_tree/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/preamble/" TYPE DIRECTORY MESSAGE_LAZY FILES "/home/aleksandr/Work/DCP/build/benchmarks/sodden/preamble/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/bh/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/bisort/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/em3d/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/health/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/mst/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/perimeter/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/power/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/cmake_install.cmake")
  include("/home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/cmake_install.cmake")

endif()

