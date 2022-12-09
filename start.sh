#!/bin/sh

cd "${0%/*}"

if [ -d ./venv ];then
  source ./venv/bin/activate
  python pyeamu.py
else
  python -m venv venv
  source ./venv/bin/activate
  pip install -U -r requirements.txt
  python pyeamu.py
fi