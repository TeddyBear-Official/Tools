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
echo                                   [               0. Exit                   ] 
set /p record=""
if %record%==1 (
start scripts\Message.bat
)
pause > nul