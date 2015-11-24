# VXL Example Dashboard Script
#
# Copy this example script and edit as necessary for your client.
# See vxl_common.cmake for more instructions.

# Client maintainer: someone@users.sourceforge.net
set(CTEST_SITE "ceres.kitware")
set(CTEST_BUILD_NAME "GentooLinux-gcc-4.9.3-Release")
set(CTEST_BUILD_FLAGS "-j10")
set(CTEST_BUILD_CONFIGURATION Release)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

set (dashboard_model Nightly)
set (dashboard_binary_name release)

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
VXL_BUILD_DCMTK:BOOL=ON
")

include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)
