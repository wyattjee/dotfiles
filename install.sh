#!/bin/sh

rm -rf .bashrc
ln -s ~/dotfiles/shell/bashrc ~/.bashrc

rm -rf ~/.config/fish/config.fish
ln -s ~/dotfiles/shell/config.fish ~/.config/fish/config.fish

rm -rf ~/.config/nvim/init.vim
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -L https://get.oh-my.fish | fish
