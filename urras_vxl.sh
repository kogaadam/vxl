# this script runs dashboards on the machine

/home/local/KHQ/kitware/cmake/v3.2.2/bin/ctest -S urras_vxl_release.cmake -VV >& logs/release.log
/home/local/KHQ/kitware/cmake/v3.2.2/bin/ctest -S urras_vxl_debug.cmake -VV >& logs/debug.log
/usr/bin/ctest -S urras_vxl_experimental.cmake -VV >& logs/experimental.log
