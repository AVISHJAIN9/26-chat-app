@echo off
echo ========================================================
echo Installing all dependencies for Chat App and Soen Apps
echo ========================================================

echo.
echo [1/4] Installing Chat App Server dependencies...
cd "chat app\chat-app-main\server"
call npm install --legacy-peer-deps
cd ..\..\..

echo.
echo [2/4] Installing Chat App Frontend dependencies...
cd "chat app\chat-app-main\frontend"
call npm install --legacy-peer-deps
cd ..\..\..

echo.
echo [3/4] Installing Soen Backend dependencies...
cd "chat app\soen-main\backend"
call npm install --legacy-peer-deps
cd ..\..\..

echo.
echo [4/4] Installing Soen Frontend dependencies...
cd "chat app\soen-main\frontend"
call npm install --legacy-peer-deps
cd ..\..\..

echo.
echo ========================================================
echo All dependencies installed successfully!
echo ========================================================
pause
