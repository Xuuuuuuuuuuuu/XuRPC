# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/project/XuRPC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/project/XuRPC/build

# Include any dependencies generated for this target.
include src/CMakeFiles/xurpc.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/xurpc.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/xurpc.dir/flags.make

src/CMakeFiles/xurpc.dir/xurpcapplication.cc.o: src/CMakeFiles/xurpc.dir/flags.make
src/CMakeFiles/xurpc.dir/xurpcapplication.cc.o: ../src/xurpcapplication.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/xurpc.dir/xurpcapplication.cc.o"
	cd /root/project/XuRPC/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xurpc.dir/xurpcapplication.cc.o -c /root/project/XuRPC/src/xurpcapplication.cc

src/CMakeFiles/xurpc.dir/xurpcapplication.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xurpc.dir/xurpcapplication.cc.i"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/XuRPC/src/xurpcapplication.cc > CMakeFiles/xurpc.dir/xurpcapplication.cc.i

src/CMakeFiles/xurpc.dir/xurpcapplication.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xurpc.dir/xurpcapplication.cc.s"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/XuRPC/src/xurpcapplication.cc -o CMakeFiles/xurpc.dir/xurpcapplication.cc.s

src/CMakeFiles/xurpc.dir/xurpcconfig.cc.o: src/CMakeFiles/xurpc.dir/flags.make
src/CMakeFiles/xurpc.dir/xurpcconfig.cc.o: ../src/xurpcconfig.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/xurpc.dir/xurpcconfig.cc.o"
	cd /root/project/XuRPC/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xurpc.dir/xurpcconfig.cc.o -c /root/project/XuRPC/src/xurpcconfig.cc

src/CMakeFiles/xurpc.dir/xurpcconfig.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xurpc.dir/xurpcconfig.cc.i"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/XuRPC/src/xurpcconfig.cc > CMakeFiles/xurpc.dir/xurpcconfig.cc.i

src/CMakeFiles/xurpc.dir/xurpcconfig.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xurpc.dir/xurpcconfig.cc.s"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/XuRPC/src/xurpcconfig.cc -o CMakeFiles/xurpc.dir/xurpcconfig.cc.s

src/CMakeFiles/xurpc.dir/xurpcheader.pb.cc.o: src/CMakeFiles/xurpc.dir/flags.make
src/CMakeFiles/xurpc.dir/xurpcheader.pb.cc.o: ../src/xurpcheader.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/xurpc.dir/xurpcheader.pb.cc.o"
	cd /root/project/XuRPC/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xurpc.dir/xurpcheader.pb.cc.o -c /root/project/XuRPC/src/xurpcheader.pb.cc

src/CMakeFiles/xurpc.dir/xurpcheader.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xurpc.dir/xurpcheader.pb.cc.i"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/XuRPC/src/xurpcheader.pb.cc > CMakeFiles/xurpc.dir/xurpcheader.pb.cc.i

src/CMakeFiles/xurpc.dir/xurpcheader.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xurpc.dir/xurpcheader.pb.cc.s"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/XuRPC/src/xurpcheader.pb.cc -o CMakeFiles/xurpc.dir/xurpcheader.pb.cc.s

src/CMakeFiles/xurpc.dir/xurpcprovider.cc.o: src/CMakeFiles/xurpc.dir/flags.make
src/CMakeFiles/xurpc.dir/xurpcprovider.cc.o: ../src/xurpcprovider.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/xurpc.dir/xurpcprovider.cc.o"
	cd /root/project/XuRPC/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xurpc.dir/xurpcprovider.cc.o -c /root/project/XuRPC/src/xurpcprovider.cc

src/CMakeFiles/xurpc.dir/xurpcprovider.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xurpc.dir/xurpcprovider.cc.i"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/XuRPC/src/xurpcprovider.cc > CMakeFiles/xurpc.dir/xurpcprovider.cc.i

src/CMakeFiles/xurpc.dir/xurpcprovider.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xurpc.dir/xurpcprovider.cc.s"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/XuRPC/src/xurpcprovider.cc -o CMakeFiles/xurpc.dir/xurpcprovider.cc.s

src/CMakeFiles/xurpc.dir/xurpcchannel.cc.o: src/CMakeFiles/xurpc.dir/flags.make
src/CMakeFiles/xurpc.dir/xurpcchannel.cc.o: ../src/xurpcchannel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/xurpc.dir/xurpcchannel.cc.o"
	cd /root/project/XuRPC/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xurpc.dir/xurpcchannel.cc.o -c /root/project/XuRPC/src/xurpcchannel.cc

src/CMakeFiles/xurpc.dir/xurpcchannel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xurpc.dir/xurpcchannel.cc.i"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/XuRPC/src/xurpcchannel.cc > CMakeFiles/xurpc.dir/xurpcchannel.cc.i

src/CMakeFiles/xurpc.dir/xurpcchannel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xurpc.dir/xurpcchannel.cc.s"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/XuRPC/src/xurpcchannel.cc -o CMakeFiles/xurpc.dir/xurpcchannel.cc.s

src/CMakeFiles/xurpc.dir/xulogger.cc.o: src/CMakeFiles/xurpc.dir/flags.make
src/CMakeFiles/xurpc.dir/xulogger.cc.o: ../src/xulogger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/xurpc.dir/xulogger.cc.o"
	cd /root/project/XuRPC/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xurpc.dir/xulogger.cc.o -c /root/project/XuRPC/src/xulogger.cc

src/CMakeFiles/xurpc.dir/xulogger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xurpc.dir/xulogger.cc.i"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/XuRPC/src/xulogger.cc > CMakeFiles/xurpc.dir/xulogger.cc.i

src/CMakeFiles/xurpc.dir/xulogger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xurpc.dir/xulogger.cc.s"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/XuRPC/src/xulogger.cc -o CMakeFiles/xurpc.dir/xulogger.cc.s

src/CMakeFiles/xurpc.dir/zookeeperutil.cc.o: src/CMakeFiles/xurpc.dir/flags.make
src/CMakeFiles/xurpc.dir/zookeeperutil.cc.o: ../src/zookeeperutil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/xurpc.dir/zookeeperutil.cc.o"
	cd /root/project/XuRPC/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xurpc.dir/zookeeperutil.cc.o -c /root/project/XuRPC/src/zookeeperutil.cc

src/CMakeFiles/xurpc.dir/zookeeperutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xurpc.dir/zookeeperutil.cc.i"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/XuRPC/src/zookeeperutil.cc > CMakeFiles/xurpc.dir/zookeeperutil.cc.i

src/CMakeFiles/xurpc.dir/zookeeperutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xurpc.dir/zookeeperutil.cc.s"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/XuRPC/src/zookeeperutil.cc -o CMakeFiles/xurpc.dir/zookeeperutil.cc.s

src/CMakeFiles/xurpc.dir/xurpccontroller.cc.o: src/CMakeFiles/xurpc.dir/flags.make
src/CMakeFiles/xurpc.dir/xurpccontroller.cc.o: ../src/xurpccontroller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/xurpc.dir/xurpccontroller.cc.o"
	cd /root/project/XuRPC/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xurpc.dir/xurpccontroller.cc.o -c /root/project/XuRPC/src/xurpccontroller.cc

src/CMakeFiles/xurpc.dir/xurpccontroller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xurpc.dir/xurpccontroller.cc.i"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/XuRPC/src/xurpccontroller.cc > CMakeFiles/xurpc.dir/xurpccontroller.cc.i

src/CMakeFiles/xurpc.dir/xurpccontroller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xurpc.dir/xurpccontroller.cc.s"
	cd /root/project/XuRPC/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/XuRPC/src/xurpccontroller.cc -o CMakeFiles/xurpc.dir/xurpccontroller.cc.s

# Object files for target xurpc
xurpc_OBJECTS = \
"CMakeFiles/xurpc.dir/xurpcapplication.cc.o" \
"CMakeFiles/xurpc.dir/xurpcconfig.cc.o" \
"CMakeFiles/xurpc.dir/xurpcheader.pb.cc.o" \
"CMakeFiles/xurpc.dir/xurpcprovider.cc.o" \
"CMakeFiles/xurpc.dir/xurpcchannel.cc.o" \
"CMakeFiles/xurpc.dir/xulogger.cc.o" \
"CMakeFiles/xurpc.dir/zookeeperutil.cc.o" \
"CMakeFiles/xurpc.dir/xurpccontroller.cc.o"

# External object files for target xurpc
xurpc_EXTERNAL_OBJECTS =

../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/xurpcapplication.cc.o
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/xurpcconfig.cc.o
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/xurpcheader.pb.cc.o
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/xurpcprovider.cc.o
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/xurpcchannel.cc.o
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/xulogger.cc.o
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/zookeeperutil.cc.o
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/xurpccontroller.cc.o
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/build.make
../lib/libxurpc.a: src/CMakeFiles/xurpc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/project/XuRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library ../../lib/libxurpc.a"
	cd /root/project/XuRPC/build/src && $(CMAKE_COMMAND) -P CMakeFiles/xurpc.dir/cmake_clean_target.cmake
	cd /root/project/XuRPC/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xurpc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/xurpc.dir/build: ../lib/libxurpc.a

.PHONY : src/CMakeFiles/xurpc.dir/build

src/CMakeFiles/xurpc.dir/clean:
	cd /root/project/XuRPC/build/src && $(CMAKE_COMMAND) -P CMakeFiles/xurpc.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/xurpc.dir/clean

src/CMakeFiles/xurpc.dir/depend:
	cd /root/project/XuRPC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/project/XuRPC /root/project/XuRPC/src /root/project/XuRPC/build /root/project/XuRPC/build/src /root/project/XuRPC/build/src/CMakeFiles/xurpc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/xurpc.dir/depend

