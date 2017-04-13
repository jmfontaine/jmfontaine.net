---
title: A propos des tableaux
id: 71
categories:
  - Développement Web
date: 2003-12-11 11:39:27
tags:
---

S'il faut [éviter d'utiliser les tableaux pour faire la mise en page](http://www.hotdesign.com/seybold/) d'un site, il ne faut pas pour autant les proscrire totalement d'un site conçu avec XHTML et CSS. En effet ceux-ci ont leur raison d'être: afficher des données tabulaires comme par exemple les résultats d'un calcul.

Pour beaucoup qui dit données tabulaires, dit visuel simpliste et terne. Heureusement grâce à CSS il est à présent possible de faire [des](http://www.bowdoin.edu/templates/tables.html) [choses](http://markl.f2o.org/tutorial/tables/Advanced_Tables.html) [attrayantes](http://moronicbajebus.com/playground/cssplay/reformat-table/) tout en restant valides et accessibles.

Enfin pour rendre un tableau encore plus pratique à consulter, il est même possible d'utiliser un peu de JavaScript "discrêt" afin de [trier dynamiquement ses colonnes](http://www.kryogenix.org/code/browser/sorttable/).

[JavaScript "discrêt"](http://www.kryogenix.org/code/browser/aqlists/) est un concept qui propose d'utiliser du JavaScript uniquement pour ajouter un plus à une page, en aucun cas il ne doit être indispensable au bon fonctionnement de celle-ci. De plus il doit se dégrader sans aucune manifestation gênante dans les navigateurs ne le supportant pas, et enfin il doit nécessiter le moins de code JavaScript possible dans le code HTML. L'idéal étant que cela se résume à un simple appel d'un fichier JavaScript externe.