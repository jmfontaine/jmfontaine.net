---
title: Tests plus concis
id: 365
categories:
  - PHP
date: 2005-02-23 08:22:35
tags:
---

Voici une astuce toute simple pour diminuer la taille de vos tests quand ceux-ci sont simples et répétitifs.

Admettons que vous souhaitiez vérifier que _la valeur d'une variable vaux soit 2, soit 3, soit 7, soit 9_. La méthode qui vient immédiatement à l'esprit est de multiplier les tests de cette manière&nbsp;:
 <pre>if ($variable == 2 ||     $variable == 3 ||     $variable == 7 ||     $variable == 9 ) {   // … code … }</pre> 

Cela fait beaucoup de lignes pour un test assez simple finalement. En y regardant de plus près, on s'apercoit qu'on peut reformuler le problème ainsi&nbsp;: _la valeur d'une variable est-elle dans l'ensemble 2, 3, 7, 9 ?_. Ce qui s'écrit ainsi en PHP&nbsp;:
 <pre>if (in_array($variable, array(2, 3, 7, 9))) {   // … code … }</pre> 

Le code est maintenant beaucoup plus concis et tout aussi simple à comprendre.

**Mise à jour :**

Suite au [commentaire de michel v](http://www.dyingculture.net/blog/2005/02/23/347-tests-plus-concis#commentaire_1465 "Commentaire de michel v"), j'ai effectué un petit benchmark et il s'avère effectivement que la solution avec _in_array_ est nettement plus lente que l'autre. De plus, la différence grandie lorsque la valeur à trouver est située au début de la liste des tests.

Néanmoins, il faut relativiser car si la différence de temps d'exécution entre les 2 solutions est importante, dans l'absolu, la durée en elle même est infime et donc négligeable dans 99,99% des cas.