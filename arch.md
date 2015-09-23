# Arch

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
