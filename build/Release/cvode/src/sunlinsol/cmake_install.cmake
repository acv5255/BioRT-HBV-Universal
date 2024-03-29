# Install script for directory: S:/Github/BioRT-HBV-Universal/cvode/src/sunlinsol

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("S:/Github/BioRT-HBV-Universal/build/Release/cvode/src/sunlinsol/band/cmake_install.cmake")
  include("S:/Github/BioRT-HBV-Universal/build/Release/cvode/src/sunlinsol/dense/cmake_install.cmake")
  include("S:/Github/BioRT-HBV-Universal/build/Release/cvode/src/sunlinsol/pcg/cmake_install.cmake")
  include("S:/Github/BioRT-HBV-Universal/build/Release/cvode/src/sunlinsol/spbcgs/cmake_install.cmake")
  include("S:/Github/BioRT-HBV-Universal/build/Release/cvode/src/sunlinsol/spfgmr/cmake_install.cmake")
  include("S:/Github/BioRT-HBV-Universal/build/Release/cvode/src/sunlinsol/spgmr/cmake_install.cmake")
  include("S:/Github/BioRT-HBV-Universal/build/Release/cvode/src/sunlinsol/sptfqmr/cmake_install.cmake")

endif()

