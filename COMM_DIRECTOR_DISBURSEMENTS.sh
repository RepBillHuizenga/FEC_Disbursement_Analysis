#!/usr/bin/env bash

python3 -mvenv venv
export PATH=venv/bin:$PATH
pip install -U pip wheel setuptools
pip install -r requirements.txt
runipy -o COMM_DIRECTOR_DISBURSEMENTS.ipynb
jupyter-nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown --output=COMM_DIRECTOR_DISBURSEMENTS.md COMM_DIRECTOR_DISBURSEMENTS.ipynb
jupyter-nbconvert --ExecutePreprocessor.timeout=600 --execute --to html --output=COMM_DIRECTOR_DISBURSEMENTS.html COMM_DIRECTOR_DISBURSEMENTS.ipynb
