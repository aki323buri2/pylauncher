@echo off
set PYTHON=%CD%\python-3.7.4-embed-amd64
set VENV=%CD%\.VENV
set PREFIX=%PYTHON%
set PREFIX=%PREFIX%;%VENV%\Lib\site-packages\pywin32_system32
set PATH=%PREFIX%;%PATH%
echo ''
echo ##############################################
echo ##############################################
echo # 
echo # * Python���s���\�z
echo # 
echo ##############################################
echo ##############################################
echo .
echo �ȉ��̃p�X��PATH���ϐ��֒ǉ��ǉ����܂��� : 
echo .
echo %PYTHON%
echo %VENV%\Lib\site-packages\pywin32_system32
echo .

set PYTHONPATHS=Python37._pth
copy %PYTHONPATHS% %PYTHON%\
echo %PYTHONPATHS% �� %PYTHON% �ɃR�s�[���܂���
echo ##############################################
echo ##############################################
echo # 
echo .
echo # * Python�̎��s���������܂���
echo # 
echo ##############################################
echo ##############################################
