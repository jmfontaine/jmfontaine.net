---
title: CVS et nettoyage
id: 182
categories:
  - Humeur
date: 2004-04-19 14:05:17
tags:
---

Il y a un phénomène qui se généralise depuis quelques temps et qui m'énerve vraiment. La plupart des projets collaboratifs libres utilisent CVS comme outils de versionnement. Qu'il y a-t-il de mal à ça me direz vous. Mais absolument rien seulement ce que je déteste c'est quand il reste une ribambelle de sous-répertoires _CVS_ qui contiennent les informations nécessaires à l'administration du versionnement. Ces répertoires n'ont absolument aucune utilité pour l'utilisateur final. Ils ne font qu'alourdir la distribution, rendre confuse la structure des répertoires et allonger les traitements récursifs comme les CHMOD.

Les exemples qui me viennent à l'esprit immédiatement sont [phpMyAdmin](http://www.phpmyadmin.net/ "phpMyAdmin - Mysql DB administration tool") et [Serendipity](http://www.s9y.org/ "Serendipity - a PHP Weblog/Blog software") mais il en existe bien d'autres. Il n'est pourtant pas difficile d'utiliser la commande [_export_](http://www.cvshome.org/docs/manual/cvs-1.11.15/cvs_16.html#SEC134 "Description de la commande export") à la place de [_checkout_](http://www.cvshome.org/docs/manual/cvs-1.11.15/cvs_16.html#SEC121 "Description de la commande checkout").