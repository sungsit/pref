#!/bin/bash

#
# variables
#
TIME_FORMAT=$(date +%Y-%m-%d-%s)

cd $HOME/pref

#
# bash
#
# backup .bash* files

#
# git
#
# git submodules
git submodule init
git submodule update

#
# vim
#

# backup .vimrc
if [ -f $HOME/.vimrc ]
then
    mv $HOME/.vimrc $HOME/.vimrc-$TIME_FORMAT
fi
cp .vimrc $HOME/.

# create .vim symlink
if [ -d $HOME/.vim ]
then
    mv $HOME/.vim $HOME/.vim-$TIME_FORMAT
fi
ln -srf $HOME/pref/.vim $HOME/.
