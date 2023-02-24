@echo off
setlocal enabledelayedexpansion

if "%1" == "" (
  echo Error: composer name is required as a parameter.
  goto :end
)

echo Attempting to delete all %1's tracks.

for /f "delims=" %%i in ('dir /b .\attributes\composers') do (
  if "%%i" == "%1" (
    Rem delete composer here (it works)
    goto :rmTracks
  )
)
echo No %1's tracks found, exiting.
goto :end

:rmTracks
set composerHandler =
for /f "delims=" %%i in ('dir /b tracks') do (
  set /p composerHandler =< ./tracks/%%i/composer.txt
  if "%composerHandler%" == "%1" (
    Rem delete track here (it doesn't work for now)
    echo Indaif
  )
)
echo All %1's tracks was deleted, exiting.

:end
endlocal