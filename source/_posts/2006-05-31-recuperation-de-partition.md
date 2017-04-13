---
title: Récupération de partition
id: 579
categories:
  - Divers
date: 2006-05-31 08:24:37
tags:
---

Sur mon <acronym title="Personnal Computer">PC</acronym> personnel, j'ai 3 disque-durs. Celui qui héberge Kubuntu est en <acronym title="Integrated Drive Electronics">IDE</acronym> tandis que les deux autres stockent mes données et sont en <acronym title="Serial ATA">SATA</acronym>. Tout cela fonctionnait très bien jusqu'à une panne de courant. Au redémarrage l'un des deux disques SATA refusait obstinément de monter. J'obtenais le message d'erreur suivant&nbsp;:
 > Bad FS or bad options or bad superblock 

Dans un premier temps j'ai crains un problème matériel mais l'analyse du disque avec l'excellent, mais spartiate, testdisk m'a rassuré car il voyait la partition et surtout il pouvait lister les répertoires. Le système de fichier était le bon tout comme les options car elles n'avaient pas changé depuis des semaines et cela fonctionnait auparavant.

Il restait donc le problème du superblock. Ne sachant pas comment gérer la chose, je me suis tourné vers les [forums d'aide d'Ubuntu-fr](http://forum.ubuntu-fr.org/index.php) où l'[on m'a indiqué](http://forum.ubuntu-fr.org/viewtopic.php?pid=313984#p313984) la commande à utiliser&nbsp;:
 > e2fsck -y 

Enfin, j'ai modifié le type de système de fichiers pour du ext3 qui gère [la journalisation](http://fr.wikipedia.org/wiki/Journal_%28syst%C3%A8me_de_fichiers%29) contrairement à ext2\. Cela permet de minimiser les pertes de données en cas d'arrêt brutal du système (plantage, coupure de courant,etc.) et de rendre la récupération plus rapide car il n'y a pas besoin d'analyser tout le disque.