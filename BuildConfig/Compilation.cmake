message(STATUS "Compilation: Setting up...")

## Set C++ version
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_GENERATOR_PLATFORM x64)

if (WIN32)
    message(STATUS "Compilation: Using WIN32")

    ## Set compilation flags
    set(CMAKE_CXX_FLAGS                "${CMAKE_CXX_FLAGS}")
    set(CMAKE_CXX_FLAGS_DEBUG          "${CMAKE_CXX_FLAGS_DEBUG}          ")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} ")
    set(CMAKE_CXX_FLAGS_RELEASE        "${CMAKE_CXX_FLAGS_RELEASE}        ")
    set(CMAKE_CXX_FLAGS_MINSIZEREL     "${CMAKE_CXX_FLAGS_MINSIZEREL}     ")

    ## Fix compilation flags
    if (CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
        string(REGEX REPLACE "/W[0-4]" "/W4" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
    else ()
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
    endif ()
else ()
    message(STATUS "Compilation: Using OSx")

    ## Set compilation flags
    set(CMAKE_CXX_FLAGS                "${CMAKE_CXX_FLAGS} -W -Wall -Wextra -Wpedantic -Wno-long-long -pedantic")
    set(CMAKE_CXX_FLAGS_DEBUG          "${CMAKE_CXX_FLAGS_DEBUG}          -g")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -Werror -O3")
    set(CMAKE_CXX_FLAGS_RELEASE        "${CMAKE_CXX_FLAGS_RELEASE}        -Werror -O3")
    set(CMAKE_CXX_FLAGS_MINSIZEREL     "${CMAKE_CXX_FLAGS_MINSIZEREL}     -Werror -O3")

    ## Set compiler
    set(CMAKE_CXX_COMPILER clang++)
    set(CMAKE_C_COMPILER clang)

    ## Set MacOS relative stuff
    set(CMAKE_FIND_FRAMEWORK FIRST)
endif ()

message(STATUS "Compilation: Setup successfully")
