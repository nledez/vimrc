#!/bin/bash

BASE=$(dirname $0)
if [ $BASE = "." ]; then
	BASE=$(pwd)
fi

if [ -z $VI_PACKAGE ]; then
	VI_PACKAGE=vim-nox
fi

if [ "$1" = "" ]; then
	TARGET="$HOME"
else
	TARGET="$1"
fi

if [ -d $TARGET/.vim ]; then
	echo "$TARGET/.vim allready exist"
else
	echo "Need to install $TARGET/.vim"
	cd $TARGET
	git clone git@github.com:nledez/vimrc.git .vim
	rm $TARGET/.vim/.git/hooks/*.sample
	cd $TARGET/.vim/.git/hooks
	ln -s ../../git-post-merge post-merge
fi

cd $TARGET/.vim

pwd | grep -Eq '.vim$'
if [ "$?" != "0" ]; then
	echo "Cannot go in $TARGET/.vim"
	exit 1
fi

[ ! -d bundle ] && mkdir bundle
[ ! -d bundle/Vundle.vim ] && git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim
[ ! -d bundle/molokai ] && git clone https://github.com/vim-scripts/molokai.git bundle/molokai
[ ! -d bundle/jellybeans.vim ] && git clone https://github.com/nanotech/jellybeans.vim.git bundle/jellybeans.vim
git config branch.master.remote origin
git config branch.master.merge refs/heads/master
git config user.email github@ledez.net
git config user.name "Nicolas Ledez"
git checkout master

cd $TARGET

if [[ ( -f $TARGET/.vimrc ) && ( "$(readlink $TARGET/.vimrc)" == ".vim/vimrc") ]] ;then
	echo "$TARGET/.vimrc allready exist"
else
	echo "Need to install $TARGET/.vimrc"
	if [ -e $TARGET/.vimrc ] ; then
		rm $TARGET/.vimrc
	fi
	cd && \
	ln -s ${TARGET}/.vim/vimrc ${TARGET}/.vimrc
fi

if [ ! -d ${TARGET}/.config ]; then
	mkdir ${TARGET}/.config
fi

if [ ! -e ${TARGET}/.config/nvim ]; then
	ln -s $TARGET/.vim ${TARGET}/.config/nvim
fi

if [ "$OSTYPE" = "linux-gnu" ]; then
	which dpkg >/dev/null && dpkg -l ${VI_PACKAGE} | grep -qE "^ii[ ]+${VI_PACKAGE}[ ]+" || apt-get install - ${VI_PACKAGE}
fi

cd ~/ $TARGET/.vim
bash install-venv-localpython.sh

vim +PluginInstall +qall

read

reset
