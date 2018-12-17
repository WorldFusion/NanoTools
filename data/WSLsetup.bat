@echo off

echo wsl enable script
cd %~dp0\Batch
powershell start-process wsl_enable.bat -verb runas

echo Ubuntuをダウンロードしています。。
curl.exe -L -o ubuntu-1804.appx https://aka.ms/wsl-ubuntu-1804

echo ダウンロードが終了しました。

echo ファイルを解凍しています。
move ubuntu-1804.appx Ubuntu.zip
powershell -NoProfile -ExecutionPolicy Unrestricted "Expand-Archive -force Ubuntu.zip Ubuntu"


rem mkdir Ubuntu
rem cd %~dp0\Batch\Ubuntu
rem ..\7zip\7z.exe x ..\Ubuntu.zip

cd %~dp0\Batch
echo Ubuntuディレクトリを変更しています。
move Ubuntu %homedrive%%homepath%

echo @echo off > init_ubuntu.bat
echo echo Ubuntuの初期化を行います >> init_ubuntu.bat
echo echo 設定が終了しましたらウインドウを閉じてください >> init_ubuntu.bat
echo %homedrive%%homepath%\Ubuntu\ubuntu1804.exe >> init_ubuntu.bat

echo "設定を有効にするためWindows10を再起動してください"
@pause  > nul
