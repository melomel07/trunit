@echo off
mode con: cols=60 lines=21
title [v1.0]
setlocal EnableDelayedExpansion
set "keyword=playit"
set "searchDir=%~dp0"

:mainarea
cls

echo                         ______
echo                        /\__  _\
echo                        \/_/\ \/
echo                           \ \_\
echo                            \/_/
echo      ______     __  __     __   __        __     ______
echo     /\  == \   /\ \/\ \   /\ "-.\ \      /\ \   /\__  _\
echo     \ \  __-   \ \ \_\ \  \ \ \-.  \     \ \ \  \/_/\ \/
echo      \ \_\ \_\  \ \_____\  \ \_\\"\_\     \ \_\    \ \_\
echo       \/_/ /_/   \/_____/   \/_/ \/_/      \/_/     \/_/
echo.
echo  - To run the server, type "run".
echo.
echo  --------------------------Notes---------------------------
echo.
echo  - While running, type "help" for a list of all commands.
echo  - While running, type "exit" to save and stop the server.
echo  - You can't close all the windows with the "exit"
echo    command so you have to manually close them :P
echo.

set /p option1= ">> "
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == run goto run

goto mainarea
pause

:info
cls

echo         TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.
echo.
echo  - https://github.com/melomel07/trunit
echo.
echo.

set /p option1= ">> "
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == run goto run

goto mainarea
pause

:run
cls

echo.
echo.
echo           Please be patient, this may take a bit!
echo.
echo.

if exist "dbot.py" (
	start "..\Python\Python311\python.exe" "dbot.py"
	echo.
) else (
	powershell -Command "Write-Host 'No Discord bot file found, continuing anyways...' -ForegroundColor Yellow"
	echo.
)

set "found=0"
for %%f in ("%searchDir%\*%keyword%*.exe") do (
    if exist "%%f" (
        set "found=1"
        start %%f
    )
)
if !found! EQU 0 (
    powershell -Command "Write-Host 'No Playit app file found, continuing anyways...' -ForegroundColor Yellow"
    echo.
)

if exist "TerrariaServer.exe" (
	TerrariaServer.exe -config serverconfig.txt
	echo.
) else (
	powershell -Command "Write-Host 'No server files found.' -ForegroundColor Red"
	echo.
)

echo.
echo         TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= ">> "
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == run goto run

goto mainarea
pause