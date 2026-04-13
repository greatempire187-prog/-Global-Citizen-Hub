# Global Citizen Hub - Startup Script
# This script sets up and runs the application

Write-Host "🌍 Global Citizen Resource Hub - Starting Application..." -ForegroundColor Green

# Check if Python is installed
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✓ Python found: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Python not found. Please install Python 3.8 or higher." -ForegroundColor Red
    exit 1
}

# Navigate to backend directory
Set-Location backend
Write-Host "📁 Navigated to backend directory" -ForegroundColor Blue

# Check if virtual environment exists
if (-not (Test-Path "venv")) {
    Write-Host "🔧 Creating virtual environment..." -ForegroundColor Yellow
    python -m venv venv
}

# Activate virtual environment
Write-Host "🔧 Activating virtual environment..." -ForegroundColor Yellow
& .\venv\Scripts\Activate.ps1

# Install dependencies
Write-Host "📦 Installing dependencies..." -ForegroundColor Yellow
pip install -r requirements.txt

# Start the backend server
Write-Host "🚀 Starting backend server on http://localhost:5000..." -ForegroundColor Green
Write-Host "📱 Frontend available at: frontend/index.html" -ForegroundColor Cyan
Write-Host "🛑 Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""

python app.py
