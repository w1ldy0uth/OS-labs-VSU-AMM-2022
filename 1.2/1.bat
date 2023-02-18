@echo off
setlocal enabledelayedexpansion

if "%1" == "" (
echo Error: Directory name is required as a parameter.
goto end
)

set "dirpath=%1"
set /a count = 0
for /f "delims=" %%a in ('dir /b /ad-h %dirpath%') do set /a count + =1
echo Number of non-hidden subdirectories in "%dirpath%": %count%

:end
endlocal