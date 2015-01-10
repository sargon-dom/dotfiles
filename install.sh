#!/bin/bash

# gitconfig
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zshenv ~/.zshenv

# vim
mkdir -p ~/.vim
ln -snf ~/dotfiles/colors/ ~/.vim/colors
ln -sf ~/dotfiles/.vimrc ~/.vimrc

