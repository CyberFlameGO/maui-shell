# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/camilo/test/grefsen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/camilo/test/grefsen/build

# Include any dependencies generated for this target.
include src/plugins/CMakeFiles/plugins.dir/depend.make

# Include the progress variables for this target.
include src/plugins/CMakeFiles/plugins.dir/progress.make

# Include the compile flags for this target's objects.
include src/plugins/CMakeFiles/plugins.dir/flags.make

src/plugins/CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.o: src/plugins/CMakeFiles/plugins.dir/flags.make
src/plugins/CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.o: src/plugins/plugins_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camilo/test/grefsen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/plugins/CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.o"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.o -c /home/camilo/test/grefsen/build/src/plugins/plugins_autogen/mocs_compilation.cpp

src/plugins/CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.i"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camilo/test/grefsen/build/src/plugins/plugins_autogen/mocs_compilation.cpp > CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.i

src/plugins/CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.s"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camilo/test/grefsen/build/src/plugins/plugins_autogen/mocs_compilation.cpp -o CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.s

src/plugins/CMakeFiles/plugins.dir/processlauncher.cpp.o: src/plugins/CMakeFiles/plugins.dir/flags.make
src/plugins/CMakeFiles/plugins.dir/processlauncher.cpp.o: ../src/plugins/processlauncher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camilo/test/grefsen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/plugins/CMakeFiles/plugins.dir/processlauncher.cpp.o"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plugins.dir/processlauncher.cpp.o -c /home/camilo/test/grefsen/src/plugins/processlauncher.cpp

src/plugins/CMakeFiles/plugins.dir/processlauncher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugins.dir/processlauncher.cpp.i"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camilo/test/grefsen/src/plugins/processlauncher.cpp > CMakeFiles/plugins.dir/processlauncher.cpp.i

src/plugins/CMakeFiles/plugins.dir/processlauncher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugins.dir/processlauncher.cpp.s"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camilo/test/grefsen/src/plugins/processlauncher.cpp -o CMakeFiles/plugins.dir/processlauncher.cpp.s

src/plugins/CMakeFiles/plugins.dir/stackableitem.cpp.o: src/plugins/CMakeFiles/plugins.dir/flags.make
src/plugins/CMakeFiles/plugins.dir/stackableitem.cpp.o: ../src/plugins/stackableitem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camilo/test/grefsen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/plugins/CMakeFiles/plugins.dir/stackableitem.cpp.o"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plugins.dir/stackableitem.cpp.o -c /home/camilo/test/grefsen/src/plugins/stackableitem.cpp

src/plugins/CMakeFiles/plugins.dir/stackableitem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugins.dir/stackableitem.cpp.i"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camilo/test/grefsen/src/plugins/stackableitem.cpp > CMakeFiles/plugins.dir/stackableitem.cpp.i

src/plugins/CMakeFiles/plugins.dir/stackableitem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugins.dir/stackableitem.cpp.s"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camilo/test/grefsen/src/plugins/stackableitem.cpp -o CMakeFiles/plugins.dir/stackableitem.cpp.s

src/plugins/CMakeFiles/plugins.dir/enviroment.cpp.o: src/plugins/CMakeFiles/plugins.dir/flags.make
src/plugins/CMakeFiles/plugins.dir/enviroment.cpp.o: ../src/plugins/enviroment.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camilo/test/grefsen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/plugins/CMakeFiles/plugins.dir/enviroment.cpp.o"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plugins.dir/enviroment.cpp.o -c /home/camilo/test/grefsen/src/plugins/enviroment.cpp

src/plugins/CMakeFiles/plugins.dir/enviroment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugins.dir/enviroment.cpp.i"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camilo/test/grefsen/src/plugins/enviroment.cpp > CMakeFiles/plugins.dir/enviroment.cpp.i

src/plugins/CMakeFiles/plugins.dir/enviroment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugins.dir/enviroment.cpp.s"
	cd /home/camilo/test/grefsen/build/src/plugins && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camilo/test/grefsen/src/plugins/enviroment.cpp -o CMakeFiles/plugins.dir/enviroment.cpp.s

# Object files for target plugins
plugins_OBJECTS = \
"CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/plugins.dir/processlauncher.cpp.o" \
"CMakeFiles/plugins.dir/stackableitem.cpp.o" \
"CMakeFiles/plugins.dir/enviroment.cpp.o"

# External object files for target plugins
plugins_EXTERNAL_OBJECTS =

lib/libplugins.a: src/plugins/CMakeFiles/plugins.dir/plugins_autogen/mocs_compilation.cpp.o
lib/libplugins.a: src/plugins/CMakeFiles/plugins.dir/processlauncher.cpp.o
lib/libplugins.a: src/plugins/CMakeFiles/plugins.dir/stackableitem.cpp.o
lib/libplugins.a: src/plugins/CMakeFiles/plugins.dir/enviroment.cpp.o
lib/libplugins.a: src/plugins/CMakeFiles/plugins.dir/build.make
lib/libplugins.a: src/plugins/CMakeFiles/plugins.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/camilo/test/grefsen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../../lib/libplugins.a"
	cd /home/camilo/test/grefsen/build/src/plugins && $(CMAKE_COMMAND) -P CMakeFiles/plugins.dir/cmake_clean_target.cmake
	cd /home/camilo/test/grefsen/build/src/plugins && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plugins.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/plugins/CMakeFiles/plugins.dir/build: lib/libplugins.a

.PHONY : src/plugins/CMakeFiles/plugins.dir/build

src/plugins/CMakeFiles/plugins.dir/clean:
	cd /home/camilo/test/grefsen/build/src/plugins && $(CMAKE_COMMAND) -P CMakeFiles/plugins.dir/cmake_clean.cmake
.PHONY : src/plugins/CMakeFiles/plugins.dir/clean

src/plugins/CMakeFiles/plugins.dir/depend:
	cd /home/camilo/test/grefsen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/camilo/test/grefsen /home/camilo/test/grefsen/src/plugins /home/camilo/test/grefsen/build /home/camilo/test/grefsen/build/src/plugins /home/camilo/test/grefsen/build/src/plugins/CMakeFiles/plugins.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/plugins/CMakeFiles/plugins.dir/depend
