:print
call load.bat /Q
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Choose File                                                                ^|
echo +---------------------------------------------------------------------------+
echo ^|Please enter the path to the document. If it's at the home directory, just ^|
echo ^|enter.                                                                     ^|
echo ^|Example: If the documents is located at ~/Documents/folder/file.pdf, and   ^|
echo ^|         the FTP home directory is ~/Documents/, you would type folder/    ^|
echo +---------------------------------------------------------------------------+
set /P otn-path="| > "
pause >nul
echo ^|Please enter the file name of the PDF, including the .pdf extension.       ^|
echo +---------------------------------------------------------------------------+
set /P otn-file="| > "
pause >nul
call print.bat