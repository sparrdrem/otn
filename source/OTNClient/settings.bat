call load.bat /Q
:settings
call cls.bat
set otn-choice=
echo +---------------------------------------------------------------------------+
echo ^|Settings                                                                   ^|
echo +---------------------------------------------------------------------------+
echo ^|Enter the setting you would like to change.                                ^|
echo +---------------------------------------------+-----------------------------+
echo ^|1.) FTP IP Address                           ^|Current: %otn-ip%
echo ^|2.) FTP Username                             ^|Current: %otn-user%
echo ^|3.) FTP Password                             ^|Current: %otn-pass%
echo ^|4.) Default Printer                          ^|Current: %otn-customprinter%
echo ^|5.) Toggle officeInstalledFlag Off (1)/On (2)^|Current: %officeInstalledFlag%
echo ^|6.) Don't Save and Exit                      ^|                             ^|
echo ^|7.) Save and Exit                            ^|                             ^|
echo +---------------------------------------------+-----------------------------+
set /p otn-choice="| > "
pause >nul
if '%otn-choice%'=='1' goto settingsip
if '%otn-choice%'=='2' goto settingsuser
if '%otn-choice%'=='3' goto settingspass
if '%otn-choice%'=='4' goto settingsprinter
if '%otn-choice%'=='5' goto settingsoffice
if '%otn-choice%'=='6' goto load
if '%otn-choice%'=='7' goto save
ping -n 3 127.0.0.1 >NUL 2>&1
echo ^|Sorry, "%otn-choice%" is not a valid option!                               ^|
goto settings

:settingsip
echo ^|Enter the new FTP server IP.                                               ^|
echo +---------------------------------------------------------------------------+
set /p otn-ip="| > "
pause >nul
goto settings

:settingsuser
echo ^|Enter the new FTP server username.                                         ^|
echo +---------------------------------------------------------------------------+
set /p otn-user="| > "
pause >nul
goto settings

:settingspass
echo ^|Enter the new FTP server password.                                         ^|
echo +---------------------------------------------------------------------------+
set /p otn-pass="| > "
pause >nul
goto settings

:settingsprinter
echo ^|Would you like to let Windows decide (1) or change the default printer (2)?^|
set /P otn-customprinterflag="| > "
pause >nul
if not '%otn-customprinterflag%'=='2' (
	set otn-customprinter=No Default
	echo ^|Windows will now decide what printer to print to.                          ^|
	ping -n 3 127.0.0.1 >NUL 2>&1
) else (
	echo ^|Enter the name of the printer you want to use.                             ^|
	echo +---------------------------------------------------------------------------+
	set /P otn-customprinter="| > "
	pause >nul

)
goto settings

rem This shouldn't be this badly coded but batch
:settingsoffice
if "%officeInstalledFlag%"=="1" ( goto settingsofficeon )
if "%officeInstalledFlag%"=="2" ( goto settingsofficeoff )

:settingsofficeon
set officeInstalledFlag=2
goto settings

:settingsofficeoff
set officeInstalledFlag=1
goto settings

:load
call load.bat
goto exit

:save
call save.bat
goto exit

:exit