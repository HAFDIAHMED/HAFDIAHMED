@echo off
cd C:\Users\018801\Documents\Github\HAFDIAHMED
setlocal ENABLEDELAYEDEXPANSION
set /a counter=0

:loop
echo Hello Commit > commit_message.txt
git add .
git commit -m "Automatic commit at %date% %time%"
git push -f
set /a counter=!counter!+1

rem Check if the counter is 5 (approximately 10 minutes)
if !counter! EQU 1 (
    del *.txt
    set /a counter=0
)

timeout /t 3
goto loop
