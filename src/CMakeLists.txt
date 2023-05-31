cmake_minimum_required(VERSION 3.1.3)

file(GLOB biort_srcs "*.c")

add_executable(
    biort
    ${biort_srcs}
)


IF(WIN32)
    add_compile_definitions(
        /DWIN32
    )
ENDIF()

target_include_directories(
    biort PRIVATE 
    ${BioRT_SOURCE_DIR}/build/cvode/include
    ${BioRT_SOURCE_DIR}/cvode/include
    ${BioRT_SOURCE_DIR}/src/include
)

IF(NOT WIN32)
target_link_directories(
    biort PRIVATE
    ${BioRT_SOURCE_DIR}/build/cvode/src/cvode
    ${BioRT_SOURCE_DIR}/build/cvode/src/nvector/serial
)
ENDIF()

if(WIN32)
target_link_directories(
    biort PRIVATE
    ${BioRT_SOURCE_DIR}/build/cvode/src/cvode/Debug
    ${BioRT_SOURCE_DIR}/build/cvode/src/nvector/serial/Debug
)
ENDIF()

target_link_libraries(
    biort PRIVATE
    sundials_cvode
    sundials_nvecserial
    #cvode
)

if (NOT WIN32)
target_link_libraries(biort PRIVATE m)
ENDIF()

add_dependencies(biort sundials_cvode_static)
add_dependencies(biort sundials_nvecserial_static)

set(CMAKE_INSTALL_PREFIX ${BioRT_SOURCE_DIR})
