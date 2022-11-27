cmake_minimum_required(VERSION 2.8.12)
project(Terrario)

include(${CMAKE_SOURCE_DIR}/BuildConfig/Directories.cmake)
include(${CMAKE_SOURCE_DIR}/BuildConfig/Compilation.cmake)
include(${CMAKE_SOURCE_DIR}/BuildConfig/Conan.cmake)

add_executable(Terrario main.cpp Sources/WindowLayer/Window.cpp Sources/WindowLayer/Window.h)
target_link_libraries(Terrario ${CONAN_LIBS})