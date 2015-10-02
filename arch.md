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
$ yaourt -S tilda terminator sakura
```

### Openbox
```bash
$ yaourt -S openbox obmenu obmenu-generator obkey obconf lxappearance slim slim-themes xorg-xev menumaker nitrogen tint2 pnmixer xscreensaver gmrun lxrandr plank
```

Generate menu in desktop:
```bash
$ menumaker - mmaker -vf OpenBox3
```

Theme: Numix theme - Numix solarized
Icons: ultra-flattr - moka - uniform - dalisha - numix

### Programs
```bash
$ yaourt -S thunar thunar-volman gvfs gvfs-afc thunar-archive-plugin xarchiver unrar unzip zip
$ yaourt -S wps npm wget jre8-openjdk evince2-light clipit smplayer vlc feh megasync transmission mlocate xdiskusage iceweasel chromium scrot popcorntime xclip iptraf tlp tlp-rdw alsa-utils alsa-ogg flashplugin
```

### Dev
```bash
$ yaourt -S vim git sublimetext geany python perl godot-git
```

### Fish shell
```bash
$ yaourt -S fish # Install fish
$ chsh -s /usr/bin/fish # Default fish

# oh-my-fish
$ curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | sh
$ omf theme agnoster

# wa
$ curl -L git.io/wa | sh
$ wa use agnoster #agnoster_powerline to your .dotfiles/init.fish

$ yaourt -S python-powerline-git
```

https://github.com/powerline/fonts
https://github.com/ryanoasis/nerd-fonts

#### Vim Bundle
```bash
$ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
$ sh install.sh
```



### Instalar HP
```bash
$ yaourt -S cups-filters avahi ghostscript gsfonts hplip system-config-printer
$ sudo systemctl start org.cups.cupsd.service
$ systemctl-config-printer
```

### Curiosidades
To set default lenguaje in wps copy /opt/kingsoft/wps-office/office6/dicts/es_ES

To see movies in one line terminal:
```bash
$ peerflix http://url-del-torrent.torrent --vlc -d
```
```bash
$ cal 12 2015
$ cowsay
$ asciiquarium
$ oneko -tofocus -bg grey -fg black -tora
$ telnet towel.blinkenlights.nl 666
$ screenfetch
```


# Arch install

```
---
loadkeys es
---
cfdisk
---
mkfs -t ext2 /dev/sda1
mkfs -t ext4 /dev/sda2
mkfs -t ext4 /dev/sda3
mkfs -t ext4 /dev/sda3

mkswap /dev/sda4
---
swapon /dev/sda4

---
mount /dev/sda2 /mnt

mkdir /mnt/boot
mkdir /mnt/home

mount /dev/sda1 /mnt/boot
mount /dev/sda3 /mnt/home
---
wifi-menu
---
pacstrap /mnt base base-devel grub-bios networkmanager xf86-input-synaptics
---
genfstab -U -p /mnt >> /mnt/etc/fstab
---
arch-chroot /mnt
---
nano /etc/hostname
---
ln -s /usr/share/zoneinfo/America/Buenos_Aires /etc/localtime
---
nano /etc/locale.conf
LANG=es_AR.UTF-8
---
nano /etc/locale.gen
locale-gen
---
nano /etc/vconsole.conf
KEYMAP=es
---
grub-install /dev/sda
---
grub-mkconfig -o /boot/grub/grub.cfg
---
mkinitcpio -p linux
---
passwd
---
exit
---
umount /mnt/{boot,home,}
---
reboot
---
---
systemctl start NetworkManager.service
systemctl enable NetworkManager.service
---
useradd -m -g users -G audio,lp,optical,storage,video,wheel,games,power,scanner -s /bin/bash user
passwd user
---
nano /etc/sudoers
%wheel ALL=(ALL) ALL:
---
sudo nmcli dev wifi connect "SSID" password "contraseña"
sudo pacman -Syu

## Driver
sudo pacman -S xorg-server xorg-xinit xorg-utils xorg-server-utils mesa mesa-demos xf86-video-intel xorg-twm xorg-xclock xterm

## Openbox
sudo pacman -S openbox
$ mkdir -p ~/.config/openbox
$ cp /etc/xdg/openbox/{rc.xml,menu.xml,autostart,environment} ~/.config/openbox

sudo pacman -S obconf menumaker tint2 network-manager-applet nitrogen lxappearance slim

nano .xinitrc
exec openbox-session

sudo systemctl enable slim.service

### Hora Argentina
sudo pacman -S ntp
sudo ntpdate ar.pool.ntp.org
sudo hwclock --systohc --utc
```