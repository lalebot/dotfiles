# Archlinux Configuration

### Base
```bash
$ yaourt -S base base-devel samba htop tmux
```

### Shell
Terminal emulator
```bash
$ yaourt -S guake sakura konsole
```

Fish shell
```bash
$ yaourt -S fish # Install fish
$ chsh -s /usr/bin/fish # Default fish

$ curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish | fish # Install oh-my-fish
$ nano .config/fish/config.fish # Change theme to "agnoster"

# Downloada Powerline font & install: www.github.com/powerline/powerline
```


### Openbox
```bash
$ yaourt -S openbox obmenu obkey obconf lxappearance slim slim-themes xorg-xev menumaker nitrogen tint2 pnmixer xscreensaver gmrun lxrandr plank 
```

To generate menu in desktop: 
```bash
$ menumaker - mmaker -vf OpenBox3
```

Theme: Numix theme
Icons: flattr / faenza / elementary / moka


### Dev
```bash
$ yaourt -S git sublimetext geany vim python django biopython rstudio perl
```

### Programs
```bash
$ yaourt -S wps npm evince clipit thunar smplayer vlc megasync transmission mlocate xdiskusage scrot popcorntime 
```

To set default lenguaje in wps copy /opt/kingsoft/wps-office/office6/dicts/es_ES

To see movies in one line terminal:
```bash
$ peerflix http://url-del-torrent.torrent --vlc -d
```

### Utils
+ TLP Advanced Power Manager


### Curiosidades
```bash
$ cal 12 2015
$ cowsay
$ asciiquarium
$ oneko -tofocus -bg grey -fg black -tora
$ telnet towel.blinkenlights.nl 666
$ screenfetch
```
