@echo off
set otn-errorchoice=
call cls.bat
color 1F
goto %~1
:fatal
echo                               [OTN Server]                          
echo.
echo    An error has occurred, and OTN could not recover from it.
echo.
echo    Press any key to enter a Limbo state, or
echo.
echo    Press E to restart OTN. You will lose any unsaved information in
echo    all open applications.
echo.
goto %~2

:nonfatal
echo                               [OTN Server]                          
echo.
echo    An error has occurred. To continue:
echo.
echo    Press any key to return to OTN, or
echo.
echo    Press E to restart OTN. If you do this, you will lose any unsaved
echo    information in all open applications.
echo.
goto %~2
:0002
echo    Error: ENTERED_NOT_LESS_THAN_OR_EQUAL
echo.
if "%~1"=="fatal" ( goto fatalchoice ) else ( goto nonfatalchoice )
:fatalchoice
set /P otn-errorchoice="   Press any key and strike Enter "
pause >nul
if "%otn-errorchoice%"=="E" ( goto restart ) else ( goto limbo )
:nonfatalchoice
set /P otn-errorchoice="   Press any key and strike Enter "
pause >nul
if "%otn-errorchoice%"=="E" ( goto restart ) else ( goto end )

:restart
color 0F
call otn-client.bat

:limbo
goto limbo

:end
color 0F