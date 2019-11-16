#!/usr/bin/env bash
VENV=venv
rm -rf README.md index.html README_files *.png
python3 -mvenv venv
PATH=${VENV}/bin:$PATH
pip install -U pip wheel setuptools
pip install -r requirements.txt
runipy -o README.ipynb
jupyter-nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown --output=README.md README.ipynb
jupyter-nbconvert --ExecutePreprocessor.timeout=600 --execute --to html --output=index.html README.ipynb
