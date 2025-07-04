@echo off
title ARE YOU DREAMING? [v1.0]

:mainarea

cls

echo                       ______
echo                      /\__  _\
echo                      \/_/\ \/
echo                         \ \_\
echo                          \/_/
echo    ______     __  __     __   __        __     ______
echo   /\  == \   /\ \/\ \   /\ "-.\ \      /\ \   /\__  _\
echo   \ \  __-   \ \ \_\ \  \ \ \-.  \     \ \ \  \/_/\ \/
echo    \ \_\ \_\  \ \_____\  \ \_\\"\_\     \ \_\    \ \_\
echo     \/_/ /_/   \/_____/   \/_/ \/_/      \/_/     \/_/
echo.
echo  - Type "runarea" to run this server.
echo.
echo  -----------------------Notes(below)---------------------
echo.
echo  - While running, type "help" for a list of all commands.
echo  - While running, type "exit" to save and stop the server.
echo  - You can't close all the windows with the "exit"
echo    command so you have to manually close them :P
echo  - Anything typed in that's not a command in the program
echo    might close the program.
echo.

set /p option1= [%username%]~ 
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea
pause

:runarea
cls

echo.
echo      TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.
echo  - To run all the stuff needed for the server, Type "runall"
echo    (If you don't have a discord bot or playit proxy
echo    you might get errors, it's OK. The server will
echo    still work :D )
echo  - To run only the local server, Type "run"
echo  - To run only the playit proxy, Type "runproxy"
echo  - To run only the discord bot, Type "runbot"
echo.

set /p option1= [%username%]~ 
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea
pause

:info
cls

echo    TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.
echo.
echo  - https://github.com/melomel07/trunit
echo.
echo.

set /p option1= [%username%]~ 
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea
pause

:runall

cls
echo.
echo   Please be patient, this may take a bit!
echo.

start "..\Python\Python311\python.exe" "dbot.py"
echo.

start playit.exe
echo.

TerrariaServer.exe -config serverconfig.txt

echo.
echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~ 
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea
pause

:run

cls
echo.
echo   Please be patient, this may take a bit!
echo.

TerrariaServer.exe -config serverconfig.txt

echo.
echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~ 
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea
pause

:runproxy

cls
echo.
start playit.exe

echo.
echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~ 
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea
pause

:runbot

cls
echo.

start "..\Python\Python311\python.exe" "dbot.py"

echo.
echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~ 
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea
pause