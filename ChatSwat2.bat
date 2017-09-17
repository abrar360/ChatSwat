@echo off
@echo begin...> logs.txt
:loop
curl -X GET https://api.groupme.com/v3/groups/%groupid%?token=YOURTOKEN -k > dump.txt
set /p ans=<dump.txt

findstr TARGETNAME dump.txt >nul 2>&1
IF not errorlevel 1 (
set /p var1= <codes.txt
setlocal ENABLEDELAYEDEXPANSION
for /F "skip=1" %%G in (codes.txt) do (
    curl -X POST "https://api.groupme.com/v3/groups/%var1%/members/%%G/remove?token=YOURTOKEN" -k
)
color 0A
	
)ELSE (@echo Not found.
)
TIMEOUT 2
goto loop
