#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
DOT_FILES=(.bashrc .vimrc .git-completion.bash .git-prompt.sh)

for file in ${DOT_FILES[@]}
do
    rm -f ${HOME}/${file}
    ln -s ${SCRIPT_DIR}/${file} ${HOME}/${file}
done

rm -f ${HOME}/.vim
ln -s ${SCRIPT_DIR}/.vim ${HOME}/.vim
