# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/zn/okvis-test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zn/okvis-test/build

# Include any dependencies generated for this target.
include okvis_cv/CMakeFiles/okvis_cv.dir/depend.make

# Include the progress variables for this target.
include okvis_cv/CMakeFiles/okvis_cv.dir/progress.make

# Include the compile flags for this target's objects.
include okvis_cv/CMakeFiles/okvis_cv.dir/flags.make

okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o: okvis_cv/CMakeFiles/okvis_cv.dir/flags.make
okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o: ../okvis_cv/src/CameraBase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zn/okvis-test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o"
	cd /home/zn/okvis-test/build/okvis_cv && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o -c /home/zn/okvis-test/okvis_cv/src/CameraBase.cpp

okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.i"
	cd /home/zn/okvis-test/build/okvis_cv && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zn/okvis-test/okvis_cv/src/CameraBase.cpp > CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.i

okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.s"
	cd /home/zn/okvis-test/build/okvis_cv && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zn/okvis-test/okvis_cv/src/CameraBase.cpp -o CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.s

okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o.requires:

.PHONY : okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o.requires

okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o.provides: okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o.requires
	$(MAKE) -f okvis_cv/CMakeFiles/okvis_cv.dir/build.make okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o.provides.build
.PHONY : okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o.provides

okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o.provides.build: okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o


okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o: okvis_cv/CMakeFiles/okvis_cv.dir/flags.make
okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o: ../okvis_cv/src/NCameraSystem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zn/okvis-test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o"
	cd /home/zn/okvis-test/build/okvis_cv && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o -c /home/zn/okvis-test/okvis_cv/src/NCameraSystem.cpp

okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.i"
	cd /home/zn/okvis-test/build/okvis_cv && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zn/okvis-test/okvis_cv/src/NCameraSystem.cpp > CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.i

okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.s"
	cd /home/zn/okvis-test/build/okvis_cv && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zn/okvis-test/okvis_cv/src/NCameraSystem.cpp -o CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.s

okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o.requires:

.PHONY : okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o.requires

okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o.provides: okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o.requires
	$(MAKE) -f okvis_cv/CMakeFiles/okvis_cv.dir/build.make okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o.provides.build
.PHONY : okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o.provides

okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o.provides.build: okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o


# Object files for target okvis_cv
okvis_cv_OBJECTS = \
"CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o" \
"CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o"

# External object files for target okvis_cv
okvis_cv_EXTERNAL_OBJECTS =

okvis_cv/libokvis_cv.a: okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o
okvis_cv/libokvis_cv.a: okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o
okvis_cv/libokvis_cv.a: okvis_cv/CMakeFiles/okvis_cv.dir/build.make
okvis_cv/libokvis_cv.a: okvis_cv/CMakeFiles/okvis_cv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zn/okvis-test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libokvis_cv.a"
	cd /home/zn/okvis-test/build/okvis_cv && $(CMAKE_COMMAND) -P CMakeFiles/okvis_cv.dir/cmake_clean_target.cmake
	cd /home/zn/okvis-test/build/okvis_cv && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/okvis_cv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
okvis_cv/CMakeFiles/okvis_cv.dir/build: okvis_cv/libokvis_cv.a

.PHONY : okvis_cv/CMakeFiles/okvis_cv.dir/build

okvis_cv/CMakeFiles/okvis_cv.dir/requires: okvis_cv/CMakeFiles/okvis_cv.dir/src/CameraBase.cpp.o.requires
okvis_cv/CMakeFiles/okvis_cv.dir/requires: okvis_cv/CMakeFiles/okvis_cv.dir/src/NCameraSystem.cpp.o.requires

.PHONY : okvis_cv/CMakeFiles/okvis_cv.dir/requires

okvis_cv/CMakeFiles/okvis_cv.dir/clean:
	cd /home/zn/okvis-test/build/okvis_cv && $(CMAKE_COMMAND) -P CMakeFiles/okvis_cv.dir/cmake_clean.cmake
.PHONY : okvis_cv/CMakeFiles/okvis_cv.dir/clean

okvis_cv/CMakeFiles/okvis_cv.dir/depend:
	cd /home/zn/okvis-test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zn/okvis-test /home/zn/okvis-test/okvis_cv /home/zn/okvis-test/build /home/zn/okvis-test/build/okvis_cv /home/zn/okvis-test/build/okvis_cv/CMakeFiles/okvis_cv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : okvis_cv/CMakeFiles/okvis_cv.dir/depend

