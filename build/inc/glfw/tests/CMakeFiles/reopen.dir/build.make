# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\DELL\code\gui

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\DELL\code\gui\build

# Include any dependencies generated for this target.
include inc/glfw/tests/CMakeFiles/reopen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include inc/glfw/tests/CMakeFiles/reopen.dir/compiler_depend.make

# Include the progress variables for this target.
include inc/glfw/tests/CMakeFiles/reopen.dir/progress.make

# Include the compile flags for this target's objects.
include inc/glfw/tests/CMakeFiles/reopen.dir/flags.make

inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj: inc/glfw/tests/CMakeFiles/reopen.dir/flags.make
inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj: inc/glfw/tests/CMakeFiles/reopen.dir/includes_C.rsp
inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj: C:/Users/DELL/code/gui/inc/glfw/tests/reopen.c
inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj: inc/glfw/tests/CMakeFiles/reopen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\DELL\code\gui\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj"
	cd /d C:\Users\DELL\code\gui\build\inc\glfw\tests && C:\ProgramData\mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj -MF CMakeFiles\reopen.dir\reopen.c.obj.d -o CMakeFiles\reopen.dir\reopen.c.obj -c C:\Users\DELL\code\gui\inc\glfw\tests\reopen.c

inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/reopen.dir/reopen.c.i"
	cd /d C:\Users\DELL\code\gui\build\inc\glfw\tests && C:\ProgramData\mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\DELL\code\gui\inc\glfw\tests\reopen.c > CMakeFiles\reopen.dir\reopen.c.i

inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/reopen.dir/reopen.c.s"
	cd /d C:\Users\DELL\code\gui\build\inc\glfw\tests && C:\ProgramData\mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\DELL\code\gui\inc\glfw\tests\reopen.c -o CMakeFiles\reopen.dir\reopen.c.s

inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.obj: inc/glfw/tests/CMakeFiles/reopen.dir/flags.make
inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.obj: inc/glfw/tests/CMakeFiles/reopen.dir/includes_C.rsp
inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.obj: C:/Users/DELL/code/gui/inc/glfw/deps/glad_gl.c
inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.obj: inc/glfw/tests/CMakeFiles/reopen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\DELL\code\gui\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\DELL\code\gui\build\inc\glfw\tests && C:\ProgramData\mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.obj -MF CMakeFiles\reopen.dir\__\deps\glad_gl.c.obj.d -o CMakeFiles\reopen.dir\__\deps\glad_gl.c.obj -c C:\Users\DELL\code\gui\inc\glfw\deps\glad_gl.c

inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/reopen.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\DELL\code\gui\build\inc\glfw\tests && C:\ProgramData\mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\DELL\code\gui\inc\glfw\deps\glad_gl.c > CMakeFiles\reopen.dir\__\deps\glad_gl.c.i

inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/reopen.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\DELL\code\gui\build\inc\glfw\tests && C:\ProgramData\mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\DELL\code\gui\inc\glfw\deps\glad_gl.c -o CMakeFiles\reopen.dir\__\deps\glad_gl.c.s

# Object files for target reopen
reopen_OBJECTS = \
"CMakeFiles/reopen.dir/reopen.c.obj" \
"CMakeFiles/reopen.dir/__/deps/glad_gl.c.obj"

# External object files for target reopen
reopen_EXTERNAL_OBJECTS =

inc/glfw/tests/reopen.exe: inc/glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj
inc/glfw/tests/reopen.exe: inc/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.obj
inc/glfw/tests/reopen.exe: inc/glfw/tests/CMakeFiles/reopen.dir/build.make
inc/glfw/tests/reopen.exe: inc/glfw/src/libglfw3.a
inc/glfw/tests/reopen.exe: inc/glfw/tests/CMakeFiles/reopen.dir/linkLibs.rsp
inc/glfw/tests/reopen.exe: inc/glfw/tests/CMakeFiles/reopen.dir/objects1.rsp
inc/glfw/tests/reopen.exe: inc/glfw/tests/CMakeFiles/reopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\DELL\code\gui\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable reopen.exe"
	cd /d C:\Users\DELL\code\gui\build\inc\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\reopen.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
inc/glfw/tests/CMakeFiles/reopen.dir/build: inc/glfw/tests/reopen.exe
.PHONY : inc/glfw/tests/CMakeFiles/reopen.dir/build

inc/glfw/tests/CMakeFiles/reopen.dir/clean:
	cd /d C:\Users\DELL\code\gui\build\inc\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\reopen.dir\cmake_clean.cmake
.PHONY : inc/glfw/tests/CMakeFiles/reopen.dir/clean

inc/glfw/tests/CMakeFiles/reopen.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\DELL\code\gui C:\Users\DELL\code\gui\inc\glfw\tests C:\Users\DELL\code\gui\build C:\Users\DELL\code\gui\build\inc\glfw\tests C:\Users\DELL\code\gui\build\inc\glfw\tests\CMakeFiles\reopen.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : inc/glfw/tests/CMakeFiles/reopen.dir/depend

