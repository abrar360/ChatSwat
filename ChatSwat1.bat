@echo off
@echo begin...> logs.txt


curl -X GET "https://api.groupme.com/v3/groups?token=YOURTOKEN&&per_page=500" -k > dump.txt
set /p ans=<dump.txt

findstr CHATNAME dump.txt >nul 2>&1
IF not errorlevel 1 (
   @echo chat Found>> logs.txt
   python Scanner.py
   set /p groupid=<codes.txt
)ELSE (@echo Chat Not found.
exit
)

:loop
curl -X GET https://api.groupme.com/v3/groups/%groupid%?token=YOURTOKEN -k > dump.txt
set /p ans=<dump.txt

findstr Adam dump.txt >nul 2>&1
IF not errorlevel 1 (
   @echo Adam Found>> logs.txt
   python Scanner.py
   exit
color 0A	
)ELSE (@echo Adam Not found.
color 0C
)

TIMEOUT 2
goto loop
