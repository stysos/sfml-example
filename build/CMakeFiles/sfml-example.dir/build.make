# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/styson/c/sfml-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/styson/c/sfml-example/build

# Include any dependencies generated for this target.
include CMakeFiles/sfml-example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sfml-example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sfml-example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sfml-example.dir/flags.make

CMakeFiles/sfml-example.dir/main.cpp.o: CMakeFiles/sfml-example.dir/flags.make
CMakeFiles/sfml-example.dir/main.cpp.o: ../main.cpp
CMakeFiles/sfml-example.dir/main.cpp.o: CMakeFiles/sfml-example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/styson/c/sfml-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sfml-example.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sfml-example.dir/main.cpp.o -MF CMakeFiles/sfml-example.dir/main.cpp.o.d -o CMakeFiles/sfml-example.dir/main.cpp.o -c /home/styson/c/sfml-example/main.cpp

CMakeFiles/sfml-example.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-example.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/styson/c/sfml-example/main.cpp > CMakeFiles/sfml-example.dir/main.cpp.i

CMakeFiles/sfml-example.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-example.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/styson/c/sfml-example/main.cpp -o CMakeFiles/sfml-example.dir/main.cpp.s

CMakeFiles/sfml-example.dir/windowControl.cpp.o: CMakeFiles/sfml-example.dir/flags.make
CMakeFiles/sfml-example.dir/windowControl.cpp.o: ../windowControl.cpp
CMakeFiles/sfml-example.dir/windowControl.cpp.o: CMakeFiles/sfml-example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/styson/c/sfml-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sfml-example.dir/windowControl.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sfml-example.dir/windowControl.cpp.o -MF CMakeFiles/sfml-example.dir/windowControl.cpp.o.d -o CMakeFiles/sfml-example.dir/windowControl.cpp.o -c /home/styson/c/sfml-example/windowControl.cpp

CMakeFiles/sfml-example.dir/windowControl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-example.dir/windowControl.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/styson/c/sfml-example/windowControl.cpp > CMakeFiles/sfml-example.dir/windowControl.cpp.i

CMakeFiles/sfml-example.dir/windowControl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-example.dir/windowControl.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/styson/c/sfml-example/windowControl.cpp -o CMakeFiles/sfml-example.dir/windowControl.cpp.s

CMakeFiles/sfml-example.dir/player.cpp.o: CMakeFiles/sfml-example.dir/flags.make
CMakeFiles/sfml-example.dir/player.cpp.o: ../player.cpp
CMakeFiles/sfml-example.dir/player.cpp.o: CMakeFiles/sfml-example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/styson/c/sfml-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sfml-example.dir/player.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sfml-example.dir/player.cpp.o -MF CMakeFiles/sfml-example.dir/player.cpp.o.d -o CMakeFiles/sfml-example.dir/player.cpp.o -c /home/styson/c/sfml-example/player.cpp

CMakeFiles/sfml-example.dir/player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-example.dir/player.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/styson/c/sfml-example/player.cpp > CMakeFiles/sfml-example.dir/player.cpp.i

CMakeFiles/sfml-example.dir/player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-example.dir/player.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/styson/c/sfml-example/player.cpp -o CMakeFiles/sfml-example.dir/player.cpp.s

# Object files for target sfml-example
sfml__example_OBJECTS = \
"CMakeFiles/sfml-example.dir/main.cpp.o" \
"CMakeFiles/sfml-example.dir/windowControl.cpp.o" \
"CMakeFiles/sfml-example.dir/player.cpp.o"

# External object files for target sfml-example
sfml__example_EXTERNAL_OBJECTS =

sfml-example: CMakeFiles/sfml-example.dir/main.cpp.o
sfml-example: CMakeFiles/sfml-example.dir/windowControl.cpp.o
sfml-example: CMakeFiles/sfml-example.dir/player.cpp.o
sfml-example: CMakeFiles/sfml-example.dir/build.make
sfml-example: /usr/lib/x86_64-linux-gnu/libsfml-graphics.so.2.5.1
sfml-example: /usr/lib/x86_64-linux-gnu/libsfml-audio.so.2.5.1
sfml-example: /usr/lib/x86_64-linux-gnu/libsfml-window.so.2.5.1
sfml-example: /usr/lib/x86_64-linux-gnu/libsfml-system.so.2.5.1
sfml-example: CMakeFiles/sfml-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/styson/c/sfml-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable sfml-example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sfml-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sfml-example.dir/build: sfml-example
.PHONY : CMakeFiles/sfml-example.dir/build

CMakeFiles/sfml-example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sfml-example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sfml-example.dir/clean

CMakeFiles/sfml-example.dir/depend:
	cd /home/styson/c/sfml-example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/styson/c/sfml-example /home/styson/c/sfml-example /home/styson/c/sfml-example/build /home/styson/c/sfml-example/build /home/styson/c/sfml-example/build/CMakeFiles/sfml-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sfml-example.dir/depend

