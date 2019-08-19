:manageCache
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Manage Cache                                                               ^|
echo +---------------------------------------------------------------------------^|
echo ^|1.)               ^|2.)     ^| ^|       ^|3.)     ^| ^|       ^|4.)               ^|
echo ^| +---+    +-----+ ^|      ^|^|^|^|+       ^|      ^|^|^|^|-+      ^| ^<^<^<^<^<^<^<^<^<^<^<^<^<^<^<^< ^|
echo ^| ^|   +-+  ^|  ^|  ^| ^|      ^|^|^|^|^|-+     ^|      ^|^|^|^|^|--+    ^| ^<^<^<^<^<^<^<^<^<^<^<^<^<^<^<^< ^|
echo ^| ^| PDF ^|  ^|  +- ^| ^|      ^| PDF ^|     ^|      ^| PDF ^|^|    ^| ^<^<^<^<^<^<^<^<^<^<^<^<^<^<^<^< ^|
echo ^| +-----+  +-----+ ^|      +-----+     ^|      +------+    ^|                  ^|
echo ^|Reprint Downloaded^|Delete Downloaded ^|Delete all cached ^|Back to Main Menu ^|
echo +---------------------------------------------------------------------------+
set /p otn-choice="| > "
pause >nul
if "%otn-choice%"=="1" goto printcache
if "%otn-choice%"=="2" goto delcachefile
if "%otn-choice%"=="3" goto delcacheall
if "%otn-choice%"=="4" goto end
echo Error: "%otn-choice%" is outside the available range.
ping -n 3 127.0.0.1 >nul 2>&1
goto manageCache

:printcache
set skipDownloadFlag=2
echo ^|Start cache Directory Listing                                              ^|
echo +---------------------------------------------------------------------------+
dir /B /P cache\
echo +---------------------------------------------------------------------------+
echo ^|Type the name of the file you want to print                                ^|
echo +---------------------------------------------------------------------------+
set /p otn-file="| > "
pause >nul
if exist "cache\%otn-file%" (
	set skipDownloadFlag=2
	move "cache\%otn-file%" "%otn-file%"
	call print.bat
	goto manageCache
) else (
	Error: This file does not exist.
	ping -n 3 127.0.0.1 >nul 2>&1
	goto manageCache
)

:delcachefile
echo ^|Start cache Directory Listing                                              ^|
echo +---------------------------------------------------------------------------+
dir /B /P cache\
echo +---------------------------------------------------------------------------+
echo ^|Type the name of the file you want to delete                               ^|
echo +---------------------------------------------------------------------------+
set /p otn-file="| > "
pause >nul
echo ^| Are you sure you want to delete %otn-file%? This cannot be undone! y/n
set /p otn-choice="| > "
pause >nul
if "%otn-choice%"=="n" goto no
if exist "cache\%otn-file%" (
	del /Q "cache\%otn-file%"
	echo ^|File deleted.                                                          ^|
	ping -n 3 127.0.0.1 >nul 2>&1
	goto manageCache
) else (
	echo ^|Error: This file does not exist.                                       ^|
	ping -n 3 127.0.0.1 >nul 2>&1
	goto manageCache
)
:no
echo ^|Canceled!                                                                  ^|
echo +---------------------------------------------------------------------------+
ping -n 3 127.0.0.1 >nul 2>&1
goto manageCache

:delcacheall
echo ^|Are you sure you want to delete everything in the cache folder?            ^|
echo ^|This cannot be undone! (y/n)                                               ^|
echo +---------------------------------------------------------------------------+
set /p otn-choice="| > "
pause >nul
if not '%otn-choice%'=='y' goto no
del /Q cache\*.*
echo ^|Cached files removed.                                                      ^|
ping -n 3 127.0.0.1 >nul 2>&1
goto manageCache

:end