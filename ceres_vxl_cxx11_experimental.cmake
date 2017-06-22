
# VXL Example Dashboard Script
#
# Copy this example script and edit as necessary for your client.
# See vxl_common.cmake for more instructions.

# Client maintainer: someone@users.sourceforge.net
set(CTEST_SITE "ceres.kitware")
set(CTEST_BUILD_NAME "Fedora24-gcc-5.3.1-6-Debug-exp-shared-cxx11")
set(CTEST_BUILD_FLAGS "-j8")
set(CTEST_BUILD_CONFIGURATION Debug)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

set(dashboard_model Experimental)
set(dashboard_git_branch kw/experimental)
set(dashboard_git_url https://github.com/dstoup/vxl.git)
set (dashboard_binary_name experimental-cxx11)
set (dashboard_source_name src-experimental)

set(dashboard_cache "
BUILD_SHARED_LIBS:BOOL=ON
BUILD_FOR_VXL_DASHBOARD:BOOL=ON
BUILD_CORE_PROBABILITY:BOOL=ON
FFMPEG_INCLUDE1_DIR:PATH=IGNORE
FFMPEG_INCLUDE2_DIR:PATH=IGNORE
FFMPEG_avcodec_LIBRARY:FILEPATH=IGNORE
FFMPEG_avformat_LIBRARY:FILEPATH=IGNORE
FFMPEG_avutil_LIBRARY:FILEPATH=IGNORE
FFMPEG_swscale_LIBRARY:FILEPATH=IGNORE
VXL_BUILD_DCMTK:BOOL=ON
CMAKE_CXX_STANDARD=11
")

include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)

#FFMPEG_INCLUDE2_DIR:PATH=/home/david/kitware/dashboards/kwiver-bootstrap/build/Builds/vision_tpl/install/include
#FFMPEG_avcodec_LIBRARY:FILEPATH=/home/david/kitware/dashboards/kwiver-bootstrap/build/Builds/vision_tpl/install/lib/libavcodec.so
#FFMPEG_avformat_LIBRARY:FILEPATH=/home/david/kitware/dashboards/kwiver-bootstrap/build/Builds/vision_tpl/install/lib/libavformat.so
#FFMPEG_avutil_LIBRARY:FILEPATH=/home/david/kitware/dashboards/kwiver-bootstrap/build/Builds/vision_tpl/install/lib/libavutil.so
#FFMPEG_swscale_LIBRARY:FILEPATH=/home/david/kitware/dashboards/kwiver-bootstrap/build/Builds/vision_tpl/install/lib/libswscale.so
