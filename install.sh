#!/bin/bash

########################################
# VIM stuff
########################################
cp .vimrc ~

# https://github.com/tpope/vim-surround
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q

# https://github.com/preservim/nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
vim -u NONE -c "helptags ~/.vim/pack/dist/start/vim-airline/doc" -c q

# https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/dist/start/vim-airline-themes
vim -u NONE -c "helptags ~/.vim/pack/dist/start/vim-airline-themes/doc" -c q

########################################
# redshift
########################################
cp redshift.conf ~/.config/redshift/
