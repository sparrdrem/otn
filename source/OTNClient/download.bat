:print
call load.bat /Q
call cls.bat
echo +---------------------------------------------------------------------------+
echo ^|Download a PDF                                                             ^|
echo +---------------------------------------------------------------------------+
echo ^|Please enter the path to the document. If it's at the home directory, just ^|
echo ^|press enter.                                                               ^|
echo ^|Example: If the document is located at ~/Documents/folder/file.pdf, and the^|
echo ^|         FTP home directory is ~/Documents/, you would type folder/        ^|
echo ^|         If it is on the root directory of the FTP home directory, just    ^|
echo ^|         press enter.                                                      ^|
echo +---------------------------------------------------------------------------+
set /P otn-path="| > "
pause >nul
echo ^|Please enter the file name of the PDF, including the .pdf extension        ^|
echo +---------------------------------------------------------------------------+
set /P otn-file="| > "
pause >nul
echo ^|Downloading...                                                             ^|
wget -q --no-passive-ftp --user=%otn-user% --password=%otn-pass% "ftp://%otn-ip%/%otn-path%%otn-file%" -O "%otn-file%"
echo ^|Caching...                                                                 ^|
move "%otn-file%" "cache\%otn-file%"