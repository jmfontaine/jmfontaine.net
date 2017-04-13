---
title: 'Subversion : Aggrégation de différents dépôts dans une copie de travail'
id: 610
categories:
  - Boîte à outils
date: 2006-10-03 12:26:11
tags:
---

[Subversion](http://subversion.tigris.org/) est un outil de [gestion de version](http://fr.wikipedia.org/wiki/Gestion_de_version) que j'adore. Il est simple à utiliser, robuste, multi-plateforme mais là où il est encore plus fort c'est que régulièrement je me dis que j'aimerai bien qu'il intègre telle ou telle fonctionnalité et généralement c'est déjà le cas sans que je le sache.

Je vais vous parler de la dernière fonctionnalité géniale qu'il intègre&nbsp;: la possibilité d'aggréger dans un même copie de travail des répertoires provenant de différents dépôts.

Prenons un exemple concrêt pour mieux comprendre. Supposons que vous utilisez un framework (qu'il soit maison ou pas tant qu'il est stocké dans un dépôt Subversion) et vous souhaitez développer une application basée sur ce framework. Voici l'arborescence de l'application en question&nbsp;:
 <pre>--racine   |--framework   |  |--_(fichiers du framework)_   |--application   |  |--modeles   |  |--vues   |  |--controleurs   |--www      |--index.php</pre> 

La méthode classique est de faire un export du framework et de l'intégrer dans l'application. Les fichiers exportés du framework feront partie du code de l'application et seront à ce titre stockésdans le dépôt. Il y a 2 gros inconvénients à cette méthode&nbsp;:

*   Le code du framework est stocké de manière redondante.
*   La mise à jour du code du framework utilisé dans l'application est compliquée car il faut faire les manipulations nécessaires sur chacune des applications l"utilisant. 

Heureusement, Subversion propose un [moyen de régler ces problèmes](http://svnbook.red-bean.com/nightly/en/svn-book.html#svn.advanced.externals). Au lieu de faire un export du répertoire framework, on ajoute la propriété _svn:externals_ au répertoire parent, en l'occurence "racine", et on lui donne la valeur suivante&nbsp;:
 <pre>framework   http://svn.exemple.com/framework</pre> 

Cette propriété indique à Subversion de créer un répertoire "framework" dont la source est située à l'adresse "http://svn.exemple.com/framework". L'avantage de cette méthode est qu'un simple update mettra à jour le code du framework sans autre intervention de votre part. De même, une modification dans ce répertoire sera répercutée dans le code du framework et non celui de l'application.

Parfois, la maintenance de l'application reste figée pendant un moment tandis que le framework évolue. Il arrive donc que celui-ci devienne incompatible avec l'application. Pour différentes raisons (notamment économiques), il est parfois impossible de rendre compatible l'application avec la dernière version du framework. Dans ce cas, il suffit d'indiquer le numéro de la révision en plus du chemin vers le dépôt. Ainsi, Subversion restera à cette révision même si le développement du framework se poursuit. Voici l'exemple précédent modifié pour rester figé à la révision 14&nbsp;:
 <pre>framework   -r14   http://svn.exemple.com/framework</pre>