# this script runs dashboards on the machine

/usr/bin/ctest -S ceres_vxl_release.cmake -VV >& logs/release.log
/usr/bin/ctest -S ceres_vxl_debug.cmake -VV >& logs/debug.log
#/usr/bin/ctest -S ceres_vxl_continuous.cmake -VV >& logs/continuous.log
