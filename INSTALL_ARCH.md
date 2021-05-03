## Arch Linux installation in VirtualBox

[Install Arch on VirtualBox (with screenshots)](https://www.howtoforge.com/tutorial/install-arch-linux-on-virtualbox/)

[Installation guide from docs](https://wiki.archlinux.org/index.php/installation_guide)

```
ping google.com 
clear
fsdisk -l
cfdisk
clear
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3 
mkswap /dev/sda2
swapon /dev/sda2 
clear
mount /dev/sda1 /mnt
mkdir /mnt/home
mount /dev/sda3 /mnt/home
pacstrap /mnt base base-devel
genfstab /mnt>> /mnt/etc/fstab 
arch-chroot /mnt /bin/bash
nano /etc/locale.gen
locale-gen
nano /etc/locale.conf 
LANG=en_US.UTF-8
ls /usr/share/zoneinfo
ln –s /usr/share/zoneinfo/EET /etc/localtime 
hwclock --systohc --utc
passwd 
nano /etc/hostname
systemctl enable dhcpcd
pacman –S grub os-prober
grub-install /dev/sda
grub-mkconfig –o /boot/grub/grub.cfg
exit
reboot
```

## No vmlinuz after insllataion
[Solving problem with missing image vmlinuz](https://bbs.archlinux.org/viewtopic.php?id=250486)

```
# go to installation again and get chroot
# mount /dev/sda1 /mnt
# mount /dev/sda3 /mnt/home
# arch-chroot /mnt /bin/bash

# pacman -S linux 
# pacman -S mkinitcpio
# mkinitcpio
```

## Missing dhcpcd service
[Solving problem with missing dhcpcd service](https://unix.stackexchange.com/questions/605648/installing-dhcpd-on-arch-linux)

```
$ sudo pacman -S dhcpcd

$ sudo systemctl enable dhcpcd
```

## Installing i3

```
$ sudo pacman -S xorg-server xorg-xinit xterm

$ sudo pacman -S i3

$ cp /etc/X11/xinit/xinitrc ~/.xinitrc
$ echo "exec i3" >> ~/.xinitrc
# comment out the last lines inside .xinitrc

$ sudo pacman -S ttf-dejavu

$ sudo pacman -S git

$ git clone https://github.com/powerline/fonts.git --depth=1
$ cd fonts
# for root
$ sudo ./install.sh
# for other users
$ ./install.sh
$ cd ..
$ rm -rf fonts

$ sudo pacman -S terminator

startx
```
> Note: Not sure if both font packages are necessary

## Configuring i3

**Run `startx` on login**
Append the following to `~/.bash_profile`
```
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
```

## Configuring monitor

```
$ sudo pacman -S arandr

$ echo "exec --no-startup-id xrandr --output Virtual1 --mode 1680x1050" >> ~/.config/i3/config
```

## Enable clipboard sharing

```
$ sudo pacman -S virtualbox-guest-utils
```
Add `VBoxClient-all` to `.xinitrc` just before `exec i3` line.

## Additional packages
[font awesome](https://github.com/FortAwesome/Font-Awesome)
[Source Code Pro font](https://github.com/adobe-fonts/source-code-pro/)
put fonts in `~/.local/share/fonts`
```
$ pacman -S firefox feh lxappearance i3blocks picom
$ pacman -S wget unzip openvpn sysstat
```

[ArchStrike: An Arch Linux repository for security professionals and enthusiasts](https://archstrike.org/)

## TODO

- [ ] Add undetected resolutions to Virtual1 [potential solution](https://wiki.archlinux.org/title/Xrandr#Permanently_adding_undetected_resolutions)
- [ ] Install VSCode or Sublime Text