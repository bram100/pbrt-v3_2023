# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex

# Include any dependencies generated for this target.
include src/tests/CMakeFiles/halftest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/tests/CMakeFiles/halftest.dir/compiler_depend.make

# Include the progress variables for this target.
include src/tests/CMakeFiles/halftest.dir/progress.make

# Include the compile flags for this target's objects.
include src/tests/CMakeFiles/halftest.dir/flags.make

src/tests/CMakeFiles/halftest.dir/halftest.cpp.o: src/tests/CMakeFiles/halftest.dir/flags.make
src/tests/CMakeFiles/halftest.dir/halftest.cpp.o: /Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/halftest.cpp
src/tests/CMakeFiles/halftest.dir/halftest.cpp.o: src/tests/CMakeFiles/halftest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/tests/CMakeFiles/halftest.dir/halftest.cpp.o"
	cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/tests/CMakeFiles/halftest.dir/halftest.cpp.o -MF CMakeFiles/halftest.dir/halftest.cpp.o.d -o CMakeFiles/halftest.dir/halftest.cpp.o -c /Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/halftest.cpp

src/tests/CMakeFiles/halftest.dir/halftest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/halftest.dir/halftest.cpp.i"
	cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/halftest.cpp > CMakeFiles/halftest.dir/halftest.cpp.i

src/tests/CMakeFiles/halftest.dir/halftest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/halftest.dir/halftest.cpp.s"
	cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests/halftest.cpp -o CMakeFiles/halftest.dir/halftest.cpp.s

# Object files for target halftest
halftest_OBJECTS = \
"CMakeFiles/halftest.dir/halftest.cpp.o"

# External object files for target halftest
halftest_EXTERNAL_OBJECTS =

src/tests/halftest: src/tests/CMakeFiles/halftest.dir/halftest.cpp.o
src/tests/halftest: src/tests/CMakeFiles/halftest.dir/build.make
src/tests/halftest: src/ptex/libPtex.dylib
src/tests/halftest: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/usr/lib/libz.tbd
src/tests/halftest: src/tests/CMakeFiles/halftest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable halftest"
	cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/halftest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tests/CMakeFiles/halftest.dir/build: src/tests/halftest
.PHONY : src/tests/CMakeFiles/halftest.dir/build

src/tests/CMakeFiles/halftest.dir/clean:
	cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests && $(CMAKE_COMMAND) -P CMakeFiles/halftest.dir/cmake_clean.cmake
.PHONY : src/tests/CMakeFiles/halftest.dir/clean

src/tests/CMakeFiles/halftest.dir/depend:
	cd /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex /Users/brendanmulcahey/Documents/pbrt-v3_2023/src/ext/ptex/src/tests /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests /Users/brendanmulcahey/Documents/pbrt-v3_2023/myBuilds/src/ext/ptex/src/tests/CMakeFiles/halftest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tests/CMakeFiles/halftest.dir/depend
