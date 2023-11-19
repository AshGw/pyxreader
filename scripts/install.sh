#!/bin/bash


rm -rf dist
rm -rf build
if [[ "$(uname -s)" == "MINGW"* ]]; then
  python.exe -m pip install --upgrade pip
else
  pip install --upgrade pip
fi
pip install -r scripts/requires.txt pre-commit pytest
python setup.py develop

rm -rf pdfwizard.egg-info
pre-commit install
