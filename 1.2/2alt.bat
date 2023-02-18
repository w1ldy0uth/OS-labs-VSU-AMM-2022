@echo off
setlocal enabledelayedexpansion

if "%1" == "" (
  echo Error: Directory name is required as a parameter.
  goto end
)

echo *****
set "dirpath=%1"
set /a count = 0
for /f "delims=" %%i in ('dir /b %dirpath%\*.sys') do (
  echo %%i
  set /a count += 1
)

echo *****
echo Number of .sys files in "%dirpath%": %count%

:end
endlocal