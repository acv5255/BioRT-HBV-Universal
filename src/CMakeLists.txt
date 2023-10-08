cmake_minimum_required(VERSION 3.1.3)

file(GLOB biort_srcs "*.c")

add_executable(
    biort
    ${biort_srcs}
)


if(WIN32)
	if(MSVC)
		add_compile_definitions(/DWIN32)
		target_link_directories(biort PRIVATE /MT)
	else()
		add_compile_definitions(-DWIN32)
	endif()
endif()

IF(WIN32)
    add_compile_definitions(
        /DWIN32
    )
ELSE()
    add_compile_definitions(
        O2
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
    ${BioRT_SOURCE_DIR}/out/build/cvode/src/cvode
    ${BioRT_SOURCE_DIR}/out/build/cvode/src/nvector/serial
)
ENDIF()

if(WIN32)
target_link_directories(
    biort PRIVATE
    ${BioRT_SOURCE_DIR}/out/build/Release/cvode/src/cvode
    ${BioRT_SOURCE_DIR}/out/build/Release/cvode/src/nvector/serial
)
ENDIF()

if (WIN32)
	target_link_libraries(
	    biort PRIVATE
	    sundials_cvode
	    sundials_nvecserial
	    ucrt
	    vcruntime
	)
else()
	target_link_libraries(
	    biort PRIVATE
	    sundials_cvode
	    sundials_nvecserial
	)
endif()

if (NOT WIN32)
target_link_libraries(biort PRIVATE m)
ENDIF()

add_dependencies(biort sundials_cvode_static)
add_dependencies(biort sundials_nvecserial_static)

set(CMAKE_INSTALL_PREFIX ${BioRT_SOURCE_DIR})
