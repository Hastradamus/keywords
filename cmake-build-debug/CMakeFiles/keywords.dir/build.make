# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hasankatie/programming/cworkspace/keywords

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hasankatie/programming/cworkspace/keywords/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/keywords.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/keywords.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/keywords.dir/flags.make

CMakeFiles/keywords.dir/keywords.cpp.o: CMakeFiles/keywords.dir/flags.make
CMakeFiles/keywords.dir/keywords.cpp.o: ../keywords.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hasankatie/programming/cworkspace/keywords/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/keywords.dir/keywords.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/keywords.dir/keywords.cpp.o -c /Users/hasankatie/programming/cworkspace/keywords/keywords.cpp

CMakeFiles/keywords.dir/keywords.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/keywords.dir/keywords.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hasankatie/programming/cworkspace/keywords/keywords.cpp > CMakeFiles/keywords.dir/keywords.cpp.i

CMakeFiles/keywords.dir/keywords.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/keywords.dir/keywords.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hasankatie/programming/cworkspace/keywords/keywords.cpp -o CMakeFiles/keywords.dir/keywords.cpp.s

CMakeFiles/keywords.dir/keywords.cpp.o.requires:

.PHONY : CMakeFiles/keywords.dir/keywords.cpp.o.requires

CMakeFiles/keywords.dir/keywords.cpp.o.provides: CMakeFiles/keywords.dir/keywords.cpp.o.requires
	$(MAKE) -f CMakeFiles/keywords.dir/build.make CMakeFiles/keywords.dir/keywords.cpp.o.provides.build
.PHONY : CMakeFiles/keywords.dir/keywords.cpp.o.provides

CMakeFiles/keywords.dir/keywords.cpp.o.provides.build: CMakeFiles/keywords.dir/keywords.cpp.o


CMakeFiles/keywords.dir/utilfuncs.cpp.o: CMakeFiles/keywords.dir/flags.make
CMakeFiles/keywords.dir/utilfuncs.cpp.o: ../utilfuncs.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hasankatie/programming/cworkspace/keywords/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/keywords.dir/utilfuncs.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/keywords.dir/utilfuncs.cpp.o -c /Users/hasankatie/programming/cworkspace/keywords/utilfuncs.cpp

CMakeFiles/keywords.dir/utilfuncs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/keywords.dir/utilfuncs.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hasankatie/programming/cworkspace/keywords/utilfuncs.cpp > CMakeFiles/keywords.dir/utilfuncs.cpp.i

CMakeFiles/keywords.dir/utilfuncs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/keywords.dir/utilfuncs.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hasankatie/programming/cworkspace/keywords/utilfuncs.cpp -o CMakeFiles/keywords.dir/utilfuncs.cpp.s

CMakeFiles/keywords.dir/utilfuncs.cpp.o.requires:

.PHONY : CMakeFiles/keywords.dir/utilfuncs.cpp.o.requires

CMakeFiles/keywords.dir/utilfuncs.cpp.o.provides: CMakeFiles/keywords.dir/utilfuncs.cpp.o.requires
	$(MAKE) -f CMakeFiles/keywords.dir/build.make CMakeFiles/keywords.dir/utilfuncs.cpp.o.provides.build
.PHONY : CMakeFiles/keywords.dir/utilfuncs.cpp.o.provides

CMakeFiles/keywords.dir/utilfuncs.cpp.o.provides.build: CMakeFiles/keywords.dir/utilfuncs.cpp.o


# Object files for target keywords
keywords_OBJECTS = \
"CMakeFiles/keywords.dir/keywords.cpp.o" \
"CMakeFiles/keywords.dir/utilfuncs.cpp.o"

# External object files for target keywords
keywords_EXTERNAL_OBJECTS =

keywords: CMakeFiles/keywords.dir/keywords.cpp.o
keywords: CMakeFiles/keywords.dir/utilfuncs.cpp.o
keywords: CMakeFiles/keywords.dir/build.make
keywords: CMakeFiles/keywords.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hasankatie/programming/cworkspace/keywords/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable keywords"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/keywords.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/keywords.dir/build: keywords

.PHONY : CMakeFiles/keywords.dir/build

CMakeFiles/keywords.dir/requires: CMakeFiles/keywords.dir/keywords.cpp.o.requires
CMakeFiles/keywords.dir/requires: CMakeFiles/keywords.dir/utilfuncs.cpp.o.requires

.PHONY : CMakeFiles/keywords.dir/requires

CMakeFiles/keywords.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/keywords.dir/cmake_clean.cmake
.PHONY : CMakeFiles/keywords.dir/clean

CMakeFiles/keywords.dir/depend:
	cd /Users/hasankatie/programming/cworkspace/keywords/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hasankatie/programming/cworkspace/keywords /Users/hasankatie/programming/cworkspace/keywords /Users/hasankatie/programming/cworkspace/keywords/cmake-build-debug /Users/hasankatie/programming/cworkspace/keywords/cmake-build-debug /Users/hasankatie/programming/cworkspace/keywords/cmake-build-debug/CMakeFiles/keywords.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/keywords.dir/depend

