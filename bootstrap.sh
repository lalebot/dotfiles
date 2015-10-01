#!/bin/sh
rm ~/.vimrc
rm ~/.config/terminator/config
rm ~/.config/fish/config.fish
ln -s ~/git/dotfiles/vimrc ~/.vimrc
ln -s ~/git/dotfiles/config-terminator ~/.config/terminator/config
ln -s ~/git/dotfiles/config.fish ~/.config/fish/config.fish