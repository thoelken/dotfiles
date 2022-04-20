#!/bin/sh

if hash pacman 2>/dev/null; then
    if ! hash vim 2>/dev/null; then sudo pacman -S vim; fi
    if ! hash git 2>/dev/null; then sudo pacman -S git; fi
    if ! hash tmux 2>/dev/null; then sudo pacman -S tmux; fi
fi

ln -sf $(dirname $(readlink -f "$0"))/vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

ln -sf $(dirname $(readlink -f "$0"))/tmux.conf ~/.tmux.conf
