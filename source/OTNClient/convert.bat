:convert
call load.bat /Q
call cls.bat
if "%officeInstalledFlag%"=="1" goto officenotinstalled
echo +---------------------------------------------------------------------------+
echo ^|Convert                                                                    ^|
echo +---------------------------------------------------------------------------+
echo ^|Please enter the path to the document. If it's at the home directory, just ^|
echo ^|enter.                                                                     ^|
echo ^|Example: If the documents is located at ~/Documents/folder/file.pdf, and   ^|
echo ^|         the FTP home directory is ~/Documents/, you would type folder/    ^|
echo +---------------------------------------------------------------------------+
set /P otn-path="| > "
pause >nul
echo ^|Please enter the file name of the document, including the file extension.  ^|
echo +---------------------------------------------------------------------------+
set /P otn-file="| > "
pause >nul
echo ^|Please enter the desired file name of the PDF output                       ^|
echo +---------------------------------------------------------------------------+
set /P otn-convertout="| > "
pause >nul
echo ^|Downloading...                                                             ^|
wget -q --no-passive-ftp --user=%otn-user% --password=%otn-pass% "ftp://%otn-ip%/%otn-path%%otn-file%" -O "cache\%otn-file%"
echo ^|Converting...                                                              ^|
OfficeToPDF.exe "cache\%otn-file%" "cache\%otn-convertout%"
echo ^|Removing unconverted document...                                           ^|
del /Q "cache\%otn-file%"
ping -n 3 127.0.0.1 >nul 2>&1
echo ^|Would you like to print this document now? y/n                             ^|
echo +---------------------------------------------------------------------------+
set /P otn-choice="| > "
pause >nul
set otn-file=%otn-convertout%
set skipDownloadFlag=2
if "%otn-choice%"=="y" ( goto yes ) else ( goto exit )

:yes
move "cache\%otn-file%" "%otn-file%"
call print.bat

:officenotinstalled
echo +---------------------------------------------------------------------------+
echo ^|Convert                                                                    ^|
echo +---------------------------------------------------------------------------+
echo ^|Error: Office is not installed. If office is installed, please change the  ^|
echo ^|"officeInstalledFlag" to 2 in settings.                                    ^|
echo ^|                                                                           ^|
echo ^|Press any key to continue.                                                 ^|
pause >nul
pause >nul

:exit