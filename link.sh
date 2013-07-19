#!/bin/sh
cd
rm -rf .vim .gitconfig .vimrc .bash_profile .gvimrc .profile .tmux.conf
ln -s dotfiles/.vim
ln -s .vim/.vimrc
ln -s .vim/.gvimrc
ln -s dotfiles/.gitconfig
ln -s dotfiles/.bash_profile
ln -s dotfiles/.bash_profile .profile
ln -s dotfiles/.tmux.conf
