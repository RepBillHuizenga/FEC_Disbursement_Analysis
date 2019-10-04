#!/usr/bin/env bash
VENV=venv
rm -rf ${VENV} README.md index.html README_files
python3 -mvenv venv
PATH=${VENV}/bin:$PATH
pip install -U pip wheel setuptools
pip install -r requirements.txt
which python3
runipy -o README.ipynb
jupyter-nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown --output=README.md README.ipynb
jupyter-nbconvert --ExecutePreprocessor.timeout=600 --execute --to html --output=index.html README.ipynb
