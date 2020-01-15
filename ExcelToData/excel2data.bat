@echo off
set exePath=%~dp0Tool\DotExcelToDataConsole.exe
set execelDir=%~dp0Excels
set jsonOutput=%~dp0Output\json
set luaOutput=%~dp0Output\lua

echo ================================
echo Export For Client
echo -------------------------------------------------
for %%i in (%execelDir%\*.xlsx) do (
    %exePath% -f %%i -o %luaOutput% --format Lua --platform Client
) 

echo ================================
echo Export For Server
echo -------------------------------------------------
for %%i in (%execelDir%\*.xlsx) do (
    %exePath% -f %%i -o %luaOutput% --format Json --platform Server
) 

pause
