@echo off
set ver=%~2
if "%~1"=="/?" goto help
if "%~1"=="/B" goto build
if "%~1"=="/C" goto cleanup
echo Sorry, "%~1" isn't a valid option
echo.

:help
echo OTN Buildificator v0.1 Usage
echo ==============================================================================================
echo /? = Help
echo /B = Build
echo /C = Clean Up
echo.
echo Building: Build.bat /B 0.1.1
echo Builds OTN Server with buildtag 0.1.1
echo Not providing a buildtag will break the home screen. There's no code preventing this yet.
echo Must be in a "x.x.x" format, and not "x.x.x-x" or "x.x.xx" or else the home screen will break.
goto exit

:build
mkdir Build
cls
echo Buildtag=%ver%
if exist "OTNClient.exe" del /Q OTNClient.exe
echo Compiling OTN Client installer...
7z.exe a -sfx -y OTNClient.exe -r OTNClient\

:startbuild
echo Building OTN Server...
Bat_To_Exe_Converter /bat start.bat /exe build\otn-server.exe /icon icon.ico /include OTNClient.exe /include sfk.exe /fileversion %ver% /productversion %ver% /productname "OTN Server" /originalfilename otn-server.exe /internalname "OTN Server" /description "Old to New Remote Printing Standard Server" /company "Innovation Inc., Sparrdrem" /trademarks "Innovation Inc., Sparrdrem" /copyright "Innovation Inc., Sparrdrem"
goto exit

:cleanup
echo Cleaning up...
if exist OTNClient.exe del OTNClient.exe
if exist "Build\" rmdir /Q /S "Build\"

:exit