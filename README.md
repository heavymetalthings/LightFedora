[![en](https://img.shields.io/badge/lang-fr-red.svg)](https://github.com/heavymetalthings/LightFedora/blob/main/README.fr.md)

# Fedora light install

The following steps are the way you can create your own desktop environment using Fedora

# Road map

The first step is to install the minimal Fedora OS

The following things will be installed right after :
- Xorg
- ly
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
