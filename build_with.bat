@echo off
setlocal EnableDelayedExpansion

if "%~1%"=="" (
    echo Error: Pass either 'dmd' or 'gdmd' as compiler to pick for building.
    exit /b 1
)

set compiler=%~1%

set "files="
for %%i in (win32\*.d) do (
    if not %%i == win32\winsock.d set files=!files! %%i
)

if "%compiler%" == "dmd" (
    set outlib=dmd_win32_x32.lib
)

if "%compiler%" == "gdmd" (
    set outlib=gdc_win32_x32.lib
)

if "%outlib%"=="" (
    echo Unrecognized compiler '%compiler%'.
    exit /b 1
)

%compiler% -I. -version=Unicode -version=WindowsXP -lib -of%outlib% %files%
