SET(CMAKE_SYSTEM_NAME Linux)

if(NOT DEFINED ENV{DEB_HOST_GNU_TYPE})
  message(FATAL_ERROR "DEB_HOST_GNU_TYPE environment variable not set")
endif()
if(NOT DEFINED ENV{DEB_HOST_MULTIARCH})
  message(FATAL_ERROR "DEB_HOST_MULTIARCH environment variable not set")
endif()

# necessary to force the compiler?
#include(CMakeForceCompiler)
#CMAKE_FORCE_C_COMPILER($ENV{DEB_HOST_GNU_TYPE}-gcc GNU)
#CMAKE_FORCE_CXX_COMPILER($ENV{DEB_HOST_GNU_TYPE}-g++ GNU)
#CMAKE_FORCE_Fortran_COMPILER($ENV{DEB_HOST_GNU_TYPE}-gfortran GNU)

SET(CMAKE_C_COMPILER $ENV{DEB_HOST_GNU_TYPE}-gcc)
SET(CMAKE_CXX_COMPILER $ENV{DEB_HOST_GNU_TYPE}-g++)
SET(CMAKE_Fortran_COMPILER $ENV{DEB_HOST_GNU_TYPE}-gfortran)

SET(CMAKE_LIBRARY_ARCHITECTURE $ENV{DEB_HOST_MULTIARCH})
SET(PKG_CONFIG_EXECUTABLE $ENV{DEB_HOST_GNU_TYPE}-pkg-config)

