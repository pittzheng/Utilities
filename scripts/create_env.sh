#!/bin/sh

DIR=/home/peiqzhen/Projects/Learning_Code/github/Utilities

ln -sf ${DIR}/scripts/ackrc ${HOME}/ackrc
ln -sf ${DIR}/scripts/bash_rocky ${HOME}/.bash_rocky
ln -sf ${DIR}/scripts/git-config.sh ${HOME}/personnal_bin/git-config.sh
ln -sf ${DIR}/scripts/git-info.sh ${HOME}/personnal_bin/git-info.sh
ln -sf ${DIR}/scripts/lookupfile.sh ${HOME}/personnal_bin/lookupfile.sh

ln -sf ${DIR}/softwares/tmux/tmux.conf ${HOME}/.tmux.conf

ln -sf ${DIR}/ssh/config ${HOME}/.ssh/config

ln -sf ${DIR}/vim_config/vim ${HOME}/.vim
ln -sf ${DIR}/vim_config/vimrc ${HOME}/.vimrc

echo "create env done!"

