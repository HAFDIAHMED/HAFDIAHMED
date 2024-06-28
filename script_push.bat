@echo off
:loop
cd C:\Users\018801\Documents\Github\HAFDIAHMED

echo Hello Commit > commit_message.txt
git add .
git commit -m "Automatic commit at %date% %time%"
git push -f

goto loop
