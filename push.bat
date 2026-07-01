@echo off
cd /d "%~dp0"

git add -A

git diff --cached --quiet
if %errorlevel%==0 (
    echo Aucun changement a commiter.
    pause
    exit /b 0
)

set "msg=Update %date% %time%"
git commit -m "%msg%"
git push origin main

echo.
echo Push termine.
pause
