---
title: Attention aux redirections
id: 327
categories:
  - PHP
date: 2004-12-09 22:34:59
tags:
---

Si comme moi, vous avez l'habitude d'utiliser la fonction `header('Location: mon_url.php');` pour rediriger vos visiteurs, méfiez-vous. Il faut ajouter un `exit;` après car, dans certains cas, la redirection ne se fait pas immédiatement et quelques lignes supplémentaires sont exécutées. J'ai cherché un bon moment avant de trouver cette solution dans la [documentation PHP](http://fr.php.net/manual/en/function.header.php "header"). Comme quoi, <acronym>RTFM</acronym> est toujours d'actualité.

Au passage, si vous utilisez HTTP 1.1, les URL doivent être absolues et non relatives. (`header('Location: http://www.site.com/mon_url.php');` et non pas simplement `header('Location: mon_url.php');`)