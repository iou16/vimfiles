#!/bin/sh

current_dir=`pwd`
echo $current_dir
ln -s $current_dir/.vimrc $HOME/.vimrc
ln -s $current_dir/.gvimrc $HOME/.gvimrc
ln -s $current_dir/ $HOME/.vim
cp ./templete.vimrc ./my_conf.vimrc

mkdir $HOME/.bundle 
cd $HOME/.bundle
git clone https://github.com/Shougo/neobundle.vim

