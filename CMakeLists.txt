cmake_minimum_required(VERSION 3.1.3)

project(
    BioRT
    VERSION 1.1
    LANGUAGES C    
)

if (WIN32)
    add_compile_options(/MT /w)
endif()

add_subdirectory(cvode)
add_subdirectory(src)
