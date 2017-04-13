---
title: Ubuntu Karmic et PHP sont dans un bateau...
id: 851
categories:
  - PHP
date: 2009-11-09 13:02:21
tags:
---

... et ça ne se passe visiblement pas très bien. Après les problèmes avec [Zend Server](http://www.durcommefaire.net/2009/10/31/834-installation-de-zend-server-sur-ubuntu-karmic) et [Zend Studio](http://www.durcommefaire.net/2009/11/01/835-zend-studio-et-ubuntu-karmic), voilà maintenant que c'est [PHP et par ricochet PEAR qui ont des problèmes](http://blog.pear.php.net/2009/11/03/ubuntu-karmic-ships-with-pear-affecting-issues/) avec la dernière version d'Ubuntu.

Le problème vient de la librarie zlib. Certaines de ses fonctionnalités ne sont plus disponibles dans PHP ce qui provoque l'échec silencieux du package PEAR Archive_Tar, empêchant toute installation de package PEAR.

Heureusement, il existe un contournement. Il suffit d'ajouter l'argument "-Z" afin de demander l'installation de packages non compressés&nbsp;:
 <pre>pear install -Z phpdocumentor</pre>