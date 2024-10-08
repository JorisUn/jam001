if(CMAKE_SYSTEM_NAME STREQUAL "Windows")
  if(CMAKE_SYSTEM_PROCESSOR STREQUAL "ARM64")
    set(HV_PLATFORM_ID "win-a64")
  elseif(CMAKE_SYSTEM_PROCESSOR STREQUAL "AMD64")
    set(HV_PLATFORM_ID "win-x64")
  elseif(CMAKE_SYSTEM_PROCESSOR STREQUAL "x86_64")
    # MinGW
    set(HV_PLATFORM_ID "win-x64")
  else()
    message(FATAL_ERROR "Unsupported target processor ${CMAKE_SYSTEM_PROCESSOR}")
  endif()
elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  if(CMAKE_SYSTEM_PROCESSOR STREQUAL "aarch64")
    set(HV_PLATFORM_ID "linux-a64")
  elseif(CMAKE_SYSTEM_PROCESSOR STREQUAL "x86_64")
    set(HV_PLATFORM_ID "linux-x64")
  else()
    message(FATAL_ERROR "Unsupported target processor ${CMAKE_SYSTEM_PROCESSOR}")
  endif()
else()
  message(FATAL_ERROR "Unsupported target system ${CMAKE_SYSTEM_NAME}")
endif()
