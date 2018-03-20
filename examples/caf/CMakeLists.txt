cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-caf)

hunter_add_package(caf)
find_package(caf CONFIG REQUIRED)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_executable(caf_hello_world caf_hello_world.cpp)
target_link_libraries(caf_hello_world  caf::libcaf_core_static Threads::Threads)

if (WIN32)
  target_link_libraries(caf_hello_world  ws2_32 psapi iphlpapi)
endif()
