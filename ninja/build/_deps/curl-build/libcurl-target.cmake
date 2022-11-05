# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.6)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.21)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget CURL::libcurl)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target CURL::libcurl
add_library(CURL::libcurl SHARED IMPORTED)

set_target_properties(CURL::libcurl PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/_deps/curl-src/include"
  INTERFACE_LINK_LIBRARIES "winmm;ws2_32;advapi32;crypt32"
)

# Import target "CURL::libcurl" for configuration "Debug"
set_property(TARGET CURL::libcurl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(CURL::libcurl PROPERTIES
  IMPORTED_IMPLIB_DEBUG "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/_deps/curl-build/lib/Debug/libcurl-d_imp.lib"
  IMPORTED_LOCATION_DEBUG "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/Debug/libcurl-d.dll"
  )

# Import target "CURL::libcurl" for configuration "Release"
set_property(TARGET CURL::libcurl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(CURL::libcurl PROPERTIES
  IMPORTED_IMPLIB_RELEASE "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/_deps/curl-build/lib/Release/libcurl_imp.lib"
  IMPORTED_LOCATION_RELEASE "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/Release/libcurl.dll"
  )

# Import target "CURL::libcurl" for configuration "MinSizeRel"
set_property(TARGET CURL::libcurl APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(CURL::libcurl PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/_deps/curl-build/lib/MinSizeRel/libcurl_imp.lib"
  IMPORTED_LOCATION_MINSIZEREL "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/MinSizeRel/libcurl.dll"
  )

# Import target "CURL::libcurl" for configuration "RelWithDebInfo"
set_property(TARGET CURL::libcurl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(CURL::libcurl PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/_deps/curl-build/lib/RelWithDebInfo/libcurl_imp.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/RelWithDebInfo/libcurl.dll"
  )

# Import target "CURL::libcurl" for configuration "ThreadSan"
set_property(TARGET CURL::libcurl APPEND PROPERTY IMPORTED_CONFIGURATIONS THREADSAN)
set_target_properties(CURL::libcurl PROPERTIES
  IMPORTED_IMPLIB_THREADSAN "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/_deps/curl-build/lib/ThreadSan/libcurl_imp.lib"
  IMPORTED_LOCATION_THREADSAN "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/ThreadSan/libcurl.dll"
  )

# Import target "CURL::libcurl" for configuration "AddrSan"
set_property(TARGET CURL::libcurl APPEND PROPERTY IMPORTED_CONFIGURATIONS ADDRSAN)
set_target_properties(CURL::libcurl PROPERTIES
  IMPORTED_IMPLIB_ADDRSAN "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/_deps/curl-build/lib/AddrSan/libcurl_imp.lib"
  IMPORTED_LOCATION_ADDRSAN "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/AddrSan/libcurl.dll"
  )

# Import target "CURL::libcurl" for configuration "AllSan"
set_property(TARGET CURL::libcurl APPEND PROPERTY IMPORTED_CONFIGURATIONS ALLSAN)
set_target_properties(CURL::libcurl PROPERTIES
  IMPORTED_IMPLIB_ALLSAN "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/_deps/curl-build/lib/AllSan/libcurl_imp.lib"
  IMPORTED_LOCATION_ALLSAN "C:/Users/ALIENWARE/Desktop/bilive/ninja/build/AllSan/libcurl.dll"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
