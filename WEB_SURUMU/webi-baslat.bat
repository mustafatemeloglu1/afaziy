@echo off
cd /d "%~dp0.."
echo Afazi Terapi Web surumu baslatiliyor...
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js bulunamadi. Node.js kurduktan sonra tekrar deneyin.
  pause
  exit /b 1
)
call npm install
call npm run web
pause
