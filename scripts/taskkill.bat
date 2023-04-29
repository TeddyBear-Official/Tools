@echo off
@title taskkill cmd process
start Main.bat
set /p taskkill="Program to kill: "
taskkill /f /im %taskkill%
echo Task successfully killed with all parents gone with it.
pause
