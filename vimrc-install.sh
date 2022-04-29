#!/bin/bash

BASE=$(dirname "$0")
if [ "$BASE" = "." ]; then
	BASE=$(pwd)
fi

if [ -z "$VI_PACKAGE" ]; then
	VI_PACKAGE=vim-nox
fi

if [ "$1" = "" ]; then
	TARGET="$HOME"
else
	TARGET="$1"
fi

echo "Start with TARGET: $TARGET"

if [ -d "$TARGET/.vim" ]; then
	echo "$TARGET/.vim allready exist"
else
	echo "Need to install $TARGET/.vim"
	cd "$TARGET" || exit 1
	git clone git@github.com:nledez/vimrc.git .vim
	rm "$TARGET/.vim/.git/hooks/*.sample"
	cd "$TARGET/.vim/.git/hooks" || exit 1
	ln -s ../../git-post-merge post-merge
fi

cd "$TARGET/.vim" || exit 1

[ ! -d bundle ] && mkdir bundle
[ ! -d bundle/Vundle.vim ] && git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim
[ ! -d bundle/molokai ] && git clone https://github.com/vim-scripts/molokai.git bundle/molokai
[ ! -d bundle/jellybeans.vim ] && git clone https://github.com/nanotech/jellybeans.vim.git bundle/jellybeans.vim
git config branch.master.remote origin
git config branch.master.merge refs/heads/master
git config user.email github@ledez.net
git config user.name "Nicolas Ledez"
git checkout master

cd "$TARGET" || exit 1

if [[ ( -f "$TARGET/.vimrc" ) && ( "$(readlink "$TARGET/.vimrc")" == "$TARGET/.vim/vimrc") ]] ;then
	echo "$TARGET/.vimrc allready right"
else
	echo "Need to create $TARGET/.vimrc => ${TARGET}/.vim/vimrc"
	if [ -e "$TARGET/.vimrc" ] ; then
		rm "$TARGET/.vimrc"
	fi
	cd && \
	ln -s "${TARGET}/.vim/vimrc" "${TARGET}/.vimrc"
fi

if [ ! -d "${TARGET}/.config" ]; then
	mkdir "${TARGET}/.config"
fi

if [[ ( -e "${TARGET}/.config/nvim" ) && ( "$(readlink "${TARGET}/.config/nvim")" == "${TARGET}/.vim") ]] ;then
	echo "${TARGET}/.config/nvim allready right"
else
	echo "Need to create $TARGET/.vim => ${TARGET}/.config/nvim"
	ln -s "$TARGET/.vim" "${TARGET}/.config/nvim"
fi

if [ "$OSTYPE" = "linux-gnu" ]; then
	command -v dpkg >/dev/null && dpkg -l ${VI_PACKAGE} | grep -qE "^ii[ ]+${VI_PACKAGE}[ ]+" || apt-get install - ${VI_PACKAGE}
fi

cd "$TARGET/.vim" || exit 1
bash install-venv.sh

# grep -qE 'local_run_python.*=.*1' ~/.vim/local.rc && \
# 	"$TARGET/.vim/venv3/bin/pip" install flake8 pep8

vim +PluginInstall +qall

echo "Press enter to finish"
read -r

reset
