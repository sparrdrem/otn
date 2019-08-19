call load.bat /Q
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Print                                                                      ^|
echo +---------------------------------------------------------------------------+
echo ^|Would you like to print the whole document? y/n                            ^|
echo +---------------------------------------------------------------------------+
set /P otn-pages="| > "
pause >nul
if not '%otn-pages%'=='y' (
	echo ^|Please enter what pages you want to print.                                 ^|
	echo +---------------------------------------------------------------------------+
	set /P otn-pages="| > "
	pause >nul
) else (
	set otn-pages=
)
echo ^|How many times would you like to print this document?                      ^|
echo +---------------------------------------------------------------------------+
set /P otnmanyprint="| > "
pause >nul
echo ^|Are you sure you want to print "%otn-file%" %otnmanyprint% times(s)? y/n   
echo +---------------------------------------------------------------------------+
set /P otn-yn="| > "
pause >nul
if '%otn-yn%'=='y' goto yes
goto no

:yes
if '%skipDownloadFlag%'=='2' goto manyprint
echo ^|Downloading...                                                             ^|
wget -q --no-passive-ftp --user=%otn-user% --password=%otn-pass% "ftp://%otn-ip%/%otn-path%%otn-file%" -O "%otn-file%"
:manyprint
echo ^|Printing (%otnmanyprint% left)...
set /a otnmanyprint=%otnmanyprint%-1
if '%otnmanyprint%'=='-1' (
	goto printdone
) else (
	if '%otn-customprinterflag%'=='2' (
		PDFtoPrinter.exe "%otn-file%" "%otn-customprinter%" pages=%otn-pages%
	) else (
		PDFtoPrinter.exe "%otn-file%" pages=%otn-pages%
	)
	goto manyprint
)

:printdone
echo ^|Caching PDF...                                                             ^|
move "%otn-file%" "cache\%otn-file%"
goto end

:no
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|Canceled!                                                                  ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo ^|                                                                           ^|
echo +---------------------------------------------------------------------------+
ping -n 3 127.0.0.1 >nul 2>&1

:end