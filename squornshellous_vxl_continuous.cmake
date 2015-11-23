# VXL Example Dashboard Script
#
# Copy this example script and edit as necessary for your client.
# See vxl_common.cmake for more instructions.

# Client maintainer: someone@users.sourceforge.net
set(CTEST_SITE "squornshellous.kitware")
set(CTEST_BUILD_NAME "VS12-64-Windows7-Debug")
set(CTEST_BUILD_CONFIGURATION Debug)
set(CTEST_CMAKE_GENERATOR "Visual Studio 12 Win64")
set(CTEST_GIT_COMMAND "c:/Program Files (x86)/Git/bin/git.exe")

set(dashboard_model Experimental)
set(dashboard_git_branch kw/experimental)
set(dashboard_git_url git@github.com:dstoup/vxl.git)

#set(dashboard_do_memcheck 1)
#set(dashboard_do_coverage 1)

set(dashboard_cache "
BUILD_SHARED_LIBS:BOOL=OFF
BUILD_BRL:BOOL=OFF
BUILD_CORE_PROBABILITY:BOOL=ON
BUILD_VGUI:BOOL=ON
QT_QMAKE_EXECUTABLE_FINDQT:FILEPATH=E:/kitware/vision/kwiver-bootstrap/Release/Builds/vision_tpl/install/bin/qmake
FFMPEG_INCLUDE1_DIR:PATH=IGNORE
FFMPEG_INCLUDE2_DIR:PATH=E:/kitware/vision/kwiver-bootstrap/Release/Builds/vision_tpl/install/include
FFMPEG_avcodec_LIBRARY:FILEPATH=E:/kitware/vision/kwiver-bootstrap/Release/Builds/vision_tpl/install/bin/avcodec.lib
FFMPEG_avformat_LIBRARY:FILEPATH=E:/kitware/vision/kwiver-bootstrap/Release/Builds/vision_tpl/install/bin/avformat.lib
FFMPEG_avutil_LIBRARY:FILEPATH=E:/kitware/vision/kwiver-bootstrap/Release/Builds/vision_tpl/install/bin/avutil.lib
FFMPEG_swscale_LIBRARY:FILEPATH=E:/kitware/vision/kwiver-bootstrap/Release/Builds/vision_tpl/install/bin/swscale.lib
")

include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)
