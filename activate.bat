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
echo # * Python実行環境構築
echo # 
echo ##############################################
echo ##############################################
echo .
echo 以下のパスをPATH環境変数へ追加追加しました : 
echo .
echo %PYTHON%
echo %VENV%\Lib\site-packages\pywin32_system32
echo .

set PYTHONPATHS=Python37._pth
copy %PYTHONPATHS% %PYTHON%\
echo %PYTHONPATHS% を %PYTHON% にコピーしました
echo ##############################################
echo ##############################################
echo # 
echo .
echo # * Pythonの実行環境が整いました
echo # 
echo ##############################################
echo ##############################################
