set PATH=%PATH%;%programfiles(x86)%\Git\bin
set CTEST="C:\dashboards\cmake-3.4.0\bin\ctest"
c:
cd \dashboards\vxl\dashboardScripts

%CTEST% -S osiris_vxl_release.cmake -VV > logs\release.log

%CTEST% -S osiris_vxl_debug.cmake -VV > logs\debug.log

%CTEST% -S osiris_vxl_experimental.cmake -VV > logs\experimental.log
