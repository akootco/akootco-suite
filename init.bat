@echo off
setlocal enabledelayedexpansion

set "GRADLE_FILE=settings.gradle"
for /f "tokens=*" %%l in ('findstr /r "^include " "%GRADLE_FILE%"') do set "INCLUDE_LINE=%%l"

set "INCLUDE_LINE=%INCLUDE_LINE:include =%"
set "INCLUDE_LINE=%INCLUDE_LINE:','='%"

for %%r in (%INCLUDE_LINE%) do (
    set "REPO_NAME=%%~r"
    set "REPO_NAME=!REPO_NAME:'=!"
    call clone.bat !REPO_NAME!
)

echo Done cloning repositories.
