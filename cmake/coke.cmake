cmake_minimum_required(VERSION 3.16)

project(test)

set(CMAKE_CXX_STANDARD 20)

if(BOTH_SUBDIR)
    add_subdirectory(workflow)
    add_subdirectory(coke)
elseif (COKE_SUBDIR)
    find_package(workflow REQUIRED)
    add_subdirectory(coke)
elseif (BOTH_INSTALLED)
    find_package(workflow REQUIRED)
    find_package(coke REQUIRED)
else ()
    message(FATAL_ERROR "Build mode not set!")
endif ()

add_subdirectory(src)
