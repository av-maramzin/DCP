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
include benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/depend.make

# Include the progress variables for this target.
include benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/flags.make

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/flags.make
benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o: ../benchmarks/sodden/olden/tsp/original/src/args.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tsp.dir/src/args.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/args.c

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tsp.dir/src/args.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/args.c > CMakeFiles/tsp.dir/src/args.c.i

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tsp.dir/src/args.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/args.c -o CMakeFiles/tsp.dir/src/args.c.s

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o.requires:

.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o.requires

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o.provides: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/build.make benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o.provides.build
.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o.provides

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o.provides.build: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o


benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/flags.make
benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o: ../benchmarks/sodden/olden/tsp/original/src/build.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tsp.dir/src/build.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/build.c

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tsp.dir/src/build.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/build.c > CMakeFiles/tsp.dir/src/build.c.i

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tsp.dir/src/build.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/build.c -o CMakeFiles/tsp.dir/src/build.c.s

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o.requires:

.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o.requires

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o.provides: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/build.make benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o.provides.build
.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o.provides

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o.provides.build: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o


benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/flags.make
benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o: ../benchmarks/sodden/olden/tsp/original/src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tsp.dir/src/main.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/main.c

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tsp.dir/src/main.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/main.c > CMakeFiles/tsp.dir/src/main.c.i

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tsp.dir/src/main.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/main.c -o CMakeFiles/tsp.dir/src/main.c.s

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o.requires:

.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o.requires

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o.provides: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/build.make benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o.provides.build
.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o.provides

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o.provides.build: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o


benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/flags.make
benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o: ../benchmarks/sodden/olden/tsp/original/src/tsp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tsp.dir/src/tsp.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/tsp.c

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tsp.dir/src/tsp.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/tsp.c > CMakeFiles/tsp.dir/src/tsp.c.i

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tsp.dir/src/tsp.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original/src/tsp.c -o CMakeFiles/tsp.dir/src/tsp.c.s

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o.requires:

.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o.requires

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o.provides: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/build.make benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o.provides.build
.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o.provides

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o.provides.build: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o


# Object files for target tsp
tsp_OBJECTS = \
"CMakeFiles/tsp.dir/src/args.c.o" \
"CMakeFiles/tsp.dir/src/build.c.o" \
"CMakeFiles/tsp.dir/src/main.c.o" \
"CMakeFiles/tsp.dir/src/tsp.c.o"

# External object files for target tsp
tsp_EXTERNAL_OBJECTS =

benchmarks/sodden/olden/tsp/original/tsp: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o
benchmarks/sodden/olden/tsp/original/tsp: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o
benchmarks/sodden/olden/tsp/original/tsp: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o
benchmarks/sodden/olden/tsp/original/tsp: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o
benchmarks/sodden/olden/tsp/original/tsp: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/build.make
benchmarks/sodden/olden/tsp/original/tsp: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable tsp"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tsp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/build: benchmarks/sodden/olden/tsp/original/tsp

.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/build

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/requires: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/args.c.o.requires
benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/requires: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/build.c.o.requires
benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/requires: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/main.c.o.requires
benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/requires: benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/src/tsp.c.o.requires

.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/requires

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/clean:
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original && $(CMAKE_COMMAND) -P CMakeFiles/tsp.dir/cmake_clean.cmake
.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/clean

benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/depend:
	cd /home/aleksandr/Work/DCP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aleksandr/Work/DCP /home/aleksandr/Work/DCP/benchmarks/sodden/olden/tsp/original /home/aleksandr/Work/DCP/build /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/sodden/olden/tsp/original/CMakeFiles/tsp.dir/depend

