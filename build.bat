@echo off

rem  Inno Setup
rem  Copyright (C) 1997-2025 Jordan Russell
rem  Portions by Martijn Laan
rem  For conditions of distribution and use, see LICENSE.TXT.
rem
rem  Batch file to prepare is7z.dll, is7zxa.dll, is7xr.dll
rem
rem  This batch files does the following things:
rem  -Compile 7z.dll, 7zxa.dll, and 7zxr.dll
rem  -Copy them to issrc Files
rem  -Synch them to issrc Projects\Bin

setlocal

cd /d %~dp0

if exist buildsettings.bat goto buildsettingsfound
:buildsettingserror
echo buildsettings.bat is missing or incomplete. It needs to be created
echo with the following line, adjusted for your system:
echo.
echo   set ISSRCROOT=C:\Issrc
goto failed2

:buildsettingsfound
set ISSRCROOT=
call .\buildsettings.bat
if "%ISSRCROOT%"=="" goto buildsettingserror


call .\compile.bat %1
if errorlevel 1 goto failed
echo Compiling done

echo - Copying  to issrc\Files
copy Cpp\7zip\Bundles\Format7zF\o\7z.dll "%ISSRCROOT%\Files\is7z.dll"
copy Cpp\7zip\Bundles\Format7zExtract\o\7zxa.dll "%ISSRCROOT%\Files\is7zxa.dll"
copy Cpp\7zip\Bundles\Format7zExtractR\o\7zxr.dll "%ISSRCROOT%\Files\is7zxr.dll"
if errorlevel 1 goto failed
call "%ISSRCROOT%\Projects\Bin\synch-isfiles.bat" nopause
if errorlevel 1 goto failed

echo All done!
pause
exit /b 0

:failed
echo *** FAILED ***
pause
:failed2
exit /b 1