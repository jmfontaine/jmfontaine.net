---
title: Installation d'Ubuntu Server 9.10 (Karmic) chez Gandi
id: 862
categories:
  - Ubuntu
tags:
---

J'ai récemment remplacé Debian par Ubuntu Server sur l'hébergement de ce blog. J'en avais assez des paquets anciens voire très anciens de Debian. Leur justification est que cela permet d'assurer la stabilité de la plate-forme. Je comprends l'argument mais je trouve son application excessive et pas forcément efficace comme le montre le fameux épisode du patch Debian qui a introduit une vulnérabilité dans le paquet OpenSSH.

J'héberge mes sites sur un serveur virtuel chez Gandi qui a récemment proposé la version 9.10 d'Ubuntu Server. Cela a donc été pour moi l'occasion de tester la version serveur de la distribution que j'utilise au quotidien depuis près de 5 ans.

Après l'installation, j'ai constaté plusieurs problèmes plus ou moins gênants pour lesquels voici des solutions.

Tout d'abord, l'utilisateur créé lors de l'installation n'a pas les droits d'invoquer la commande "sudo" bien que le message de connexion l'affirme. Pour corriger cela, il suffit d'ajouter la ligne suivante dans le fichier /etc/sudoers où "utilisateur" est le nom de l'utilisateur créé lors de l'installation&nbsp;:
 <pre>utilisateur    ALL=(ALL) ALL</pre> 

Aussi étrange que cela puisse paraître, on constate assez vite est que la locale fr_FR.utf8 qui est utilisée par le système n'est pas installée. Heureusement, cela se règle facilement&nbsp;:
 <pre>sudo aptitude install TODO</pre> 

Enfin, moindre grave mais irritant, l'autocompletion n'est pas active. Pour l'activer, il faut installer le paquet suivant&nbsp;:
 <pre>sudo aptitude install bash-completion</pre> 

Ensuite, il faut décommenter les lignes suivantes dans le fichier .bashrc et se reconnecter&nbsp;:
 <pre>if [ -f /etc/bash_completion ]; then  . /etc/bash_completion fi</pre> 

Une fois ces ajustements fait, cela tourne vraiment pas mal. Et vous que faites-vous lorsque vous installer un Ubuntu Server pour le configurer aux petits oignons&nbsp;?