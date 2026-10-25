@echo off
echo Starting Tencent TRTC Chat App...
start "Chat App Server (Port 8000)" cmd /k "cd /d \"%~dp0chat app\chat-app-main\server\" && npm start"
start "Chat App Frontend (Port 3000)" cmd /k "cd /d \"%~dp0chat app\chat-app-main\frontend\" && npm start"
echo Chat App is launching!
echo Server:   http://localhost:8000
echo Frontend: http://localhost:3000
pause
