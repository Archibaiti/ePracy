@echo off
setlocal
set "APP_PATH=%~dp0ePracy_Private.html"
set "APP_URL=file:///%APP_PATH:\=/%?reset=1"

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" call :launch "%ProgramFiles%\Google\Chrome\Application\chrome.exe" & exit /b 0
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" call :launch "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" & exit /b 0
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" call :launch "%LocalAppData%\Google\Chrome\Application\chrome.exe" & exit /b 0
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" call :launch "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" & exit /b 0
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" call :launch "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" & exit /b 0

start "" "%APP_URL%"
exit /b 0

:launch
start "" "%~1" "%APP_URL%"
exit /b 0
