#!/bin/bash

mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

rm -f ~/.vimrc ~/.gvimrc
ln -s ~/.myvim/vimrc ~/.vimrc
ln -s ~/.myvim/vimrc ~/.gvimrc

# Apply colors
mkdir -p ~/.vim/colors
cp ~/.myvim/color/* ~/.vim/colors/

echo "type :NeoBundleInstall, and type :q! to exit" | vim -
