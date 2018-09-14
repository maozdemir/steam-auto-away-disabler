@echo off
SET startmins=%time:~3,2%
:loop
SET currentmins=%time:~3,2%
SET /a diff=%currentmins%-%startmins%
start steam://friends/status/online
echo Status set to Online at %time%
echo Waiting for 5 minutes for next update.
if %diff%==15 (
	echo Status Away was defused at %time%
	SET startmins=%time:~3,2%
)
timeout /t 300>null
goto loop
