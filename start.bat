@echo off
title Global Citizen Resource Hub

echo.
echo 🌍 Global Citizen Resource Hub - Starting Application...
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python not found. Please install Python 3.8 or higher.
    pause
    exit /b 1
)

echo ✓ Python found
echo.

REM Navigate to backend directory
cd backend
echo 📁 Navigated to backend directory
echo.

REM Check if virtual environment exists
if not exist "venv" (
    echo 🔧 Creating virtual environment...
    python -m venv venv
)

REM Activate virtual environment
echo 🔧 Activating virtual environment...
call venv\Scripts\activate.bat

REM Install dependencies
echo 📦 Installing dependencies...
pip install -r requirements.txt

REM Start the backend server
echo.
echo 🚀 Starting backend server on http://localhost:5000...
echo 📱 Frontend available at: frontend\index.html
echo 🛑 Press Ctrl+C to stop the server
echo.

python app.py

pause
