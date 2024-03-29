sudo dnf update -y
sudo dnf install \
  dpkg\
  rofi\
  btop\
  ranger\
  -y
sudo dnf install @base-x -y
sudo dnf install xterm

dnf copr enable frostyx/qtile
dnf install qtile
dnf install qtile-extras
sudo dnf install make automake gcc gcc-c++ kernel-devel pam-devel libxcb-devel
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make install installsystemd
systemctl enable ly.service
systemctl disable getty@tty2.service
#make install installopenrc
rc-update add ly
rc-update del agetty.tty2
make
make install installrunit
ln -s /etc/sv/ly /var/service/


sudo dnf install gnome-boxes

#test