set PATH=%PATH%;%programfiles(x86)%\Git\bin
set CTEST="c:\dashboards\cmake-3.4.0-win32-x86\bin\ctest"
c:
cd \dashboards\vxl\dashboardScripts

%CTEST% -S orcstone_vxl_release.cmake -VV > logs\release.log

%CTEST% -S orcstone_vxl_debug.cmake -VV > logs\debug.log

%CTEST% -S orcstone_vxl_experimental.cmake -VV > logs\experimental.log
