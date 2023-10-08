# Install script for directory: C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/src/sundials

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  MESSAGE("
Install shared components
")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sundials" TYPE FILE FILES
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_band.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_dense.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_direct.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_fnvector.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_iterative.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_linearsolver.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_math.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_matrix.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_mpi.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_mpi_types.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_nonlinearsolver.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_mpi.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_mpi_types.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_nvector.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_pcg.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_sparse.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_spbcgs.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_spfgmr.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_spgmr.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_sptfqmr.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_types.h"
    "C:/Users/avier/OneDrive/Documents/GitHub/BioRT-HBV-Universal/cvode/include/sundials/sundials_version.h"
    )
endif()

