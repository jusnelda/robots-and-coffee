# This is a CMakeLists template

# CMake version and project name
cmake_minimum_required(VERSION 3.0)
set(PROJECT_NAME robot)

# ---------------- Flags -------------------------------------------------------
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

# ---------------- Basic Project -----------------------------------------------
# add the actual code
add_executable(robot robot.cc)

