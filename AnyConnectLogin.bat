@echo off

if not "%ANY_CONNECT_AUTOLOGIN%"=="running" (
    set ANY_CONNECT_AUTOLOGIN=running
    start /min cmd /c,"%~0" %*
    exit
)

echo star AnyConnectLogin...
cd %~dp0
powershell -NoProfile -ExecutionPolicy Unrestricted .\autologin.ps1 %1
echo end
