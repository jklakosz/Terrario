cmake_minimum_required(VERSION 3.23)
project(Terrario VERSION 1.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_OSX_ARCHITECTURES "arm64")
set(CMAKE_FIND_FRAMEWORK FIRST)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -W -Wall -Wextra -Werror -Wpedantic -Wno-long-long -pedantic")

find_library(OPENGL OpenGL REQUIRED)
find_library(OPENAL OpenAL REQUIRED)

find_library(GLFW glfw REQUIRED)
find_library(GLEW GLEW REQUIRED)

include_directories(/opt/homebrew/include/)

add_executable(Terrario main.cpp)

target_link_libraries(Terrario ${OPENGL} ${OPENAL} ${GLFW} ${GLEW})
