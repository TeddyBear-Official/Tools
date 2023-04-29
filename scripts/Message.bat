@echo off
title Message System
set /p messageUser="User: "
set /p message="Message: "
msg %messageUser% %message%
set messageUser=eof
set message=eof
