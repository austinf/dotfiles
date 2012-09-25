#!/bin/sh
cd
rm -rf .vim .gitconfig .vimrc
ln -s dotfiles/.vim
ln -s .vim/.vimrc
ln -s dotfiles/.gitconfig


