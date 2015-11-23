
# VXL Example Dashboard Script
#
# Copy this example script and edit as necessary for your client.
# See vxl_common.cmake for more instructions.

# Client maintainer: someone@users.sourceforge.net
set(CTEST_SITE "dashcv01.kitware")
set(CTEST_BUILD_NAME "Mac-10.10.5-clang-x86_64-Debug")
set(CTEST_BUILD_FLAGS "-j8") # parallel build for makefiles
set(CTEST_BUILD_CONFIGURATION Debug)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

set(dashboard_model Experimental)
set(dashboard_git_branch kw/experimental)
set(dashboard_git_url git@github.com:dstoup/vxl.git)

set(dashboard_cache "
BUILD_SHARED_LIBS:BOOL=ON
BUILD_BRL:BOOL=OFF
BUILD_CORE_PROBABILITY:BOOL=ON
FFMPEG_INCLUDE1_DIR:PATH=IGNORE
FFMPEG_INCLUDE2_DIR:PATH=/Users/kitware/kwiver-bootstrap/build/Builds/vision_tpl/install/include
FFMPEG_avcodec_LIBRARY:FILEPATH=/Users/kitware/kwiver-bootstrap/build/Builds/vision_tpl/install/lib/libavcodec.so
FFMPEG_avformat_LIBRARY:FILEPATH=/Users/kitware/kwiver-bootstrap/build/Builds/vision_tpl/install/lib/libavformat.so
FFMPEG_avutil_LIBRARY:FILEPATH=/Users/kitware/kwiver-bootstrap/build/Builds/vision_tpl/install/lib/libavutil.so
FFMPEG_swscale_LIBRARY:FILEPATH=/Users/kitware/kwiver-bootstrap/build/Builds/vision_tpl/install/lib/libswscale.so
")

include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)
