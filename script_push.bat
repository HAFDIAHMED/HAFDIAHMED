@echo off
setlocal EnableDelayedExpansion

:: CONFIG
set REPO=C:\Users\018801\Documents\Github\HAFDIAHMED
set BRANCH=dev
set LOG=auto_commit.log

cd /d %REPO%

echo ============================== >> %LOG%
echo Script started at %date% %time% >> %LOG%

:loop

:: Pull latest changes safely
git checkout %BRANCH%
git pull origin %BRANCH%

:: Create a real change (important for contributions)
echo Last update: %date% %time% > heartbeat.txt

git add .

:: Check if there is something to commit
git diff --cached --quiet
if %errorlevel%==0 (
    echo [%date% %time%] No changes to commit >> %LOG%
) else (
    git commit -m "Daily progress update - %date% %time%"
    git push origin %BRANCH%
    echo [%date% %time%] Commit pushed >> %LOG%
)

:: Wait 30 minutes (natural behavior)
timeout /t 1800 /nobreak

goto loop
