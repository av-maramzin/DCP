# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aleksandr/Work/DCP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aleksandr/Work/DCP/build

# Include any dependencies generated for this target.
include benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/depend.make

# Include the progress variables for this target.
include benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/flags.make

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/flags.make
benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o: ../benchmarks/sodden/olden/treeadd/original/src/args.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/treeadd.dir/src/args.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/args.c

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/treeadd.dir/src/args.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/args.c > CMakeFiles/treeadd.dir/src/args.c.i

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/treeadd.dir/src/args.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/args.c -o CMakeFiles/treeadd.dir/src/args.c.s

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o.requires:

.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o.requires

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o.provides: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/build.make benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o.provides.build
.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o.provides

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o.provides.build: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o


benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/flags.make
benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o: ../benchmarks/sodden/olden/treeadd/original/src/node.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/treeadd.dir/src/node.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/node.c

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/treeadd.dir/src/node.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/node.c > CMakeFiles/treeadd.dir/src/node.c.i

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/treeadd.dir/src/node.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/node.c -o CMakeFiles/treeadd.dir/src/node.c.s

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o.requires:

.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o.requires

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o.provides: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/build.make benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o.provides.build
.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o.provides

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o.provides.build: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o


benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/flags.make
benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o: ../benchmarks/sodden/olden/treeadd/original/src/par-alloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/treeadd.dir/src/par-alloc.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/par-alloc.c

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/treeadd.dir/src/par-alloc.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/par-alloc.c > CMakeFiles/treeadd.dir/src/par-alloc.c.i

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/treeadd.dir/src/par-alloc.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original/src/par-alloc.c -o CMakeFiles/treeadd.dir/src/par-alloc.c.s

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o.requires:

.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o.requires

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o.provides: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/build.make benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o.provides.build
.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o.provides

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o.provides.build: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o


# Object files for target treeadd
treeadd_OBJECTS = \
"CMakeFiles/treeadd.dir/src/args.c.o" \
"CMakeFiles/treeadd.dir/src/node.c.o" \
"CMakeFiles/treeadd.dir/src/par-alloc.c.o"

# External object files for target treeadd
treeadd_EXTERNAL_OBJECTS =

benchmarks/sodden/olden/treeadd/original/treeadd: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o
benchmarks/sodden/olden/treeadd/original/treeadd: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o
benchmarks/sodden/olden/treeadd/original/treeadd: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o
benchmarks/sodden/olden/treeadd/original/treeadd: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/build.make
benchmarks/sodden/olden/treeadd/original/treeadd: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable treeadd"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/treeadd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/build: benchmarks/sodden/olden/treeadd/original/treeadd

.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/build

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/requires: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/args.c.o.requires
benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/requires: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/node.c.o.requires
benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/requires: benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/src/par-alloc.c.o.requires

.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/requires

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/clean:
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original && $(CMAKE_COMMAND) -P CMakeFiles/treeadd.dir/cmake_clean.cmake
.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/clean

benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/depend:
	cd /home/aleksandr/Work/DCP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aleksandr/Work/DCP /home/aleksandr/Work/DCP/benchmarks/sodden/olden/treeadd/original /home/aleksandr/Work/DCP/build /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/sodden/olden/treeadd/original/CMakeFiles/treeadd.dir/depend
