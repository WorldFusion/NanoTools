@echo off

echo wsl enable script
cd %~dp0\Batch
powershell start-process wsl_enable.bat -verb runas

echo Ubuntu���_�E�����[�h���Ă��܂��B�B
curl.exe -L -o ubuntu-1804.appx https://aka.ms/wsl-ubuntu-1804

echo �_�E�����[�h���I�����܂����B

echo �t�@�C�����𓀂��Ă��܂��B
move ubuntu-1804.appx Ubuntu.zip
powershell -NoProfile -ExecutionPolicy Unrestricted "Expand-Archive -force Ubuntu.zip Ubuntu"


rem mkdir Ubuntu
rem cd %~dp0\Batch\Ubuntu
rem ..\7zip\7z.exe x ..\Ubuntu.zip

cd %~dp0\Batch
echo Ubuntu�f�B���N�g����ύX���Ă��܂��B
move Ubuntu %homedrive%%homepath%

echo @echo off > init_ubuntu.bat
echo echo Ubuntu�̏��������s���܂� >> init_ubuntu.bat
echo echo �ݒ肪�I�����܂�����E�C���h�E����Ă������� >> init_ubuntu.bat
echo %homedrive%%homepath%\Ubuntu\ubuntu1804.exe >> init_ubuntu.bat

echo "�ݒ��L���ɂ��邽��Windows10���ċN�����Ă�������"
@pause  > nul
