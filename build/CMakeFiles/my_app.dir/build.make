# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = "D:\OneDrive - UTS\Project\ImgToASCII"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\OneDrive - UTS\Project\ImgToASCII\build"

# Include any dependencies generated for this target.
include CMakeFiles/my_app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my_app.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my_app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_app.dir/flags.make

CMakeFiles/my_app.dir/codegen:
.PHONY : CMakeFiles/my_app.dir/codegen

CMakeFiles/my_app.dir/src/main.cpp.obj: CMakeFiles/my_app.dir/flags.make
CMakeFiles/my_app.dir/src/main.cpp.obj: CMakeFiles/my_app.dir/includes_CXX.rsp
CMakeFiles/my_app.dir/src/main.cpp.obj: D:/OneDrive\ -\ UTS/Project/ImgToASCII/src/main.cpp
CMakeFiles/my_app.dir/src/main.cpp.obj: CMakeFiles/my_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\OneDrive - UTS\Project\ImgToASCII\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_app.dir/src/main.cpp.obj"
	D:\Program\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_app.dir/src/main.cpp.obj -MF CMakeFiles\my_app.dir\src\main.cpp.obj.d -o CMakeFiles\my_app.dir\src\main.cpp.obj -c "D:\OneDrive - UTS\Project\ImgToASCII\src\main.cpp"

CMakeFiles/my_app.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/my_app.dir/src/main.cpp.i"
	D:\Program\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\OneDrive - UTS\Project\ImgToASCII\src\main.cpp" > CMakeFiles\my_app.dir\src\main.cpp.i

CMakeFiles/my_app.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/my_app.dir/src/main.cpp.s"
	D:\Program\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\OneDrive - UTS\Project\ImgToASCII\src\main.cpp" -o CMakeFiles\my_app.dir\src\main.cpp.s

CMakeFiles/my_app.dir/src/stb_image.cpp.obj: CMakeFiles/my_app.dir/flags.make
CMakeFiles/my_app.dir/src/stb_image.cpp.obj: CMakeFiles/my_app.dir/includes_CXX.rsp
CMakeFiles/my_app.dir/src/stb_image.cpp.obj: D:/OneDrive\ -\ UTS/Project/ImgToASCII/src/stb_image.cpp
CMakeFiles/my_app.dir/src/stb_image.cpp.obj: CMakeFiles/my_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\OneDrive - UTS\Project\ImgToASCII\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/my_app.dir/src/stb_image.cpp.obj"
	D:\Program\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_app.dir/src/stb_image.cpp.obj -MF CMakeFiles\my_app.dir\src\stb_image.cpp.obj.d -o CMakeFiles\my_app.dir\src\stb_image.cpp.obj -c "D:\OneDrive - UTS\Project\ImgToASCII\src\stb_image.cpp"

CMakeFiles/my_app.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/my_app.dir/src/stb_image.cpp.i"
	D:\Program\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\OneDrive - UTS\Project\ImgToASCII\src\stb_image.cpp" > CMakeFiles\my_app.dir\src\stb_image.cpp.i

CMakeFiles/my_app.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/my_app.dir/src/stb_image.cpp.s"
	D:\Program\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\OneDrive - UTS\Project\ImgToASCII\src\stb_image.cpp" -o CMakeFiles\my_app.dir\src\stb_image.cpp.s

# Object files for target my_app
my_app_OBJECTS = \
"CMakeFiles/my_app.dir/src/main.cpp.obj" \
"CMakeFiles/my_app.dir/src/stb_image.cpp.obj"

# External object files for target my_app
my_app_EXTERNAL_OBJECTS =

my_app.exe: CMakeFiles/my_app.dir/src/main.cpp.obj
my_app.exe: CMakeFiles/my_app.dir/src/stb_image.cpp.obj
my_app.exe: CMakeFiles/my_app.dir/build.make
my_app.exe: CMakeFiles/my_app.dir/linkLibs.rsp
my_app.exe: CMakeFiles/my_app.dir/objects1.rsp
my_app.exe: CMakeFiles/my_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="D:\OneDrive - UTS\Project\ImgToASCII\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable my_app.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\my_app.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_app.dir/build: my_app.exe
.PHONY : CMakeFiles/my_app.dir/build

CMakeFiles/my_app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\my_app.dir\cmake_clean.cmake
.PHONY : CMakeFiles/my_app.dir/clean

CMakeFiles/my_app.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\OneDrive - UTS\Project\ImgToASCII" "D:\OneDrive - UTS\Project\ImgToASCII" "D:\OneDrive - UTS\Project\ImgToASCII\build" "D:\OneDrive - UTS\Project\ImgToASCII\build" "D:\OneDrive - UTS\Project\ImgToASCII\build\CMakeFiles\my_app.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/my_app.dir/depend

