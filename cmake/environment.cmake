# ---------------------------------------------------------------------------
# Environment-specific settings
# ---------------------------------------------------------------------------

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang" AND CMAKE_BUILD_TYPE MATCHES Debug)
    add_compile_options(-fstandalone-debug)
endif()

if (CYGWIN)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++")
endif (CYGWIN)

if (CMAKE_SYSTEM_PROCESSOR MATCHES "arm" OR CMAKE_SYSTEM_PROCESSOR MATCHES "aarch64")
    set(IS_AARCH64 ON)
endif ()
