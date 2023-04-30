@echo off
title CookieClickerDEVTOOLS



:menu
cls
echo.
echo                                   [      CookieClickerDEVTOOLS (trust)      ] 
echo.
echo                                   [          General Use of need            ]
echo.
echo                                   [             1. Message                  ] 
echo                                   [             2. Taskkill                 ] 
echo                                   [            3. CookieClicker             ] 
echo                                   [        9. Download Second Theme         ] 
echo                                   [               0. Exit                   ] 
echo.
echo                                   [                  Fun                    ] 
echo.
echo                                   [            Nothing for now...           ] 
set /p record=""
if %record%==1 (
start scripts\Message.bat
)
if %record%==2 (
start scripts\taskkill.bat
exit
)
if %record%==3 (
start scripts\CookieClicker.bat
)
if %record%==9 (
start scripts\secondthemedownloader.bat
)
if %record%==0 (
exit
) 
if %record%==69 (
start trole.bat
)
pause > nul
