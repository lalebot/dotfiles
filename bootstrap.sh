#!/bin/sh
rm ~/.vimrc
ln -s ~/git/dotfiles/vimrc ~/.vimrc
rm ~/.config/terminator/config
ln -s ~/git/dotfiles/config-terminator ~/.config/terminator/config
rm ~/.config/fish/config.fish
ln -s ~/git/dotfiles/config.fish ~/.config/fish/config.fish
rm ~/.config/smplayer/smplayer.ini
cp ~/git/dotfiles/smplayer.ini ~/.config/smplayer/smplayer.ini
rm ~/.config/openbox/rc.xml
ln -s ~/git/dotfiles/openbox/rc.xml ~/.config/openbox/rc.xml
rm ~/.config/openbox/menu.xml
ln -s ~/git/dotfiles/openbox/menu.xml ~/.config/openbox/menu.xml
rm ~/.config/tint2/tint2rc
ln -s ~/git/dotfiles/tint2/tint2rc ~/.config/tint2/tint2rc
mkdir ~/.config/openbox/pipemenus
rm ~/.config/openbox/pipemenus/obpipemenu-places
ln -s ~/git/dotfiles/openbox/pipemenus/obpipemenu-places ~/.config/openbox/pipemenus/obpipemenu-places
rm ~/.config/openbox/pipemenus/fehpipe
ln -s ~/git/dotfiles/openbox/pipemenus/fehpipe ~/.config/openbox/pipemenus/fehpipe
rm ~/.config/openbox/pipemenus/obrecent.sh
ln -s ~/git/dotfiles/openbox/pipemenus/obrecent.sh ~/.config/openbox/pipemenus/obrecent.sh
rm ~/.config/obmenu-generator/config.pl
ln -s ~/git/dotfiles/openbox/obmenu-generator/config.pl ~/.config/obmenu-generator/config.pl
rm ~/.config/obmenu-generator/schema.pl
ln -s ~/git/dotfiles/openbox/obmenu-generator/schema.pl ~/.config/obmenu-generator/schema.pl
rm ~/.config/gtk-3.0/gtk.css
ln -s ~/git/dotfiles/gtk3.css ~/.config/gtk-3.0/gtk.css
