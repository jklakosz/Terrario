message(STATUS "Directories: Setting up...")

set(ROOT_DIR ${CMAKE_SOURCE_DIR})

set(CMAKE_BUILD_DIR ${ROOT_DIR}/.Build)

set(RESOURCES_DIR ${ROOT_DIR}/Resources)
set(SOURCES_DIR   ${ROOT_DIR}/Sources)

set(SOURCES_CLIENT_DIR ${SOURCES_DIR}/Client)
set(SOURCES_SERVER_DIR ${SOURCES_DIR}/Server)

message(STATUS "Directories: Setup successfully")
