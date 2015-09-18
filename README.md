# Archlinux Configuration

### Base
add **/etc/pacman.conf**
```
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
```

```bash
$ sudo pacman -S yaourt
```

```bash
$ yaourt -S base base-devel samba htop tmux
```


### Shell
Terminal emulator
```bash
$ yaourt -S tilda sakura konsole
```

Fish shell
```bash
$ yaourt -S fish # Install fish
$ chsh -s /usr/local/bin/fish # Default fish

$ curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | sh # Install oh-my-fish
$ omf theme agnoster

$ yaourt -S python-powerline-git
```

https://github.com/powerline/fonts


### Openbox
```bash
$ yaourt -S openbox obmenu obkey obconf lxappearance slim slim-themes xorg-xev menumaker nitrogen tint2 pnmixer xscreensaver gmrun lxrandr plank
```

Generate menu in desktop: 
```bash
$ menumaker - mmaker -vf OpenBox3
```

Theme: Numix theme
Icons: ultra-flattr / faenza / elementary / moka


### Dev
```bash
$ yaourt -S vim git sublimetext geany python perl
```

### Programs
```bash
$ yaourt -S wps npm evince clipit thunar smplayer vlc megasync transmission mlocate xdiskusage firefox chromium scrot popcorntime xclip
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
