---
title: Revue de presse PHP du 29/06/09
id: 818
categories:
  - PHP
date: 2009-06-29 10:52:17
tags:
---

Comme chaque <del>fin de semaine</del> ou presque (cela devient une habitude :( ), voici la revue de presse hebdomadaire pour vous faire découvrir ce qui se dit d'intéressant sur PHP. Il s’agit d’articles en français ou en anglais que j’aimerais partager avec vous.

Et parce qu'il n'y a pas que PHP au monde, vous trouverez également un article important mais dans un domaine libre et n'ayant pas forcément de rapport avec PHP.

*   [Inspekt](http://code.google.com/p/inspekt/)
En matière de sécurité d'une application web, il est très important de ne jamais faire confiance aux données venant de l'utilisateur.
Pour s'assurer que les développeurs n'utilisent pas par inadvertance des données non validées la librairie Inspekt encapsule ces données dans des objets pour lesquels on peut définir des règles de validation. Les données initiales sont supprimée afin d'empêcher leur accès direct.
*   [A Set of Objects in PHP: Arrays vs. SplObjectStorage](http://technosophos.com/content/set-objects-php-arrays-vs-splobjectstorage)
Depuis PHP 5.2, la SPL propose la classe SPLObjectStorage qui permet de gérer facilement une collection d'objets.
 Matt Butcher a comparé les performance de cette classe avec l'utilisation d'un classique tableau.
*   [Using Apache2 ITK Multi-Processing Module on Linux](http://devzone.zend.com/article/4779-Using-Apache2-ITK-Multi-Processing-Module-on-Linux)
Sur un serveur partagé, il est impératif de pouvoir s'assurer qu'un script d'un utilisateur ne peut pas accéder aux données d'un autre utilisateur. Ce n'est pas toujours une tâche aisée mais heureusement l'utilisation du MPM ITK pour Apache 2 et de suPHP ou suExec simplifie la mise en place de cette sécurité.
*   [La question est posée&nbsp;: "PHP&nbsp;: POO ou (exclusif) Procédural ?"](http://blog.phppro.fr/?post/2009/06/25/La-question-est-posee-%3A-PHP-%3A-POO-ou-exclusif-Procedural)
Olivier Hoareau se pose la question du choix entre Programmation Orientée Objet et programmation procédurale. De son point de vue, le débat n'est pas forcément POO ou Procédural, mais plutôt, "industrialisés/rationnalisés/maîtrisés/testables/bouchonnables" contre "non homogènes, non-bonnes pratiques,non cadrés, non-testable".
*   [Format a time interval with the requested granularity](http://blog.fedecarg.com/2009/06/25/format-a-time-interval-with-the-requested-granularity/)
Cet article présente une fonction qui permet d'afficher un intervalle de temps avec l'unité la plus représentative. C'est à dire que si la différence entre deux dates est seulement de quelques heures, les années, mois et jours seront omis. 

Et voici l'article bonus de la semaine :

[Becoming a Better Programmer: Fighting Your Natural Instincts](http://robertstackhouse.com/2009/06/22/becoming-a-better-programmer-fighting-your-natural-instincts)
Les développeurs ont souvent du mal à dévoiler leur code. Il est difficile d'accepter de soumettre son code et donc son expertise aux commentaire d'autres développeurs. C'est cependant le gage d'un code de qualité car il y a plus d'idées dans plusieurs cerveaux que dans un seul.