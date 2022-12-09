@echo off

cd /d %~dp0

if exist .venv\Lib\site-packages\six.py (
  (
    .venv\Scripts\activate.bat
    python pyeamu.py
  )
) else (
  (
    py -3.10 -m venv .venv
    .venv\Scripts\activate.bat
    pip install -U -r requirements.txt
    py -3.10 pyeamu.py
  )
)

echo:
echo Install python 3.10.8 and check "py launcher" in optional features
echo https://www.python.org/ftp/python/3.10.8/python-3.10.8-amd64.exe
echo:

pause
