@echo off

cd /d %~dp0
start %homedrive%%homepath%\Ubuntu\ubuntu1804.exe


echo "�ʃE�C���h�E�̃A�b�v�f�[�g�I�����m�F���Ă��������B"
pause
wsl bash -c "sudo apt-get -y update && sudo apt-get -y install python2.7 python-pip python-pip-whl zlibc libcurl4 r-base python3-pip" 
wsl bash -c "pip install h5py matplotlib seaborn pandas biopython PyVcf wsgiref pysam poretools"
wsl bash -c "pip3 install git+https://github.com/rrwick/Porechop.git"

rem ���k�t�@�C���̉�
echo �t�@�C���̃R�s�[�Ɖ𓀂��s���܂��B
wsl bash -c "tar -xzf ./Batch/nanotools.tgz -C $HOME/"

rem PATH�ǉ�
wsl bash -c "cat ./Batch/profile.txt >> $HOME/.profile"


rem bat �폜
del .\Batch\init_ubuntu.bat

echo "�����L�[�������ƏI�����܂�"
@pause  > nul
