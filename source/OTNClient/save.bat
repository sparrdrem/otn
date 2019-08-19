@echo off
if "%~1"=="/Q" goto quiet
call cls.bat
echo  ______________
echo ^|[]            ^|
echo ^|  __________  ^|
echo ^|  ^|        ^|  ^|
echo ^|  ^|   OTN  ^|  ^|
echo ^|  ^|________^|  ^|
echo ^|   ________   ^|
echo ^|   [ [ ]  ]   ^|
echo \___[_[_]__]___^|
echo Saving Settings...
:quiet
(
echo %otn-ip%
echo %otn-user%
echo %otn-pass%
echo %otn-customprinter%
echo %otn-customprinterflag%
echo %officeInstalledFlag%
)>"accounts\%otn-clientuser%"
if "%~1"=="/Q" goto exit
ping -n 2 127.0.0.1 >nul 2>&1
echo Saved
ping -n 2 127.0.0.1 >nul 2>&1
:exit