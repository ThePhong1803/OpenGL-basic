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
CMAKE_SOURCE_DIR = /mnt/c/Users/DELL/code/gui

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/DELL/code/gui

# Include any dependencies generated for this target.
include inc/glfw/tests/CMakeFiles/monitors.dir/depend.make

# Include the progress variables for this target.
include inc/glfw/tests/CMakeFiles/monitors.dir/progress.make

# Include the compile flags for this target's objects.
include inc/glfw/tests/CMakeFiles/monitors.dir/flags.make

inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o: inc/glfw/tests/CMakeFiles/monitors.dir/flags.make
inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o: inc/glfw/tests/monitors.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/DELL/code/gui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/monitors.dir/monitors.c.o   -c /mnt/c/Users/DELL/code/gui/inc/glfw/tests/monitors.c

inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/monitors.c.i"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/DELL/code/gui/inc/glfw/tests/monitors.c > CMakeFiles/monitors.dir/monitors.c.i

inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/monitors.c.s"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/DELL/code/gui/inc/glfw/tests/monitors.c -o CMakeFiles/monitors.dir/monitors.c.s

inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o.requires:

.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o.requires

inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o.provides: inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o.requires
	$(MAKE) -f inc/glfw/tests/CMakeFiles/monitors.dir/build.make inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o.provides.build
.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o.provides

inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o.provides.build: inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o


inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o: inc/glfw/tests/CMakeFiles/monitors.dir/flags.make
inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o: inc/glfw/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/DELL/code/gui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/monitors.dir/__/deps/getopt.c.o   -c /mnt/c/Users/DELL/code/gui/inc/glfw/deps/getopt.c

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/__/deps/getopt.c.i"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/DELL/code/gui/inc/glfw/deps/getopt.c > CMakeFiles/monitors.dir/__/deps/getopt.c.i

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/__/deps/getopt.c.s"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/DELL/code/gui/inc/glfw/deps/getopt.c -o CMakeFiles/monitors.dir/__/deps/getopt.c.s

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o.requires:

.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o.requires

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o.provides: inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f inc/glfw/tests/CMakeFiles/monitors.dir/build.make inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o.provides.build
.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o.provides

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o.provides.build: inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o


inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o: inc/glfw/tests/CMakeFiles/monitors.dir/flags.make
inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o: inc/glfw/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/DELL/code/gui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/monitors.dir/__/deps/glad_gl.c.o   -c /mnt/c/Users/DELL/code/gui/inc/glfw/deps/glad_gl.c

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/__/deps/glad_gl.c.i"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/DELL/code/gui/inc/glfw/deps/glad_gl.c > CMakeFiles/monitors.dir/__/deps/glad_gl.c.i

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/__/deps/glad_gl.c.s"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/DELL/code/gui/inc/glfw/deps/glad_gl.c -o CMakeFiles/monitors.dir/__/deps/glad_gl.c.s

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o.requires:

.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o.requires

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o.provides: inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o.requires
	$(MAKE) -f inc/glfw/tests/CMakeFiles/monitors.dir/build.make inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o.provides.build
.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o.provides

inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o.provides.build: inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o


# Object files for target monitors
monitors_OBJECTS = \
"CMakeFiles/monitors.dir/monitors.c.o" \
"CMakeFiles/monitors.dir/__/deps/getopt.c.o" \
"CMakeFiles/monitors.dir/__/deps/glad_gl.c.o"

# External object files for target monitors
monitors_EXTERNAL_OBJECTS =

inc/glfw/tests/monitors: inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o
inc/glfw/tests/monitors: inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o
inc/glfw/tests/monitors: inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o
inc/glfw/tests/monitors: inc/glfw/tests/CMakeFiles/monitors.dir/build.make
inc/glfw/tests/monitors: inc/glfw/src/libglfw3.a
inc/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libm.so
inc/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/librt.so
inc/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libm.so
inc/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libX11.so
inc/glfw/tests/monitors: inc/glfw/tests/CMakeFiles/monitors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/DELL/code/gui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable monitors"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/monitors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
inc/glfw/tests/CMakeFiles/monitors.dir/build: inc/glfw/tests/monitors

.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/build

inc/glfw/tests/CMakeFiles/monitors.dir/requires: inc/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o.requires
inc/glfw/tests/CMakeFiles/monitors.dir/requires: inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o.requires
inc/glfw/tests/CMakeFiles/monitors.dir/requires: inc/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o.requires

.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/requires

inc/glfw/tests/CMakeFiles/monitors.dir/clean:
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/monitors.dir/cmake_clean.cmake
.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/clean

inc/glfw/tests/CMakeFiles/monitors.dir/depend:
	cd /mnt/c/Users/DELL/code/gui && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/DELL/code/gui /mnt/c/Users/DELL/code/gui/inc/glfw/tests /mnt/c/Users/DELL/code/gui /mnt/c/Users/DELL/code/gui/inc/glfw/tests /mnt/c/Users/DELL/code/gui/inc/glfw/tests/CMakeFiles/monitors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : inc/glfw/tests/CMakeFiles/monitors.dir/depend

