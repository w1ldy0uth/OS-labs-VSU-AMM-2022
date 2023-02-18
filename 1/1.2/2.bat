@echo off
setlocal enabledelayedexpansion

if "%~1" == "" (
  echo Error: Directory name is required as a parameter.
  goto end
)

set "dirpath=%1"
set /a count = 0
for /r %dirpath% %%i in (*.sys) do (
  echo %%i
  set /a count += 1
)

echo Number of .sys files in "%dirpath%": %count%

:end
endlocal