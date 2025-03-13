@echo off
:loop
cd C:\Users\018801\Documents\Github\HAFDIAHMED

echo "Automatic commit at %date% %time%" > commit_message.txt
git add .
git commit -m "Automatic commit at %date% %time%"
git push -f
timeout /t 50 /nobreak

goto loop
