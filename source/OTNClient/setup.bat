:setup
call cls.bat
if not exist "cache\" ( mkdir cache )
echo +---------------------------------------------------------------------------+
echo ^|Setup                                                                      ^|
echo +---------------------------------------------------------------------------+
if not exist "C:\Program Files (x86)\GnuWin32\bin\wget.exe" (
    echo ^|It appears the server doesn't have WGET installed. WGET is required for OTN^|
    echo ^|to download PDFs. If you do have it installed, ignore this message. Else,  ^|
    echo ^|you need to install it.                                                    ^|
    echo ^|Would you like to install WGET? y/n                                        ^|
	echo +---------------------------------------------------------------------------+
    set /P instchoice="| > "
)
if '%instchoice%'=='y' goto install
if '%instchoice%'=='Y' goto install
echo ^|This is the first time the server has run, so you need to enter the        ^|
echo ^|client's IP, username, and password.                                       ^|
echo ^|                                                                           ^|
echo ^|Input the IP Address to the server computer.                               ^|
echo ^|Note: if you do not intend to print globally, use your LOCAL IP address.   ^|
echo +---------------------------------------------------------------------------+
set /P otn-ip="| > "
pause >nul
echo ^|Would you like to use the default printer (1), or type in the name of the  ^|
echo ^|printer you want to use? (2)                                               ^|
echo +---------------------------------------------------------------------------+
set /P otn-customprinterflag="| > "
pause >nul
if '%otn-customprinterflag%'=='2' (
	echo ^|Enter the name of the printer you want to use.                             ^|
	echo +---------------------------------------------------------------------------+
	set /P otn-customprinter="> "
	pause >nul
)
echo ^|Enter the username for the FTP account.                                    ^|
echo +---------------------------------------------------------------------------+
set /P otn-user="| > "
pause >nul
echo ^|Enter the password for the FTP accuont.                                    ^|
echo +---------------------------------------------------------------------------+
set /P otn-pass="| > "
pause >nul
echo ^|Do you have Microsoft Office installed on the server computer? y/n         ^|
set /P officeInstalledFlag="| > "
if '%officeInstalledFlag%'=='y' ( set officeInstalledFlag=2 ) else ( set officeInstalledFlag=1 )
pause >nul
echo ^|Enter the Username for this OTN Server Account                             ^|
set /p otn-clientuser="| > "
goto exit

:install
echo ^|Installing WGET...                                                         ^|
wget-setup.exe /verysilent /norestart
goto setup

:exit
echo > setupdone