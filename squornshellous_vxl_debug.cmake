
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

set(dashboard_model Nightly)
set (dashboard_binary_name debug)

set(dashboard_cache "
BUILD_SHARED_LIBS:BOOL=OFF
BUILD_FOR_VXL_DASHBOARD:BOOL=ON
BUILD_CORE_PROBABILITY:BOOL=ON
BUILD_VGUI:BOOL=ON
VXL_BUILD_DCMTK:BOOL=ON
QT_QMAKE_EXECUTABLE_FINDQT:FILEPATH=E:/kitware/vision/kwiver-bootstrap/Release/Builds/vision_tpl/install/bin/qmake
FFMPEG_INCLUDE1_DIR:PATH=IGNORE
FFMPEG_INCLUDE2_DIR:PATH=IGNORE
FFMPEG_avcodec_LIBRARY:FILEPATH=IGNORE
FFMPEG_avformat_LIBRARY:FILEPATH=IGNORE
FFMPEG_avutil_LIBRARY:FILEPATH=IGNORE
FFMPEG_swscale_LIBRARY:FILEPATH=IGNORE
")

include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)
