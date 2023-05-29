cmake_minimum_required(VERSION 3.22)

project(
    BioRT
    VERSION 1.1
    LANGUAGES C    
)

add_subdirectory(cvode)
add_subdirectory(src)