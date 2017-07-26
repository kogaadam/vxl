set(CTEST_SITE "titan")
set(CTEST_BUILD_NAME "Fedora24-gcc-5.3.1-6-Release-shared-cxx11-Clang_Analysis")
set(CTEST_BUILD_FLAGS "-j10")
set(CTEST_BUILD_CONFIGURATION Release)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

set(dashboard_git_branch exclude_stl_errors)
set(dashboard_git_url https://github.com/adam.kogan/vxl.git)


set (dashboard_model Nightly)
set (dashboard_binary_name release-cxx11)
set (dashboard_source_name src-release)

set(dashboard_root_name MyTestsClang)
set(CTEST_BUILD_COMMAND "make -j8 -k")
set(ENV{CC} /usr/libexec/clang-analyzer/scan-build/ccc-analyzer)
set(ENV{CXX} /usr/libexec/clang-analyzer/scan-build/c++-analyzer)
#set(CTEST_DASHBOARD_ROOT "/home/kitware/dashboard/kwiver-bootstrap/DashboardScripts/MyTestsRel\
#ease/vxl-build/vxl_nightly_coverage")
set(CTEST_SCRIPT_DIRECTORY "/data/adam.kogan/code/vxl/vxl-dashboard-scripts")

#set(CTEST_BINARY_DIRECTORY "/data/adam.kogan/code/vxl/MyTestsClang/release-cxx11/bin")
#ctest_configure(BUILD "/data/adam.kogan/code/vxl/MyTestsClang/release-cxx11")
#ctest_read_custom_files(${CTEST_BINARY_DIRECTORY})
#message("READING CUSTOM FILES")
#ctest_read_custom_files("/data/adam.kogan/code/vxl/MyTestsClang/src-release/config/cmake/Modules")

#[[
set(CTEST_CUSTOM_WARNING_EXCEPTION
  ${CTEST_CUSTOM_WARNING_EXCEPTION}

  "char_traits.h:.*: warning: Null pointer argument in call to string length function"
  "stl_construct.h:.*: warning: Forming reference to null pointer"
  ".*stl_uninitialized.*: warning: Forming reference to null pointer.*"
  ".*stl_vector.h:.*: warning: Returning null reference"
  "warning: Value stored to 'yymsg' is never read"
  "warning: Value stored to 'yytoken' is never read"
  "index_encoder.c.241.2. warning: Value stored to .out_start. is never read"
  "index.c.*warning: Access to field.*results in a dereference of a null pointer.*loaded from variable.*"
  "cm_sha2.*warning: Value stored to.*is never read"
  "testProcess.*warning: Dereference of null pointer .loaded from variable .invalidAddress.."
)
]]

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
