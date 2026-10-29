@echo off

echo Downloading template skinpack...

mkdir "%userprofile%\jjboi-programs\4DSkinCreator\temp"
cd "%userprofile%\jjboi-programs\4DSkinCreator"

if exist "template.zip" (exit) else (cls & echo downloading template pack)

curl -L "https://raw.githubusercontent.com/jjboi2102/poggers-website/main/4DSkinCreator/skinpack-template.zip" -o "template.zip"

exit