@echo off

rem 自身のディレクトリに移動。
cd /d "%~dp0"
dism /online /Enable-Feature /all /NoRestart /FeatureName:Microsoft-Windows-Subsystem-Linux



