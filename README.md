[![en](https://img.shields.io/badge/lang-fr-red.svg)](https://github.com/heavymetalthings/LightFedora/blob/main/README.fr.md)

# Fedora light install

The following steps are the way you can create your own desktop environment using Fedora

# Road map

The first step is to install the minimal Fedora OS

The following things will be installed right after :
- Xorg
- ranger
- 
- qtile
- picom
- polybar
- rofi
- conky

Then we'll be ricing the whole thing

If you are satisfied with those, you can stop and add your own stuff, although I will add my personal stuff, which makes it a bit heavier, but yet not as much as a preinstalled gnome DE.

- VSCodium
- gnome-boxes
- libreoffice

# Making your own DE!

## Installing stock Fedora

First, we are going to pick the ISO installer, so, go on the fedora website, and pick the server edition 

![image1](/assets/images/1.png)

Second, pick the 64 bits netinst version, hoping you have an internet connection :)

![image2](/assets/images/2.png)

Then we can start the install.
If you are using windows, you can use either balenaetcher or rufus to burn the ISO on a USB key.

Once you boot in the ISO, you should see this page :

![image3](/assets/images/3.png)

Pick your location and language and click on "continue". 
You should now be supposed to see this menu :

![image4](/assets/images/4.png)

Be careful to change the keyboard setting to your keyboard layout!

Mine is a french layout, so I put french(alt.) :

![image5](/assets/images/5.png)

Don't touch to the installation source parameter

If you are using the entire disk (here my virtual machine), you can use the entire disk by ticking the "free up space..." box :

![image6](/assets/images/6.png)

And then selecting the entire disk partition to be deleted :

![image7](/assets/images/7.png)

Now, we can select which software to install. We will pick the minimal install :

![image8](/assets/images/8.png)

Pick your username (LEAVE THE ROOT PARAMETER AS IT IS), and your password. for convenience if you're using a VM, you can pick a very short password, but if it's your computer, better use a strong password :

![image9](/assets/images/9.png)

And now we can press the "Begin installation" button !
Once it's finished installing, you can reboot and remove your usb stick (just reboot if in a VM), and voilà !

## TTY!

Once your machine reboots, you should see this on your screen, after logging in :

![image10](/assets/images/10.png)

now we can proceed to install all the packages that we want !

## A linux desktop?

So, basically, your average linux distro is a desktop environment (DE) ran by a 

## Prerequisites

### git

```
sudo dnf install git -y
```


## Installing X

This will install the Xorg package

```
sudo dnf install @base-x -y
```

Once it's done, start crying (just kidding).

## Setting up qtile

My favorie window manager is qtile (because it's python). :grin:
I like using polybar and picom with it, although it is a bit heavier...
Anyways, we probably will be using less RAM than Gnome

So, these commands enable the copr repo, and installs qtile :

```
dnf copr enable frostyx/qtile
dnf install qtile
dnf install qtile-extras
```

From your main directory, go to the root directory by typing two times 

```
cd ..
```

## Setting up the DM

We need to install a display manager. 

```
sudo dnf install lightdm
sudo systemctl enable lightdm
sudo dnf install slick-greeter
```

## Conclusion

After installing, just clone the repo and use it as it will install everything.

I plan on doing few versions of it :
- Simple, with qtile only :
    - Xorg
    - Ly
    - qtile
- Less simple, with :
    - picom
    - polybar
    - rofi
    - conky
    - ranger
-Even less simple, with all the tools I like.

# Links

[Link to Ly github](https://github.com/fairyglade/ly)
