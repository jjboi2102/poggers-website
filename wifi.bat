@echo off
echo [95mCreated by JJ_boi
echo.
for /f "tokens=2 delims=:" %%a in ('netsh wlan show profile ^| find ": "') do (
    echo [31m    Wifi Name              :%%a[96m
    netsh wlan show profile %%a key=clear | find "Key Content"
)
echo [0m
pause
