@echo off
if not exist "OTNClient\otn-client.bat" ( goto install ) else ( goto start )

:install
echo Installing the OTN Client...
OTNClient.exe
echo Done!
ping -n 3 127.0.0.1 >nul 2>&1
call OTNClient\cls.bat

:start
del OTNClient.exe
sfk.exe ip > tmpFile 
set /p server-var= < tmpFile 
del tmpFile 
title OTN Remote Printing Standard Server
echo OTN Remote Printing Standard - Version 0.1.0
echo Be sure you connect to %server-var%:5000
echo     If the given doesn't work, please check
echo     your IP with ipconfig. This is a problem
echo     created by the way VirtualBox and VMWare
echo     bridge your Wi-Fi or Ethernet connection
echo     to virtual machines.
echo --------------------------------------------
echo Starting Server...
cd OTNClient
nc.exe -L -p 5000 -e otn-client.bat -t -v -v
echo The server has shut down
pause