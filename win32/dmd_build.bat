@echo off
setlocal EnableDelayedExpansion
set "files="
for %%i in (*.d;*.di) do set files=!files! %%i
dmd -lib -of..\dmd_win32_x32.lib -I..\ -version=Unicode -version=WindowsXP %files% 
