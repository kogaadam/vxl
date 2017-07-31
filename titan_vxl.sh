# this script runs dashboards on the machine

cd /home/kitware/dashboards/vxl/dashboardScripts

/home/kitware/dashboard/cmake/cmake-3.8.1-install/bin/ctest -S titan_vxl_clang_analysis.cmake -VV >& logs/cxx11_release.log
