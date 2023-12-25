#!/bin/bash
# set -e

echo "====== vim3"
VIM3=~/.vim/venv3
if [ -e ${VIM3} ]; then
	${VIM3}/bin/python -V || rm -rf ${VIM3}
fi
if [ ! -e ${VIM3} ]; then
	python3 -m venv ${VIM3}
fi

for v in 3; do
       echo "====== vim${v}"
       ~/.vim/venv${v}/bin/python -m pip install -U pip setuptools
       ~/.vim/venv${v}/bin/python -m pip install -r requirements.txt
done
