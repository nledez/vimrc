#!/bin/bash
set -e
echo "====== vim2"
VIM2=~/.vim/venv2
if [ ! -e ${VIM2} ]; then
	virtualenv -p $(which python) ${VIM2}
fi

echo "====== vim3"
VIM3=~/.vim/venv3
if [ ! -e ${VIM3} ]; then
	virtualenv -p $(which python3) ${VIM3}
fi

for v in 2 3; do
	echo "====== vim${v}"
	. ~/.vim/venv${v}/bin/activate
	pip install --upgrade pip
	pip install -r requirements.txt
	deactivate
done
