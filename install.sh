#!/bin/bash

echo "Install neobundle.vim"
mkdir -p ~/.vim/bundle
git clone --depth=1 git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# Backup vimrc
echo "Backup vimrc and gvimrc"
cp ~/.vimrc ~/.vimrc.old
cp ~/.gvimrc ~/.gvimrc.old

# Replace vimrc to mine
echo "Replace vimrc and gvimrc to ~/.myvim/vimrc"
rm -f ~/.vimrc ~/.gvimrc
ln -s ~/.myvim/vimrc ~/.vimrc
ln -s ~/.myvim/vimrc ~/.gvimrc

# Apply colors
echo "Copying ~/.myvim/color/ to ~/.vim/colors/"
mkdir -p ~/.vim/colors
cp ~/.myvim/color/* ~/.vim/colors/

echo "type :NeoBundleInstall and [Enter]. type :q! to exit" | vim -
