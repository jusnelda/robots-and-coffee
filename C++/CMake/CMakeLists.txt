# This is a CMakeLists template

# CMake version and project name
cmake_minimum_required(VERSION 3.5.1)
set(PROJECT_NAME Robot)
set(EXEC_NAME robot_exec)
set(LIB_NAME robot)
set(TEST_NAME robot_test)

project(${PROJECT_NAME})

# ---------------- External Packages -------------------------------------------
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
link_directories(${OpenCV_LIBRARY_DIRS})
# Simple output to console
#message(STATUS ${OpenCV_LIBS})

# ---------------- Flags -------------------------------------------------------
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")

# ---------------- Basic Project -----------------------------------------------
# add the actual code here for a simple project
#add_executable(robot robot.cc)

# ---------------- Add subdirectories ------------------------------------------
add_subdirectory(src)
add_subdirectory(library)
add_subdirectory(test)
