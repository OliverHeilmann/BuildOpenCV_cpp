# Use a CMake version above 3.17... mine is 3.21 for example.
# You can check with running 'cmake --version' in terminal...
cmake_minimum_required(VERSION "3.17")

# name of this example project
project(opencvBuild)

# set OpenCV_DIR variable equal to the path to the cmake
# files within the previously installed opencv program
set(OpenCV_DIR /Users/Oliver/Documents/CODING/Packages/opencv/install/lib/cmake/opencv4) # INPUT YOUR DIRECTORY OPENCV HERE!

# configure cmake to C++ 17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# configure the necessary common CMake environment variables
# needed to include and link the OpenCV program into this
# test project, namely OpenCV_INCLUDE_DIRS and OpenCV_LIBS
find_package( OpenCV REQUIRED )

# tell the build to include the headers from OpenCV
include_directories( ${OpenCV_INCLUDE_DIRS} )

# specify the executable target to be built
add_executable(opencvBuild cpptest.cpp)

# tell it to link the executable target against OpenCV
target_link_libraries(opencvBuild ${OpenCV_LIBS} )

# TERMINAL COMMANDS TO RUN:
#   --> sh BuildApp.sh
# See contents of bash script for more information.