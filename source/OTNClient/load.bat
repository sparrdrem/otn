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
echo Loading Settings...

:quiet
< "accounts\%otn-clientuser%" (
set /p otn-ip=
set /p otn-user=
set /p otn-pass=
set /p otn-customprinter=
set /p otn-customprinterflag=
set /p officeInstalledFlag=
)
if "%~1"=="/Q" goto exit
ping -n 2 127.0.0.1 >nul 2>&1
echo Loaded
ping -n 2 127.0.0.1 >nul 2>&1
:exit