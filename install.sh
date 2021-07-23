#!/bin/bash

echo "Install Plug.vim"
mkdir -p ~/.vim/autoload
#git clone --depth=1 git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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

echo "type :PlugInstall and [Enter]. type :qall! to exit" | vim -
