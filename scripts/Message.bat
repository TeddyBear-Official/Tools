@echo off
title Message System
echo Use the * sign for everybody on your local network.
set /p messageUser="User: "
set /p message="Message: "
msg %messageUser% %message%
set messageUser=eof
set message=eof
