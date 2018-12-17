@echo off

echo wsl(ubuntu 1804) uninstall script

wslconfig.exe /u Ubuntu-18.04
rmdir /s /q %homedrive%%homepath%\Ubuntu

echo 終了しました。何かキーを押してください。
@pause > nul

