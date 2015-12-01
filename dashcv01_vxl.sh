# this script runs dashboards on the machine

cd /Users/kitware/Dashboards/vxl/dashboardScripts

/Users/kitware/cmake/install/v3.0.0-rc4/bin/ctest -S dashcv01_vxl_release.cmake -VV >& logs/release.log
/Users/kitware/cmake/install/v3.0.0-rc4/bin/ctest -S dashcv01_vxl_debug.cmake -VV >& logs/debug.log
/Users/kitware/cmake/install/v3.0.0-rc4/bin/ctest -S dashcv01_vxl_experimental.cmake -VV >& logs/experimental.log
