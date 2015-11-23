set PATH=%PATH%;%programfiles(x86)%\Git\bin
set CTEST="c:\Program Files (x86)\CMake\bin\ctest"
e:
cd \kitware\dashboards\vxl\dashboardScripts

%CTEST% -S squornshellous_vxl_release.cmake -VV > logs\release.log

%CTEST% -S squornshellous_vxl_debug.cmake -VV > logs\debug.log

%CTEST% -S squornshellous_vxl_continuous.cmake -VV > logs\continuous.log