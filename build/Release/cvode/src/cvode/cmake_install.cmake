# Install script for directory: S:/Github/BioRT-HBV-Universal/cvode/src/cvode

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "S:/Github/BioRT-HBV-Universal/out/install/Release")
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
Install CVODE
")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "S:/Github/BioRT-HBV-Universal/build/Release/cvode/src/cvode/sundials_cvode.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cvode" TYPE FILE FILES
    "S:/Github/BioRT-HBV-Universal/cvode/include/cvode/cvode.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/cvode/cvode_bandpre.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/cvode/cvode_bbdpre.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/cvode/cvode_diag.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/cvode/cvode_direct.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/cvode/cvode_ls.h"
    "S:/Github/BioRT-HBV-Universal/cvode/include/cvode/cvode_spils.h"
    )
endif()

