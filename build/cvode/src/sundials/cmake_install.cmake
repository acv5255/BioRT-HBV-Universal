# Install script for directory: S:/Github/BioRT-HBV-Universal/cvode/src/sundials

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/BioRT")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  MESSAGE("
Install shared components
")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sundials" TYPE FILE FILES
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_band.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_dense.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_direct.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_fnvector.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_iterative.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_linearsolver.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_math.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_matrix.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_mpi.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_mpi_types.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_nonlinearsolver.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_mpi.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_mpi_types.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_nvector.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_pcg.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_sparse.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_spbcgs.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_spfgmr.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_spgmr.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_sptfqmr.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_types.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/sundials/sundials_version.h"
    )
endif()

