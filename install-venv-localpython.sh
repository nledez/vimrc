#!/bin/bash
# set -e
# echo "====== vim2"
# VIM2=~/.vim/venv2
# if [ -e ${VIM2} ]; then
# 	${VIM2}/bin/python -V || rm -rf ${VIM2}
# fi
# if [ ! -e ${VIM2} ]; then
# 	virtualenv -p $(which python) ${VIM2}
# fi

echo "====== vim3"
VIM3=~/.vim/venv3
if [ -e ${VIM3} ]; then
	${VIM3}/bin/python -V || rm -rf ${VIM3}
fi
if [ ! -e ${VIM3} ]; then
	# virtualenv -p `ls -1rt /usr/local/Cellar/python/*/bin/python3 | tail -1` ${VIM3}
	virtualenv -p `which python3` ${VIM3}
fi

for v in 3; do
       echo "====== vim${v}"
       # . ~/.vim/venv${v}/bin/activate
       ~/.vim/venv${v}/bin/pip install --upgrade pip
       ~/.vim/venv${v}/bin/pip install -r requirements.txt
       # deactivate
done
