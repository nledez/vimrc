#!/bin/bash
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

set -e
echo "====== vim2"
pyenv virtualenvs --bare | grep -q '^vim2$'
if [ "$?" -ne 0 ]; then
	pyenv virtualenv 2.7.14 vim2
fi

echo "====== vim3"
pyenv virtualenvs --bare | grep -q '^vim3$'
if [ "$?" -ne 0 ]; then
	pyenv virtualenv 3.6.5 vim3
fi

for v in 2 3; do
	echo "====== vim${v}"
	pyenv activate vim${v}
	pip install --upgrade pip
	pip install -r requirements.txt
	pyenv deactivate
done
