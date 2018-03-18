# This is a CMakeLists Template for use in a subdirectory like library

set(SOURCES robot.h util.h)

add_library(${LIB_NAME} ${SOURCES})

target_link_libraries(${LIB_NAME} ${OpenCV_LIBS})
set_target_properties(${LIB_NAME} PROPERTIES LINKER_LANGUAGE CXX)

#-------------------------------------------------------------------
# This is a CMakeLists Template for use in a subdirectory like src

set(SOURCES robot.h util.h)

add_executable(${EXEC_NAME} ${SOURCES})
target_link_libraries(${EXEC_NAME} ${LIB_NAME})


#-------------------------------------------------------------------
# This is a CMakeLists Template for use in a subdirectory like test

# catch.h and main.cc is needed if you use catch framework for testing
set(SOURCES catch.h main.cc robot_tests.cc util_tests.cc base_tests.cc)

add_executable(${TEST_NAME} ${SOURCES})
target_link_libraries(${TEST_NAME} ${LIB_NAME})
