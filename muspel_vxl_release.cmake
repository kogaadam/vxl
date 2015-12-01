# VXL Example Dashboard Script
#
# Copy this example script and edit as necessary for your client.
# See vxl_common.cmake for more instructions.

# Client maintainer: someone@users.sourceforge.net
set(CTEST_SITE "muspel.kitware")
set(CTEST_BUILD_NAME "Mac-10.9.5-clang-x86_64-Release-shared")
set(CTEST_BUILD_FLAGS "-j10") # parallel build for makefiles
set(CTEST_BUILD_CONFIGURATION Release)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

set(dashboard_model Nightly)
set(dashboard_binary_name release)
set(dashboard_source_name src-release)

set(dashboard_cache "
BUILD_SHARED_LIBS:BOOL=ON
BUILD_FOR_VXL_DASHBOARD:BOOL=ON
BUILD_CORE_PROBABILITY:BOOL=ON
BUILD_VGUI:BOOL=OFF
VXL_BUILD_DCMTK:BOOL=ON
FFMPEG_INCLUDE1_DIR:PATH=IGNORE
FFMPEG_INCLUDE2_DIR:PATH=IGNORE
FFMPEG_avcodec_LIBRARY:FILEPATH=IGNORE
FFMPEG_avformat_LIBRARY:FILEPATH=IGNORE
FFMPEG_avutil_LIBRARY:FILEPATH=IGNORE
FFMPEG_swscale_LIBRARY:FILEPATH=IGNORE
")

include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)
