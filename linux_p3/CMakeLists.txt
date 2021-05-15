cmake_minimum_required(VERSION 3.1)

project(hello_world)

set(CMake_CXX_STANDARD 17)

set(MyLibraryHeaders	include/MyLibrary.h)
set(MyLibrarySources	src/MyLibrary.cpp)

set(HelloWorldSources    src/hello_world.cpp)

add_library(mylibrary SHARED ${MyLibrarySources} ${MyLibraryHeaders})

target_include_directories(mylibrary PUBLIC include)

find_package(Boost REQUIRED COMPONENTS system thread)

add_executable(hello_world ${HelloWorldSources})

target_link_libraries(hello_world	PRIVATE Boost::thread Boost::system	PRIVATE mylibrary)


