
@echo off
if exist "setupdone" ( goto startup )
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                        WARNING:
echo                        BEFORE USING, READ PRODUCT
echo                        DOCUMENTATION FOR IMPORTANT INFORMATION
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping -n 5 127.0.0.1 >NUL 2>&1
call cls.bat
:startup
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                      +---------+             
echo                      ^|         ^|             +-------+
echo                      ^|         ^|          +--+-------+--+
echo                      ^|   OLD   ^|    TO    ^|     NEW     ^|
echo                      ^|         ^|^>^>^>^>^>^>^>^>^>^>^|             ^|
echo                      ^|         ^|          ^| ----------- ^|
echo                      ^|         ^|          +-------------+
echo                      +---------+
echo.
echo                             Client Version: %otn-ver%
echo.
echo                    (C) Innovation Inc 2019, SparrDrem 2019
echo.
echo.
echo.
echo.
echo.
ping -n 5 127.0.0.1 >NUL 2>&1
call cls.bat