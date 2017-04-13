---
title: Installation d'Ubuntu Dapper sur un Sony Vaio VGN-SZ1M
id: 559
categories:
  - Ubuntu
tags:
---

- Repartitionnement

http://gparted.sourceforge.net/

Suppression de la partition de restauration (après génération et test des DVD) -&gt; devient partition de données de 7 Go Suppression de la partition de données Diminution de la taille de la partition système à 14 Go Création d'une patition de 20 Go pour / Création d'une patition de 32 Go pour /home Création d'une patition de swap de 2 Go

- Mise à jour des paquets

- Dépôts

Activation des dépôts Universe et Backports Ajout de PLF

1.  PLF 

deb http://packages.freecontrib.org/ubuntu/plf/ dapper free non-free deb-src http://packages.freecontrib.org/ubuntu/plf/ dapper free non-free

- Kernel

sudo apt-get install linux-686-smp

- Carte NVidia

sudo apt-get install nvidia-glx &amp;&amp; sudo nvidia-xconfig --no-logo

Installation des logiciels&nbsp;:

- Firefox, Thunderbird, Yakuake, Krusader, Basket

Problème carte réseau

Utiliser sk98lin Désactiver key2

http://avilella.googlepages.com/vaiosz

Carte graphique&nbsp;:

Mettre dans sudo nano /etc/init.d/xorg_conf&nbsp;:

VIDEO=`/usr/bin/lspci |grep -c nVidia`

if [ "$VIDEO" = 1 ](&quot;$VIDEO&quot; = 1); then cp -f /etc/X11/xorg.conf.speed /etc/X11/xorg.conf else cp -f /etc/X11/xorg.conf.stamina /etc/X11/xorg.conf fi

sudo chmod +x /etc/init.d/xorg_conf sudo ln -s ../init.d/xorg_conf /etc/rc2.d/S12xorg_conf

Son casque&nbsp;:

Passer à au moins la version 1.0.11 d'ALSA.

wget ftp://ftp.alsa-project.org/pub/driver/alsa-driver-1.0.12.tar.bz2 tar xjvf alsa-driver-1.0.12.tar.bz2 cd alsa-driver-1.0.12 ./configure sudo make sudo make install

(checkinstall ne fonctionne pas pour une raison indéterminée)