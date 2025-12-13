cmake_minimum_required(VERSION 3.16)

project(test)

set(CMAKE_CXX_STANDARD 20)

if(DEFINED BOTH_SUBDIR)
    add_subdirectory(workflow)
    add_subdirectory(coke)
elseif (DEFINED COKE_SUBDIR)
    find_package(workflow REQUIRED)
    add_subdirectory(coke)
else ()
    find_package(workflow REQUIRED)
    find_package(coke REQUIRED)
endif ()

add_subdirectory(src)
