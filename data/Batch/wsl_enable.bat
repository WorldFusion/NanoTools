@echo off

rem ���g�̃f�B���N�g���Ɉړ��B
cd /d "%~dp0"
dism /online /Enable-Feature /all /NoRestart /FeatureName:Microsoft-Windows-Subsystem-Linux



