# this script runs dashboards on the machine

cd /home/local/KHQ/kitware/Dashboards/vxl/dashboardScripts

/usr/bin/ctest -S urras_vxl_release.cmake -VV >& logs/release.log
/usr/bin/ctest -S urras_vxl_debug.cmake -VV >& logs/debug.log
/usr/bin/ctest -S urras_vxl_experimental.cmake -VV >& logs/experimental.log
