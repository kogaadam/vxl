# this script runs dashboards on the machine

cd /Users/testuser/Dashboard/vxl/dashboardScripts

/usr/bin/ctest -S muspel_vxl_release.cmake -VV >& logs/release.log
/usr/bin/ctest -S muspel_vxl_debug.cmake -VV >& logs/debug.log
/usr/bin/ctest -S muspel_vxl_experimental.cmake -VV >& logs/experimental.log
