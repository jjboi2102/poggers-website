@echo off
setlocal enabledelayedexpansion

title 4D Skin Creator - updater

REM download version file thing yes
set versionFileName=%random%%random%%random%%random%%random%.version
curl -L "https://raw.githubusercontent.com/jjboi2102/4DSkinCreator/main/version.txt" -o %versionFileName%
cls
REM thanks chatgpt:
for /f "delims=" %%A in (%versionFileName%) do set "version=%%A"
del /f /q %versionFileName%

echo [31mYou are using an old version of JJ's 4D Skin Creator.[0m
echo [92mDownloading update... ("JJ's 4D Skin Creator - v%version%")[0m
REM kill the outdated skin creator app and delete its file (thanks again chatgpt for this code)
powershell -NoProfile -Command "$p = Get-Process | Where-Object { $_.MainWindowTitle -like '*JJ''s 4D Skin Creator*' }; foreach ($proc in $p) { $path = $proc.MainModule.FileName; Stop-Process -Id $proc.Id -Force; Start-Sleep -Milliseconds 100; Remove-Item -LiteralPath $path -Force }"
REM download new ver
curl -L "https://raw.githubusercontent.com/jjboi2102/4DSkinCreator/main/4DSkinCreator.exe" -o "4D Skin Creator.exe"
echo [92mRunning new version %version% of JJ's 4D Skin Creator[0m
echo.
echo [92mYou may now close this window![0m
"4D Skin Creator.exe"
