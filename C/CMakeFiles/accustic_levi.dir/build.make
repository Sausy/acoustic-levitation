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
CMAKE_SOURCE_DIR = /home/roboy/BikeToRikshaw/acoustic-levitation/C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/roboy/BikeToRikshaw/acoustic-levitation/C

# Include any dependencies generated for this target.
include CMakeFiles/accustic_levi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/accustic_levi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/accustic_levi.dir/flags.make

CMakeFiles/accustic_levi.dir/peripherals.c.o: CMakeFiles/accustic_levi.dir/flags.make
CMakeFiles/accustic_levi.dir/peripherals.c.o: peripherals.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roboy/BikeToRikshaw/acoustic-levitation/C/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/accustic_levi.dir/peripherals.c.o"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/accustic_levi.dir/peripherals.c.o   -c /home/roboy/BikeToRikshaw/acoustic-levitation/C/peripherals.c

CMakeFiles/accustic_levi.dir/peripherals.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/accustic_levi.dir/peripherals.c.i"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/roboy/BikeToRikshaw/acoustic-levitation/C/peripherals.c > CMakeFiles/accustic_levi.dir/peripherals.c.i

CMakeFiles/accustic_levi.dir/peripherals.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/accustic_levi.dir/peripherals.c.s"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/roboy/BikeToRikshaw/acoustic-levitation/C/peripherals.c -o CMakeFiles/accustic_levi.dir/peripherals.c.s

CMakeFiles/accustic_levi.dir/peripherals.c.o.requires:

.PHONY : CMakeFiles/accustic_levi.dir/peripherals.c.o.requires

CMakeFiles/accustic_levi.dir/peripherals.c.o.provides: CMakeFiles/accustic_levi.dir/peripherals.c.o.requires
	$(MAKE) -f CMakeFiles/accustic_levi.dir/build.make CMakeFiles/accustic_levi.dir/peripherals.c.o.provides.build
.PHONY : CMakeFiles/accustic_levi.dir/peripherals.c.o.provides

CMakeFiles/accustic_levi.dir/peripherals.c.o.provides.build: CMakeFiles/accustic_levi.dir/peripherals.c.o


CMakeFiles/accustic_levi.dir/trap.c.o: CMakeFiles/accustic_levi.dir/flags.make
CMakeFiles/accustic_levi.dir/trap.c.o: trap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roboy/BikeToRikshaw/acoustic-levitation/C/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/accustic_levi.dir/trap.c.o"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/accustic_levi.dir/trap.c.o   -c /home/roboy/BikeToRikshaw/acoustic-levitation/C/trap.c

CMakeFiles/accustic_levi.dir/trap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/accustic_levi.dir/trap.c.i"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/roboy/BikeToRikshaw/acoustic-levitation/C/trap.c > CMakeFiles/accustic_levi.dir/trap.c.i

CMakeFiles/accustic_levi.dir/trap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/accustic_levi.dir/trap.c.s"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/roboy/BikeToRikshaw/acoustic-levitation/C/trap.c -o CMakeFiles/accustic_levi.dir/trap.c.s

CMakeFiles/accustic_levi.dir/trap.c.o.requires:

.PHONY : CMakeFiles/accustic_levi.dir/trap.c.o.requires

CMakeFiles/accustic_levi.dir/trap.c.o.provides: CMakeFiles/accustic_levi.dir/trap.c.o.requires
	$(MAKE) -f CMakeFiles/accustic_levi.dir/build.make CMakeFiles/accustic_levi.dir/trap.c.o.provides.build
.PHONY : CMakeFiles/accustic_levi.dir/trap.c.o.provides

CMakeFiles/accustic_levi.dir/trap.c.o.provides.build: CMakeFiles/accustic_levi.dir/trap.c.o


CMakeFiles/accustic_levi.dir/main.c.o: CMakeFiles/accustic_levi.dir/flags.make
CMakeFiles/accustic_levi.dir/main.c.o: main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roboy/BikeToRikshaw/acoustic-levitation/C/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/accustic_levi.dir/main.c.o"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/accustic_levi.dir/main.c.o   -c /home/roboy/BikeToRikshaw/acoustic-levitation/C/main.c

CMakeFiles/accustic_levi.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/accustic_levi.dir/main.c.i"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/roboy/BikeToRikshaw/acoustic-levitation/C/main.c > CMakeFiles/accustic_levi.dir/main.c.i

CMakeFiles/accustic_levi.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/accustic_levi.dir/main.c.s"
	/usr/bin/arm-linux-gnueabihf-gcc-5  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/roboy/BikeToRikshaw/acoustic-levitation/C/main.c -o CMakeFiles/accustic_levi.dir/main.c.s

CMakeFiles/accustic_levi.dir/main.c.o.requires:

.PHONY : CMakeFiles/accustic_levi.dir/main.c.o.requires

CMakeFiles/accustic_levi.dir/main.c.o.provides: CMakeFiles/accustic_levi.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/accustic_levi.dir/build.make CMakeFiles/accustic_levi.dir/main.c.o.provides.build
.PHONY : CMakeFiles/accustic_levi.dir/main.c.o.provides

CMakeFiles/accustic_levi.dir/main.c.o.provides.build: CMakeFiles/accustic_levi.dir/main.c.o


# Object files for target accustic_levi
accustic_levi_OBJECTS = \
"CMakeFiles/accustic_levi.dir/peripherals.c.o" \
"CMakeFiles/accustic_levi.dir/trap.c.o" \
"CMakeFiles/accustic_levi.dir/main.c.o"

# External object files for target accustic_levi
accustic_levi_EXTERNAL_OBJECTS =

accustic_levi: CMakeFiles/accustic_levi.dir/peripherals.c.o
accustic_levi: CMakeFiles/accustic_levi.dir/trap.c.o
accustic_levi: CMakeFiles/accustic_levi.dir/main.c.o
accustic_levi: CMakeFiles/accustic_levi.dir/build.make
accustic_levi: CMakeFiles/accustic_levi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/roboy/BikeToRikshaw/acoustic-levitation/C/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable accustic_levi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/accustic_levi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/accustic_levi.dir/build: accustic_levi

.PHONY : CMakeFiles/accustic_levi.dir/build

CMakeFiles/accustic_levi.dir/requires: CMakeFiles/accustic_levi.dir/peripherals.c.o.requires
CMakeFiles/accustic_levi.dir/requires: CMakeFiles/accustic_levi.dir/trap.c.o.requires
CMakeFiles/accustic_levi.dir/requires: CMakeFiles/accustic_levi.dir/main.c.o.requires

.PHONY : CMakeFiles/accustic_levi.dir/requires

CMakeFiles/accustic_levi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/accustic_levi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/accustic_levi.dir/clean

CMakeFiles/accustic_levi.dir/depend:
	cd /home/roboy/BikeToRikshaw/acoustic-levitation/C && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/roboy/BikeToRikshaw/acoustic-levitation/C /home/roboy/BikeToRikshaw/acoustic-levitation/C /home/roboy/BikeToRikshaw/acoustic-levitation/C /home/roboy/BikeToRikshaw/acoustic-levitation/C /home/roboy/BikeToRikshaw/acoustic-levitation/C/CMakeFiles/accustic_levi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/accustic_levi.dir/depend

