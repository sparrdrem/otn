:supersecret
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Debug Menu                                                                 ^|
echo +---------------------------------------------------------------------------+
echo ^|1.) List all variables                                                     ^|
echo ^|2.) List all flags                                                         ^|
echo ^|3.)                                                                        ^|
echo ^|4.)                                                                        ^|
echo ^|5.)                                                                        ^|
echo ^|6.)                                                                        ^|
echo ^|7.)                                                                        ^|
echo ^|8.)                                                                        ^|
echo ^|9.) Exit                                                                   ^|
echo +---------------------------------------------------------------------------+
set /p otn-debugchoice="| [DEBUG] > "
pause >nul
if "%otn-debugchoice%"=="1" goto listVars
if "%otn-debugchoice%"=="2" goto listFlags
if "%otn-debugchoice%"=="9" goto exit

:listVars
echo ^|otn-ver=%otn-ver%
echo ^|otn-c=%otn-c%
echo ^|otn-ip=%otn-ip%
echo ^|otn-user=%otn-user%
echo ^|otn-pass=%otn-pass%
echo ^|otn-customprinter=%otn-customprinter%
echo ^|instchoice=%instchoice%
echo ^|change=%change%
echo ^|otn-choice=%otn-choice%
echo ^|otn-file=%otn-file%
echo ^|otn-yn=%otn-yn%
echo ^|otn-pages=%otn-pages%
echo ^|otn-convertout=%otn-convertout%
echo +---------------------------------------------------------------------------+
echo.
pause
pause >nul
goto supersecret

:listFlags
echo ^|skipDownloadFlag=%skipDownloadFlag%
echo ^|officeInstalledFlag=%officeInstalledFlag%
echo ^|customPrinterFlag=%customPrinterFlag%
echo +---------------------------------------------------------------------------+
echo.
pause
pause >nul
goto supersecret

:exit