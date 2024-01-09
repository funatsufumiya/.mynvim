#!/bin/bash

echo "Install Plug.vim"
mkdir -p ~/.config/nvim/autoload
mkdir -p ~/.config/nvim/plugged
#git clone --depth=1 git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Backup init.vim
echo "Backup init.vim"
cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old

# Link init.vim
echo "Link init.vim to ~/.mynvim/init.vim"
rm -f ~/.config/nvim/init.vim
ln -s ~/.mynvim/init.vim ~/.config/nvim/init.vim

# Apply colors
echo "Copying ~/.mynvim/color/ to ~/.config/nvim/colors/"
mkdir -p ~/.config/nvim/colors
cp ~/.mynvim/color/* ~/.config/nvim/colors/

echo "type :PlugInstall and [Enter]. type :qall! to exit" | vim -
