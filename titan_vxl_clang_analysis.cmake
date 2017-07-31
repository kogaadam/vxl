set(CTEST_SITE "titan")
set(CTEST_BUILD_NAME "Fedora24-gcc-5.3.1-6-Release-shared-cxx11-Clang_Analysis")
set(CTEST_BUILD_FLAGS "-j10")
set(CTEST_BUILD_CONFIGURATION Release)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

set(dashboard_git_branch exclude_stl_errors)
set(dashboard_git_url https://kwgitlab.kitware.com/david.stoup/vxl-dashboard-scripts)

set (dashboard_model Experimental)
set (dashboard_binary_name release-cxx11)
set (dashboard_source_name src-release)

set(dashboard_root_name MyTestsClang)
set(CTEST_BUILD_COMMAND "make -j8 -k")
set(ENV{CC} /usr/libexec/clang-analyzer/scan-build/ccc-analyzer)
set(ENV{CXX} /usr/libexec/clang-analyzer/scan-build/c++-analyzer)
set(CTEST_SCRIPT_DIRECTORY "/home/kitware/dashboards/vxl/dashboardScripts")

set(CTEST_CUSTOM_WARNING_EXCEPTION
  ${CTEST_CUSTOM_WARNING_EXCEPTION}

  "[0-9,]+ warnings? generated."

  ".*stl_algo.h:.*: warning: The .* operand of '<' is a garbage value.*"
  ".*stl_pair.h:.*: warning: Assigned value is garbage or undefined.*"
  ".*stl_algobase.h:.*: warning: The .* operand of '<' is a garbage value.*"
  ".*stl_construct.h:.*: warning: Forming reference to null pointer.*"
  ".*stl_uninitialized.*: warning: Forming reference to null pointer.*"
  ".*stl_vector.h:.*: warning: Returning null reference"
)

set(dashboard_cache "

VXL_DIR:PATH=/home/kitware/dashboard/kwiver-bootstrap/DashboardScripts/MyTestsRelease/vidtk-bo\
otstrap-build/Builds/vxl

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
ENABLE_CAFFE_DESCRIPTOR:BOOL=FALSE
CMAKE_CXX_STANDARD=11
")

include(${CTEST_SCRIPT_DIRECTORY}/vxl_common.cmake)
