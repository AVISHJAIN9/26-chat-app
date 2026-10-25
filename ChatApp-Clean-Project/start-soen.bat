@echo off
echo Starting Soen (AI Collaborative Workspace)...
start "Soen Backend (Port 3000)" cmd /k "cd /d \"%~dp0chat app\soen-main\backend\" && npm start"
start "Soen Frontend (Port 5173)" cmd /k "cd /d \"%~dp0chat app\soen-main\frontend\" && npm run dev"
echo Soen is launching!
echo Backend:  http://localhost:3000
echo Frontend: http://localhost:5173
pause
