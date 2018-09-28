@echo off
:loop
start steam://friends/status/online
echo Status Away was defused at %time%
echo Waiting for 5 minutes for next update.
timeout /t 300>null
goto loop
