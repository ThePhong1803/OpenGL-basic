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
include inc/glfw/examples/CMakeFiles/sharing.dir/depend.make

# Include the progress variables for this target.
include inc/glfw/examples/CMakeFiles/sharing.dir/progress.make

# Include the compile flags for this target's objects.
include inc/glfw/examples/CMakeFiles/sharing.dir/flags.make

inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o: inc/glfw/examples/CMakeFiles/sharing.dir/flags.make
inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o: inc/glfw/examples/sharing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/DELL/code/gui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sharing.dir/sharing.c.o   -c /mnt/c/Users/DELL/code/gui/inc/glfw/examples/sharing.c

inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sharing.dir/sharing.c.i"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/DELL/code/gui/inc/glfw/examples/sharing.c > CMakeFiles/sharing.dir/sharing.c.i

inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sharing.dir/sharing.c.s"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/DELL/code/gui/inc/glfw/examples/sharing.c -o CMakeFiles/sharing.dir/sharing.c.s

inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o.requires:

.PHONY : inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o.requires

inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o.provides: inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o.requires
	$(MAKE) -f inc/glfw/examples/CMakeFiles/sharing.dir/build.make inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o.provides.build
.PHONY : inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o.provides

inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o.provides.build: inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o


inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o: inc/glfw/examples/CMakeFiles/sharing.dir/flags.make
inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o: inc/glfw/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/DELL/code/gui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sharing.dir/__/deps/glad_gl.c.o   -c /mnt/c/Users/DELL/code/gui/inc/glfw/deps/glad_gl.c

inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sharing.dir/__/deps/glad_gl.c.i"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/DELL/code/gui/inc/glfw/deps/glad_gl.c > CMakeFiles/sharing.dir/__/deps/glad_gl.c.i

inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sharing.dir/__/deps/glad_gl.c.s"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/DELL/code/gui/inc/glfw/deps/glad_gl.c -o CMakeFiles/sharing.dir/__/deps/glad_gl.c.s

inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o.requires:

.PHONY : inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o.requires

inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o.provides: inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o.requires
	$(MAKE) -f inc/glfw/examples/CMakeFiles/sharing.dir/build.make inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o.provides.build
.PHONY : inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o.provides

inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o.provides.build: inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o


# Object files for target sharing
sharing_OBJECTS = \
"CMakeFiles/sharing.dir/sharing.c.o" \
"CMakeFiles/sharing.dir/__/deps/glad_gl.c.o"

# External object files for target sharing
sharing_EXTERNAL_OBJECTS =

inc/glfw/examples/sharing: inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o
inc/glfw/examples/sharing: inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o
inc/glfw/examples/sharing: inc/glfw/examples/CMakeFiles/sharing.dir/build.make
inc/glfw/examples/sharing: inc/glfw/src/libglfw3.a
inc/glfw/examples/sharing: /usr/lib/x86_64-linux-gnu/libm.so
inc/glfw/examples/sharing: /usr/lib/x86_64-linux-gnu/librt.so
inc/glfw/examples/sharing: /usr/lib/x86_64-linux-gnu/libm.so
inc/glfw/examples/sharing: /usr/lib/x86_64-linux-gnu/libX11.so
inc/glfw/examples/sharing: inc/glfw/examples/CMakeFiles/sharing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/DELL/code/gui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable sharing"
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sharing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
inc/glfw/examples/CMakeFiles/sharing.dir/build: inc/glfw/examples/sharing

.PHONY : inc/glfw/examples/CMakeFiles/sharing.dir/build

inc/glfw/examples/CMakeFiles/sharing.dir/requires: inc/glfw/examples/CMakeFiles/sharing.dir/sharing.c.o.requires
inc/glfw/examples/CMakeFiles/sharing.dir/requires: inc/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.o.requires

.PHONY : inc/glfw/examples/CMakeFiles/sharing.dir/requires

inc/glfw/examples/CMakeFiles/sharing.dir/clean:
	cd /mnt/c/Users/DELL/code/gui/inc/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/sharing.dir/cmake_clean.cmake
.PHONY : inc/glfw/examples/CMakeFiles/sharing.dir/clean

inc/glfw/examples/CMakeFiles/sharing.dir/depend:
	cd /mnt/c/Users/DELL/code/gui && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/DELL/code/gui /mnt/c/Users/DELL/code/gui/inc/glfw/examples /mnt/c/Users/DELL/code/gui /mnt/c/Users/DELL/code/gui/inc/glfw/examples /mnt/c/Users/DELL/code/gui/inc/glfw/examples/CMakeFiles/sharing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : inc/glfw/examples/CMakeFiles/sharing.dir/depend

