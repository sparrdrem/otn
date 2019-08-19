:boot
@echo off
set otn-ver=0.1.1
set otn-c=2019
set otn-ip=
set otn-user=
set otn-pass=
set otn-customprinter=No Default
call bootscreen.bat
if exist "setupdone" ( goto login ) else ( goto setup )

:setup
call setup.bat
goto save

:load
call load.bat
goto start

:save
call save.bat
goto start

:login
echo +---------------------------------------------------------------------------+
echo ^|Log In to OTN Server                                                       ^|
echo ^|===========================================================================^|
dir /B /P accounts\
echo ^|===========================================================================^|
echo ^|Please Enter Your OTN Server Username, or type "NewAccount" to make a new  ^|
echo ^|    account.                                                               ^|
set /p otn-clientuser="| > "
if "%otn-clientuser%"=="NewAccount" goto setup
if exist "accounts\%otn-clientuser%" goto load
echo ^|Error: "%otn-clientuser%" is not a valid account.                          ^|
echo +---------------------------------------------------------------------------+
goto login

:start
set instchoice=
set change=
set otn-choice=
set otn-file=
set otn-yn=
set otn-pages=
set otn-convertout=
set skipDownloadFlag=
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|OTN Client^|Client Version: %otn-ver%^|(C)Innovation Inc. %otn-c%, Sparrdrem %otn-c%   ^|
echo +---------------------------------------------------------------------------+
echo ^|Functions         ^|                                                        ^|
echo +------------------+--------------------------------------------------------+
echo ^|1.)  +---+        ^|2.)               ^|3.)               ^|4.)    +---+      ^|
echo ^|     ^|   +-+      ^| +---+    +---+   ^| +---+    +-----+ ^|       ^|PDF^|      ^|
echo ^|     ^| PDF ^|      ^| ^|   +-+  ^|   +-+ ^| ^|   +-+  ^|  ^|  ^| ^|      \^|   ^|/     ^|
echo ^|     +-----+      ^| ^| ??? ^|^>^>^| PDF ^| ^| ^| PDF ^|  ^|  +- ^| ^|       \   /      ^|
echo ^|                  ^| +-----+  +-----+ ^| +-----+  +-----+ ^|        \ /       ^|
echo ^|   Print a PDF    ^|  Convert to PDF  ^|   Manage Cache   ^|  Download a PDF  ^|
echo +------------------+--------------------------------------------------------+
echo ^|About and Settings^|                                                        ^|
echo +------------------+--------------------------------------------------------+
echo ^|A.)   ++_++       ^|B.)               ^|C.)               ^|D.)   +----+      ^|
echo ^|      ++ ++       ^|       +---+      ^|      +---+       ^|      ^|    ^|      ^|
echo ^|       ^| ^|        ^|       ^| ? ^|      ^|      ^|===+-+     ^|      +----+      ^|
echo ^|       ^|^|^|        ^|       +---+      ^|      ^|%otn-ver%^|     ^|    +---++---+    ^|
echo ^|       +-+        ^|                  ^|      +-----+     ^|    ^| ++  ++ ^|    ^|
echo ^|     Settings     ^|     About OTN    ^|     Changelog    ^|   Account Info   ^|
echo +---------------------------------------------------------------------------+
echo.
set /P otn-choice="Enter your Choice > "
pause >nul
if '%otn-choice%'=='1' goto filechoose
if '%otn-choice%'=='2' goto convert
if '%otn-choice%'=='3' goto manageCache
if '%otn-choice%'=='4' goto download
if '%otn-choice%'=='A' goto settings
if '%otn-choice%'=='B' goto about
if '%otn-choice%'=='C' goto changelog
if '%otn-choice%'=='D' goto accountinfo
if '%otn-choice%'=='supersecret' goto debugmenu
echo Error: %otn-choice% is not a valid choice
ping -n 3 127.0.0.1 >nul 2>&1
goto start

:filechoose
call choosefile.bat
goto start

:manageCache
call manageCache.bat
goto start

:convert
call convert.bat
goto start

:download
call download.bat
goto start

:settings
call settings.bat
goto start

:changelog
call changelog.bat
goto start

:about
call about.bat
goto start

:accountinfo
call accountinfo.bat
goto start

:debugmenu
call debugmenu.bat
goto start