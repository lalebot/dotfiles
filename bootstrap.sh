#!/bin/sh
rm ~/.vimrc
ln -s ~/git/dotfiles/vimrc ~/.vimrc
rm ~/.config/terminator/config
ln -s ~/git/dotfiles/config-terminator ~/.config/terminator/config
rm ~/.config/fish/config.fish
ln -s ~/git/dotfiles/config.fish ~/.config/fish/config.fish
rm ~/.config/openbox/rc.xml
ln -s ~/git/dotfiles/openbox/rc.xml ~/.config/openbox/rc.xml
rm ~/.config/openbox/menu.xml
ln -s ~/git/dotfiles/openbox/rc.xml ~/.config/openbox/menu.xml
rm ~/.config/gtk-3.0/gtk.css
ln -s ~/git/dotfiles/gtk3.css ~/.config/gtk-3.0/gtk.css