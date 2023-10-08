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
ELSE()
    add_compile_definitions(
        O2
    )
ENDIF()

if(WIN32)
    add_compile_options(
        /MT
    )
endif()

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
    ${BioRT_SOURCE_DIR}/build/cvode/src/cvode/Release
    ${BioRT_SOURCE_DIR}/build/cvode/src/nvector/serial/Release
)
ENDIF()

if (WIN32)
	target_link_libraries(
	    biort PRIVATE
        # libucrt
	    libvcruntime
	    sundials_cvode
	    sundials_nvecserial
	)
else()
	target_link_libraries(
	    biort PRIVATE
        m
	    sundials_cvode
	    sundials_nvecserial
	)
endif()

add_dependencies(biort sundials_cvode_static)
add_dependencies(biort sundials_nvecserial_static)

set(CMAKE_INSTALL_PREFIX ${BioRT_SOURCE_DIR})
