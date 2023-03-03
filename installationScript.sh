sudo dnf update -y
sudo dnf install \
  rofi\
  htop\
  ranger\
  -y
sudo dnf install make automake gcc gcc-c++ kernel-devel pam-devel libxcb-devel
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make install installsystemd
systemctl enable ly.service
systemctl disable getty@tty2.service
make install installopenrc
rc-update add ly
rc-update del agetty.tty2
make
make install installrunit
ln -s /etc/sv/ly /var/service/
rm /var/service/gdm
rm /var/service/agetty-tty2
sudo dnf install gnome-boxes
