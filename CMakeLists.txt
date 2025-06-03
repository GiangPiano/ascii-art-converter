cmake_minimum_required(VERSION 3.10)
project(MyApp)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Explicitly tell CMake to use Clang from Homebrew
set(CMAKE_C_COMPILER "/opt/homebrew/opt/llvm/bin/clang")
set(CMAKE_CXX_COMPILER "/opt/homebrew/opt/llvm/bin/clang++")

# Force libc++ instead of default standard library
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++ -I/opt/homebrew/opt/llvm/include/c++/v1")

# Include header files directory
include_directories(${CMAKE_SOURCE_DIR}/include)

# Add source files
add_executable(my_app src/main.cpp src/stb_image.cpp src/stb_image_resize.cpp)
