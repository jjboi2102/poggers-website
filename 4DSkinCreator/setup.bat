@echo off

mkdir "%userprofile%\jjboi-programs\4DSkinCreator"
cd "%userprofile%\jjboi-programs\4DSkinCreator"

if exist "template.zip" (exit) else (cls & echo downloading template pack)

curl -L "https://raw.githubusercontent.com/jjboi2102/poggers-website/main/4DSkinCreator/4D%20Skin%20Creation%20By%20BionicBen.zip" -o "template.zip"
