@echo off
:changelog
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Enter a Version Number to Read Its Changes.                                ^|
echo ^|Type "back" and strike the enter key to go back to the main menu.          ^|
echo +---------------------------------------------------------------------------+
echo ^|1.)  0.0.1                                                                 ^|
echo ^|2.)  0.0.2                                                                 ^|
echo ^|3.)  0.0.3                                                                 ^|
echo ^|4.)  0.0.4                                                                 ^|
echo ^|5.)  0.0.5                                                                 ^|
echo ^|6.)  0.0.6                                                                 ^|
echo ^|7.)  0.0.7                                                                 ^|
echo ^|8.)  0.0.8                                                                 ^|
echo ^|9.)  0.1.0                                                                 ^|
echo ^|10.) 0.1.1                                                                 ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
set /P change="| > "
pause >nul
if '%change%'=='back' goto exit
if '%change%' LSS '1' goto outofrange
if '%change%' GTR '9' goto outofrange
goto %change%

:outofrange
echo.
echo Error: "%change%" is out of the available range.
ping -n 3 127.0.0.1 >nul 2>&1
goto changelog

:1
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.0.1                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|Initial Release                                                            ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:2
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.0.2                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|^> Update to OTN v1.00-release                                             ^|
echo ^|~ Bug Fix                                                                  ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:3
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.0.3                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|+ Added the ability to choose what printer to print to.                    ^|
echo ^|+ Added the ability to choose what pages to print.                         ^|
echo ^|~ Fixed a bug that caused the "Clean Up" function to not do its job        ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:4
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.0.4                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|+ Settings!                                                                ^|
echo ^|+ Added the ability to change the default printer without going through    ^|
echo ^|  the entire setup.                                                        ^|
echo ^|~ Added a settings page so you dont have to rerun setup to change 1 thing. ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:5
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.0.5                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|+ Added a cache system to reprint files                                    ^|
echo ^|+ Added the ability to print a document x amount of times. Need to print   ^|
echo ^|  flyers? We got 'em. Need to print some newspapers? We got you covered    ^|
echo ^|  baby! You want some letters? E A S Y! We got it all! This printing       ^|
echo ^|  standard is still being developed god damn it!                           ^|
echo ^|~ Some spelling fixes                                                      ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul

:6
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.0.6                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|+ Basic conversion for most formats to PDF. You no longer have to convert  ^|
echo ^|  it yourself prior to downloading!                                        ^|
echo ^|~ General system stability improvements to enhance the user's experience.  ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:7
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.0.7                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|~ Added some code to prevent OTN Server from committing seppuku if the user^|
echo ^|  makes a mistake.                                                         ^|
echo ^|~ General system stability improvements to enhance the user's experience.  ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:8
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.0.8                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|+ Some stuff to prepare for a special  s u r p r i s e  tomorrow.          ^|
echo ^|~ Split the OTN Client up into seperate batches to make it easier to       ^|
echo ^|  develop.                                                                 ^|
echo ^|~ Added some more code to preven OTN Server from committing seppuku if the ^|
echo ^|  user makes a mistake.                                                    ^|
echo ^|~ General system stability improvements to enhance the user's experience.  ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:9
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.1.0                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|+ OTN now looks prettier! *party horn* Surprise!                           ^|
echo ^|+ Added a download function, so you can download it now but use it later.  ^|
echo ^|~ General system stability improvements to enhance the user's experience.  ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:10
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Changelog                                                                  ^|
echo +---------------------------------------------------------------------------+
echo ^|Changelog for 0.1.1                                                        ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
echo ^|+ Accounts, so multiple can use the same server across multiple devices!   ^|
echo ^|+ Actually added the code that prevents conversion if office is installed  ^|
echo ^|  I forgot this for 4 versions straight even though I made the flag for it.^|
echo ^|~ Fixed the bootscreen                                                     ^|
echo ^|~ General system stability improvements to enhance the user's experience.  ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
pause
pause >nul
goto changelog

:exit