# VXL Example Dashboard Script
#
# Copy this example script and edit as necessary for your client.
# See vxl_common.cmake for more instructions.

# Client maintainer: someone@users.sourceforge.net
set(CTEST_SITE "urras.kitware")
set(CTEST_BUILD_NAME "CentOS6Linux-gcc-4.4.7-Release")
set(CTEST_BUILD_FLAGS "-j10") # parallel build for makefiles
set(CTEST_BUILD_CONFIGURATION Release)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

set(dashboard_model Nightly)

set(dashboard_do_memcheck 1)
set(dashboard_do_coverage 1)

set(dashboard_cache "
BUILD_SHARED_LIBS:BOOL=ON
BUILD_BRL:BOOL=OFF
BUILD_CORE_PROBABILITY:BOOL=ON
FFMPEG_INCLUDE1_DIR:PATH=IGNORE
FFMPEG_INCLUDE2_DIR:PATH=IGNORE
FFMPEG_avcodec_LIBRARY:FILEPATH=IGNORE
FFMPEG_avformat_LIBRARY:FILEPATH=IGNORE
FFMPEG_avutil_LIBRARY:FILEPATH=IGNORE
FFMPEG_swscale_LIBRARY:FILEPATH=IGNORE
")

include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)
