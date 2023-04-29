@echo off
title Downloader

:Download
if not exist scripts ( mkdir scripts )
if not exist settings ( mkdir settings )

if not exist scripts\Message.bat (
set fileLink=https://raw.githubusercontent.com/TeddyBear-Official/Tools/main/scripts/Message.bat
set fileName=Message.bat
goto InstallScript
)

if not exist Main.bat (
set fileLink=https://raw.githubusercontent.com/TeddyBear-Official/Tools/main/scripts/Main.bat
set fileName=Main.bat
goto InstallGeneral
)

if not exist scripts\taskkill.bat (
set fileLink=https://raw.githubusercontent.com/TeddyBear-Official/Tools/main/scripts/taskkill.bat
set fileName=taskkill.bat
goto InstallScript
)
if not exist scripts\CookieClicker.bat (
set fileLink=https://raw.githubusercontent.com/TeddyBear-Official/Tools/main/scripts/CookieClicker.bat
set fileName=CookieClicker.bat
goto InstallScript
)
if not exist Downloader.bat ( del Downloader.cmd ) else ( Downloader.bat )
exit

:InstallScript
powershell -Command "Invoke-WebRequest %fileLink% -Outfile scripts\%fileName%"
goto Download

:InstallGeneral
powershell -Command "Invoke-WebRequest %fileLink% -Outfile %fileName%"
goto Download
