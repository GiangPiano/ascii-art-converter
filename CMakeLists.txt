cmake_minimum_required(VERSION 3.10)
project(MyApp)

set(CMAKE_CXX_STANDARD 17)

# Include header files directory
include_directories(${CMAKE_SOURCE_DIR}/include)

# Add source files
add_executable(my_app src/main.cpp src/stb_image.cpp)
