---
title: Centralisation de fichiers - Première partie
id: 612
categories:
  - Boîte à outils
tags:
---

Entre mon ordinateur chez moi et mon portable, je passe mon temps à changer de poste. (Et encore je n'ai plus de fixe au travail)

J'ai installé les applications dont j'ai besoin sur chacun de ces postes mais il reste l'épineux problème des données. En effet, comment accéder à tout moment quelque soit le poste utilisé à mes calendriers, mes marque-pages dans mon navigateur, mes documents personnels, mon carnet d'adresse dans ma messagerie, etc.

Il existe ainsi une multitude de données qu'il serait souhaitable de pouvoir avoir toujours sous la main. Je vais vous montrer au travers d'une série d'articles comment cela est faisable. N'utilisant que Linux, mes exemples utiliseront uniquement ce système d'exploitation. Néanmoins, avec quelques adaptations il doit être possible de réaliser cela avec Mac OS X voire Windows.

sudo apt-get install davfs2

Une fois le paquet installé, il faut ajouter un bit SUID (un flag) à l'éxécutable mount.davfs.2-6 qui se trouve généralement ici /usr/lib/mount.davfs.2-6\. sudo chmod +s /usr/lib/mount.davfs-2.6

Votre utilisateur doit appartenir au groupe "users". Vous pouvez le vérifier avec cette commande, id utilisateur

Si ce n'est pas le cas, vous pouvez l'ajouter à ce groupe en tapant la commande, sudo adduser utilisateur users (Se délogger)

Créer le répertoire mkdir /home/utilisateur/Documents

Ajouter au fichier /etc/fstab http://www.exemple.net/partage/   /mnt/partage   davfs   rw,user,noauto   0   0

Ajouter dans le fichier ~/.davfs2/secrets http://www.exemple.net/partage/ utilisateur mot_de_passe

Modifier les droits sudo chmod 600 ~/.davfs2/secrets

Editer nano .bash_profile, ajouter&nbsp;: mount /home/jmf/Documents

// Pour que les répertoire distants ne soient pas inclus dans la BDD de locate sudo updatedb -e "/tmp,/var/tmp,/usr/tmp,/home/jmf/Documents"