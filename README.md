# Archlinux Configuration


### Shell

Terminal emulator
```bash
$ yaourt -S guake sakura konsole
```

```bash
$ yaourt -S fish # Install fish
$ chsh -s /usr/bin/fish # Default fish

$ curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish | fish # Install oh-my-fish
$ nano .config/fish/config.fish # Change theme to "agnoster"

# Downloada Powerline font & install: www.github.com/powerline/powerline
```


### Openbox

```bash
$ yaourt -S openbox obmenu obkey obconf lxappearance slim slim-themes xorg-xev menumaker nitrogen tint2 pnmixer xscreensaver gmrun lxrandr
```

To generate menu in desktop: 
```bash
$ menumaker - mmaker -vf OpenBox3
```


### Dev

```bash
$ yaourt -S sublimetext python django biopython rstudio perl
```
