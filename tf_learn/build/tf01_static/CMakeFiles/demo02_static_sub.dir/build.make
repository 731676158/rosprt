# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jeff/rosprt/tf_learn/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jeff/rosprt/tf_learn/build

# Include any dependencies generated for this target.
include tf01_static/CMakeFiles/demo02_static_sub.dir/depend.make

# Include the progress variables for this target.
include tf01_static/CMakeFiles/demo02_static_sub.dir/progress.make

# Include the compile flags for this target's objects.
include tf01_static/CMakeFiles/demo02_static_sub.dir/flags.make

tf01_static/CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.o: tf01_static/CMakeFiles/demo02_static_sub.dir/flags.make
tf01_static/CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.o: /home/jeff/rosprt/tf_learn/src/tf01_static/src/demo02_static_sub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeff/rosprt/tf_learn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tf01_static/CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.o"
	cd /home/jeff/rosprt/tf_learn/build/tf01_static && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.o -c /home/jeff/rosprt/tf_learn/src/tf01_static/src/demo02_static_sub.cpp

tf01_static/CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.i"
	cd /home/jeff/rosprt/tf_learn/build/tf01_static && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeff/rosprt/tf_learn/src/tf01_static/src/demo02_static_sub.cpp > CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.i

tf01_static/CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.s"
	cd /home/jeff/rosprt/tf_learn/build/tf01_static && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeff/rosprt/tf_learn/src/tf01_static/src/demo02_static_sub.cpp -o CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.s

# Object files for target demo02_static_sub
demo02_static_sub_OBJECTS = \
"CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.o"

# External object files for target demo02_static_sub
demo02_static_sub_EXTERNAL_OBJECTS =

/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: tf01_static/CMakeFiles/demo02_static_sub.dir/src/demo02_static_sub.cpp.o
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: tf01_static/CMakeFiles/demo02_static_sub.dir/build.make
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/liborocos-kdl.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/liborocos-kdl.so.1.3.0
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/libtf2_ros.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/libactionlib.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/libmessage_filters.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/libroscpp.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/librosconsole.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/liblog4cxx.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/libtf2.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/librostime.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /opt/ros/indigo/lib/libcpp_common.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub: tf01_static/CMakeFiles/demo02_static_sub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jeff/rosprt/tf_learn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub"
	cd /home/jeff/rosprt/tf_learn/build/tf01_static && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo02_static_sub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tf01_static/CMakeFiles/demo02_static_sub.dir/build: /home/jeff/rosprt/tf_learn/devel/lib/tf01_static/demo02_static_sub

.PHONY : tf01_static/CMakeFiles/demo02_static_sub.dir/build

tf01_static/CMakeFiles/demo02_static_sub.dir/clean:
	cd /home/jeff/rosprt/tf_learn/build/tf01_static && $(CMAKE_COMMAND) -P CMakeFiles/demo02_static_sub.dir/cmake_clean.cmake
.PHONY : tf01_static/CMakeFiles/demo02_static_sub.dir/clean

tf01_static/CMakeFiles/demo02_static_sub.dir/depend:
	cd /home/jeff/rosprt/tf_learn/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jeff/rosprt/tf_learn/src /home/jeff/rosprt/tf_learn/src/tf01_static /home/jeff/rosprt/tf_learn/build /home/jeff/rosprt/tf_learn/build/tf01_static /home/jeff/rosprt/tf_learn/build/tf01_static/CMakeFiles/demo02_static_sub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tf01_static/CMakeFiles/demo02_static_sub.dir/depend

