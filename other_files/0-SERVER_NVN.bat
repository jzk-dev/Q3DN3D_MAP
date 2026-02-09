rem in folder Quake 3 Arena

rem start quake3.exe +set fs_game excessiveplus +set vm_game 0 +set vm_cgame 2 +set vm_ui 2 +exec conf\server_nvn.cfg
rem local start quake3.exe +set fs_game excessiveplus +set dedicated 0 +exec conf\server_nvn.cfg
cd /d "%~dp0"
start quake3.exe +set fs_game excessiveplus +set dedicated 2 +exec conf\server_nvn.cfg

