@echo off
echo ========================================
echo Fuk-daFish Bot Setup
echo ========================================
echo.

echo Installing Python requirements...
pip install -r requirements.txt
if errorlevel 1 (
    echo Failed to install requirements!
    pause
    exit /b 1
)
echo.
echo Requirements installed successfully!
echo.

echo Copying .env file...
if not exist "script\.env" (
    copy "script\.env-example" "script\.env"
    echo .env file created!
    echo.
    echo IMPORTANT: Edit script\.env and add your Discord token!
) else (
    echo .env file already exists, skipping...
)
echo.

echo ========================================
echo Setup complete!
echo ========================================
echo.
echo To run the bot:
echo   python script\dingding
echo.
echo Or use the run script:
echo   run.bat
echo.
pause
