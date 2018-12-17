@echo off

cd /d %~dp0

if exist .\Batch\init_ubuntu.bat (
  call powershell start-process .\Batch\init_ubuntu.bat -verb runas 
  if %ERRORLEVEL% == 1 exit(1)
)

pause
wsl bash -c "sudo apt-get -y update && sudo apt-get -y install python2.7 python-pip python-pip-whl zlibc libcurl4 r-base python3-pip" 
wsl bash -c "pip install h5py matplotlib seaborn pandas biopython PyVcf wsgiref pysam poretools"
wsl bash -c "pip3 install git+https://github.com/rrwick/Porechop.git"

rem 圧縮ファイルの解凍
echo ファイルのコピーと解凍を行います。
wsl bash -c "tar -xzf ./Batch/nanotools.tgz -C $HOME/"

rem PATH追加
wsl bash -c "cat ./Batch/profile.txt >> $HOME/.profile"


rem bat 削除
del .\Batch\init_ubuntu.bat

echo "何かキーを押すと終了します"
@pause  > nul
