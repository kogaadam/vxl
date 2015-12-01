# this script runs dashboards on the machine

cd /home/kitware/dashboards/vxl/dashboardScripts

/usr/bin/ctest -S ceres_vxl_release.cmake -VV >& logs/release.log
/usr/bin/ctest -S ceres_vxl_debug.cmake -VV >& logs/debug.log
/usr/bin/ctest -S ceres_vxl_experimental.cmake -VV >& logs/experimental.log
