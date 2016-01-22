

set(ENV{CXXFLAGS} "-g -O0 -Wall -W -Wshadow -Wunused-variable -Wunused-parameter -Wunused-function -Wunused -Wno-system-headers -Wno-deprecated -Woverloaded-virtual -Wwrite-strings -fprofile-arcs -ftest-coverage")
set(ENV{CFLAGS} "-g -O0 -Wall -W -fprofile-arcs -ftest-coverage")
set(ENV{LDFLAGS} "-fprofile-arcs -ftest-coverage")
set(dashboard_do_memcheck ON)
set(dashboard_do_coverage ON)

find_program(CTEST_COVERAGE_COMMAND NAMES gcov gcov)
SET(CTEST_MEMORYCHECK_COMMAND /usr/bin/valgrind)
SET(CTEST_MEMORYCHECK_COMMAND_OPTIONS "--gen-suppressions=all --trace-children=yes --child-silent-after-fork=yes  -q --leak-check=full --show-reachable=no --num-callers=50 -v")

# Client maintainer: someone@users.sourceforge.net
set(CTEST_SITE "urras.kitware")
set(CTEST_BUILD_NAME "CentOS6Linux-gcc-4.4.7-Debug-shared")
set(CTEST_BUILD_FLAGS "-j10") # parallel build for makefiles
set(CTEST_BUILD_CONFIGURATION Debug)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_BUILD_COMMAND "make -j10 -k")


set(dashboard_model Nightly)
set (dashboard_binary_name mem_check)
set (dashboard_source_name src-debug)




set(dashboard_cache "
CMAKE_CXX_COMPILER:FILEPATH=/usr/bin/g++
CMAKE_C_COMPILER:FILEPATH=/usr/bin/gcc
COVERAGE_COMMAND:FILEPATH=/usr/bin/gcov
BUILD_SHARED_LIBS:BOOL=ON
BUILD_FOR_VXL_DASHBOARD:BOOL=ON
BUILD_CORE_PROBABILITY:BOOL=ON
VXL_BUILD_DCMTK:BOOL=ON
FFMPEG_INCLUDE1_DIR:PATH=IGNORE
FFMPEG_INCLUDE2_DIR:PATH=IGNORE
FFMPEG_avcodec_LIBRARY:FILEPATH=IGNORE
FFMPEG_avformat_LIBRARY:FILEPATH=IGNORE
FFMPEG_avutil_LIBRARY:FILEPATH=IGNORE
FFMPEG_swscale_LIBRARY:FILEPATH=IGNORE
")
include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)
