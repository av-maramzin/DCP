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
include benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/depend.make

# Include the progress variables for this target.
include benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/flags.make

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/flags.make
benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o: ../benchmarks/sodden/olden/voronoi/original/src/args.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/voronoi.dir/src/args.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/args.c

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/voronoi.dir/src/args.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/args.c > CMakeFiles/voronoi.dir/src/args.c.i

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/voronoi.dir/src/args.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/args.c -o CMakeFiles/voronoi.dir/src/args.c.s

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o.requires:

.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o.requires

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o.provides: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/build.make benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o.provides.build
.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o.provides

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o.provides.build: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o


benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/flags.make
benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o: ../benchmarks/sodden/olden/voronoi/original/src/newvor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/voronoi.dir/src/newvor.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/newvor.c

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/voronoi.dir/src/newvor.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/newvor.c > CMakeFiles/voronoi.dir/src/newvor.c.i

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/voronoi.dir/src/newvor.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/newvor.c -o CMakeFiles/voronoi.dir/src/newvor.c.s

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o.requires:

.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o.requires

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o.provides: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/build.make benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o.provides.build
.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o.provides

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o.provides.build: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o


benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/flags.make
benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o: ../benchmarks/sodden/olden/voronoi/original/src/output.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/voronoi.dir/src/output.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/output.c

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/voronoi.dir/src/output.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/output.c > CMakeFiles/voronoi.dir/src/output.c.i

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/voronoi.dir/src/output.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/output.c -o CMakeFiles/voronoi.dir/src/output.c.s

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o.requires:

.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o.requires

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o.provides: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/build.make benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o.provides.build
.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o.provides

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o.provides.build: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o


benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/flags.make
benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o: ../benchmarks/sodden/olden/voronoi/original/src/vector.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/voronoi.dir/src/vector.c.o   -c /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/vector.c

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/voronoi.dir/src/vector.c.i"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/vector.c > CMakeFiles/voronoi.dir/src/vector.c.i

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/voronoi.dir/src/vector.c.s"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original/src/vector.c -o CMakeFiles/voronoi.dir/src/vector.c.s

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o.requires:

.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o.requires

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o.provides: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o.requires
	$(MAKE) -f benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/build.make benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o.provides.build
.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o.provides

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o.provides.build: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o


# Object files for target voronoi
voronoi_OBJECTS = \
"CMakeFiles/voronoi.dir/src/args.c.o" \
"CMakeFiles/voronoi.dir/src/newvor.c.o" \
"CMakeFiles/voronoi.dir/src/output.c.o" \
"CMakeFiles/voronoi.dir/src/vector.c.o"

# External object files for target voronoi
voronoi_EXTERNAL_OBJECTS =

benchmarks/sodden/olden/voronoi/original/voronoi: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o
benchmarks/sodden/olden/voronoi/original/voronoi: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o
benchmarks/sodden/olden/voronoi/original/voronoi: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o
benchmarks/sodden/olden/voronoi/original/voronoi: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o
benchmarks/sodden/olden/voronoi/original/voronoi: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/build.make
benchmarks/sodden/olden/voronoi/original/voronoi: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aleksandr/Work/DCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable voronoi"
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/voronoi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/build: benchmarks/sodden/olden/voronoi/original/voronoi

.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/build

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/requires: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/args.c.o.requires
benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/requires: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/newvor.c.o.requires
benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/requires: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/output.c.o.requires
benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/requires: benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/src/vector.c.o.requires

.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/requires

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/clean:
	cd /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original && $(CMAKE_COMMAND) -P CMakeFiles/voronoi.dir/cmake_clean.cmake
.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/clean

benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/depend:
	cd /home/aleksandr/Work/DCP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aleksandr/Work/DCP /home/aleksandr/Work/DCP/benchmarks/sodden/olden/voronoi/original /home/aleksandr/Work/DCP/build /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original /home/aleksandr/Work/DCP/build/benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/sodden/olden/voronoi/original/CMakeFiles/voronoi.dir/depend

