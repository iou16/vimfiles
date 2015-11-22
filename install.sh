#!/bin/sh

current_dir=`pwd`
echo $current_dir
ln -s $current_dir/.vimrc $HOME/.vimrc
ln -s $current_dir/.gvimrc $HOME/.gvimrc
ln -s $current_dir/ $HOME/.vim

mkdir $HOME/.bundle 

