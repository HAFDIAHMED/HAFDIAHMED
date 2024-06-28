@echo off
cd C:\Users\018801\Documents\Github\HAFDIAHMED
:loop
echo Hello Commit > commit_message.txt
git add .
git commit -m "Automatic commit at %date% %time%"
git push -f
timeout /t 3
goto loop
