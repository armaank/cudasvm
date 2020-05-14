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
CMAKE_SOURCE_DIR = /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP

# Include any dependencies generated for this target.
include CMakeFiles/svm_benchmark.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/svm_benchmark.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/svm_benchmark.dir/flags.make

benchmarks/svm/data.h: benchmarks/generate_tests_data.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating unittests data files using Python"
	cd /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP/benchmarks && /usr/bin/python generate_tests_data.py

CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o: CMakeFiles/svm_benchmark.dir/flags.make
CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o: benchmarks/osqp_tester.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o   -c /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP/benchmarks/osqp_tester.c

CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP/benchmarks/osqp_tester.c > CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.i

CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP/benchmarks/osqp_tester.c -o CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.s

CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o.requires:

.PHONY : CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o.requires

CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o.provides: CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o.requires
	$(MAKE) -f CMakeFiles/svm_benchmark.dir/build.make CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o.provides.build
.PHONY : CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o.provides

CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o.provides.build: CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o


# Object files for target svm_benchmark
svm_benchmark_OBJECTS = \
"CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o"

# External object files for target svm_benchmark
svm_benchmark_EXTERNAL_OBJECTS =

out/svm_benchmark: CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o
out/svm_benchmark: CMakeFiles/svm_benchmark.dir/build.make
out/svm_benchmark: out/libosqp.a
out/svm_benchmark: CMakeFiles/svm_benchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable out/svm_benchmark"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/svm_benchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/svm_benchmark.dir/build: out/svm_benchmark

.PHONY : CMakeFiles/svm_benchmark.dir/build

CMakeFiles/svm_benchmark.dir/requires: CMakeFiles/svm_benchmark.dir/benchmarks/osqp_tester.c.o.requires

.PHONY : CMakeFiles/svm_benchmark.dir/requires

CMakeFiles/svm_benchmark.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/svm_benchmark.dir/cmake_clean.cmake
.PHONY : CMakeFiles/svm_benchmark.dir/clean

CMakeFiles/svm_benchmark.dir/depend: benchmarks/svm/data.h
	cd /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP /home/armaan/Documents/cooperunion/spring_2020/ece453/final/cudaQP/CMakeFiles/svm_benchmark.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/svm_benchmark.dir/depend
