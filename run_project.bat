@echo off
echo Starting Lake Baringo Hotel Booking System...
echo.

echo Starting Backend Server on port 5000...
start "Backend Server" cmd /k "cd /d c:\Users\HP\Desktop\LAKE BARINGO HOTEL\server && node index.js"

timeout /t 3 /nobreak >nul

echo Starting Frontend Server on port 3000...
start "Frontend Server" cmd /k "cd /d c:\Users\HP\Desktop\LAKE BARINGO HOTEL && node server.js"

timeout /t 3 /nobreak >nul

echo Opening Browser...
start msedge http://localhost:3000

echo.
echo ====================================
echo Lake Baringo Hotel Booking System
echo ====================================
echo Backend: http://localhost:5000
echo Frontend: http://localhost:3000
echo ====================================
echo.
pause
