message(STATUS "Conan: Setting up...")

include(${CMAKE_BUILD_DIR}/conan/conanbuildinfo.cmake)
conan_basic_setup()

message(STATUS "Conan: Setup successfully")
