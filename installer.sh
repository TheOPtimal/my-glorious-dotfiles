#!/bin/bash

echo "Glorious dotfiles installer/updater"
echo ""
echo "Installing Neovim dotfiles:"
echo ""
echo "Installing vim-plug for neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "Installing neovim init.vim"
curl -fo $HOME/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/TheOPtimal/my-glorious-dotfiles/master/init.vim 
echo "Installing plugins for neovim"
nvim -c ":PlugInstall" -c ":q" -c ":q"
echo "Installing finished!"
