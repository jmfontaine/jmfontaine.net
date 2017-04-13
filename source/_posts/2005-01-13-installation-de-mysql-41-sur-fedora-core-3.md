---
title: Installation de MySQL 4.1 sur Fedora Core 3
id: 349
categories:
  - Développement Web
date: 2005-01-13 13:58:01
tags:
---

Je ne sais pour quelle raison, les <acronym>RPM</acronym> de MySQL 4.1 disponibles sur le site de l'éditeur, ne fonctionnent pas sur Fedora Core 3 alors qu'il n'y a aucun problème avec la version 2 de cette distribution Linux.

Après avoir pas mal bataillé, j'ai fini par trouver une solution. Il faut en fait utiliser la version distribuée par Fedora qui est sans doute remaniée pour la circonstance. Le problème c'est que si vous tapez `yum install mysql-server`, Yum ne va vous proposer qu'une version 3.23\. Cela vient du fait que les <acronym>RPM</acronym> Fedora pour la branche 4.1 de MySQL ne sont pas considérés comme stable mais comme étant en développement. Cela signifie qu'il ne sont pas disponibles sur les mêmes dépôts (repositories).

Cependant, Yum possède dans son fichier de configuration tout ce qu'il lui faut pour accèder au dépôt de développement. La seule chose qui l'en empêche est que celui-ci est désactivé par défaut. Il existe au moins 2 solutions pour activer ce dépôt. La première est de changer `enabled=0` en `enabled=1` dans le fichier `/etc/yum.repos.d/fedora-devel.repo`. Elle a l'avantage d'être simple mais également permanente. C'est à dire que lorsque vous voudrez mettre à jour un <acronym>RPM</acronym>, Yum vous proposera les versions de développement ce qui peut être gênant dans certains cas.

La seconde solution est à mon avis bien meilleure. Plutôt que d'activer le dépôt de manière permanente, il suffit d'indiquer qu'on veux utiliser celui-ci lors de l'installation. Ainsi, il ne sera utilisé qu'au coup par coup et en toute connaissance de cause. Pour ce faire, il suffit de taper la commande `yum --enablerepo=development install mysql-server`  pour installer MySQL en version de développement.