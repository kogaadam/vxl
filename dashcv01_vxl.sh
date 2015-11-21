# this script runs dashboards on the machine

/Users/kitware/cmake/install/v3.0.0-rc4/bin/ctest -S dashcv01_vxl_release.cmake -VV >& logs/release.log
/Users/kitware/cmake/install/v3.0.0-rc4/bin/ctest -S dashcv01_vxl_debug.cmake -VV >& logs/debug.log
#/usr/bin/ctest -S dashcv01_vxl_continuous.cmake -VV >& logs/continuous.log
