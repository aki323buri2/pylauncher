@echo off
set ROOT=.
set PYTHON=python-3.7.4-embed-amd64
set VENV=.venv
echo.
set PREFIX=%CD%\%ROOT%\%PYTHON%
set PATH=%PREFIX%;%PATH%
echo %PREFIX% ��PATH���ϐ��ɒǉ����܂���
echo.
set PREFIX=%CD%\%ROOT%\%VENV%
set PATH=%PREFIX%;%PATH%
echo %PREFIX% ��PATH���ϐ��ɒǉ����܂���
echo.
echo python.exe �̎Q�Ə� : 
where python
echo.
set PYTHON_PATHS_CONFIG=python37._pth
set FILE=%PYTHON_PATHS_CONFIG%
type nul> %FILE%
echo python37.zip>> %FILE%
echo .>> %FILE%
echo %CD%\%ROOT%\%VENV%\Scripts>> %FILE%
echo %CD%\%ROOT%\%VENV%\Lib\site-packages>> %FILE%
echo %CD%\%ROOT%\%VENV%\Lib\site-packages\win32>> %FILE%
echo %CD%\%ROOT%\%VENV%\Lib\site-packages\win32\Lib>> %FILE%
echo # Uncomment to run site.main() automatically>> %FILE%
echo # import site>> %FILE%
echo ######################################
echo [%FILE%]
echo --------------------------------------
type %FILE%
echo ######################################
echo.
set SRC=%CD%\%PYTHON_PATHS_CONFIG%
set TAR=%CD%\%ROOT%\%PYTHON%\%PYTHON_PATHS_CONFIG%
echo �R�s�[�� : %SRC%
echo �R�s�[�� : %TAR%
copy %SRC% %TAR%
