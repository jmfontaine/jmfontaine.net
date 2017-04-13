---
title: Ordre naturel et tableau associatif
id: 717
categories:
  - PHP
date: 2007-05-22 17:52:17
tags:
---

Un ordinateur et un homme ne voient pas toujours les choses de la même manière. Les tris notamment réservent des surprises. Prenons un exemple avec PHP.

Soit le tableau associatif suivant où la clé représente un numéro de version et la valeur, le nombre d'installation répertoriée pour celle-ci&nbsp;:
 <pre>$tableau = array(   '2.1.1' =&gt; 38,   '1.0.8' =&gt; 14,   '2.1.12' =&gt; 53,   '2.1.6' =&gt; 38,   '1.9.7' =&gt; 26, );</pre> 

On souhaite le trier selon la version. Pour cela, on peut utiliser la fonction [ksort()](http://www.php.net/manual/en/function.ksort.php) qui trie un tableau selon la clé. On obtient alors&nbsp;:
 <pre>array(5) {   ["1.0.8"] =&gt; int(14)   ["1.9.7"]=&gt; int(26)   ["2.1.1"] =&gt; int(38)   ["2.1.12"]=&gt; int(53)   ["2.1.6"]=&gt; int(38) }</pre> 

L'ordre semble bon à première vue mais si on regarde de plus près, les version 2.1.12 et 2.1.6 sont inversées. Tout du moins, notre cerveau les aurait triées différemment. La raison est toute simple. PHP constate que les clés sont des chaines de caractères et les trie donc comme telles. Notre cerveau quant à lui va un peu plus loin et comprend qu'on peut scinder cette chaine en 3 blocs et il va ordonner ces blocs et non la chaine elle-même Pour lui, le bon ordre est le suivant&nbsp;:
 <pre>array(5) {   ["1.0.8"] =&gt; int(14)   ["1.9.7"]=&gt; int(26)   ["2.1.1"] =&gt; int(38)   ["2.1.6"]=&gt; int(38)   ["2.1.12"]=&gt; int(53) }</pre> 

On appelle cela l'[ordre naturel](http://sourcefrog.net/projects/natsort/).Malheureusement pour notre exemple, ce n'est pas la méthode de fonctionnement classique des ordinateurs. Il existe bien en PHP une fonction [natsort()](http://www.php.net/manual/en/function.natsort.php) de tri par ordre naturel mais elle ne sait trier que par valeur et non par clé. Certains petits malins pourraient être tentés d'utiliser la fonction [array_flip()](http://www.php.net/manual/en/function.array-flip.php), qui inverse les clés et les valeurs d'un tableau, avant et après le tri pour contourner ce problème mais voici le tableau qu'ils obtiendraient&nbsp;:
 <pre>array(4) {   ["1.0.8"]=&gt; int(14)   ["1.9.7"]=&gt;  int(26)   ["2.1.6"]=&gt;  int(38)   ["2.1.12"]=&gt;  int(53) }</pre> 

La version 2.1.1 a disparu. La raison est toute simple, en inversant les clés et les valeurs, les versions 2.1.1 et 2.1.6 ont la même clé (38), la seconde version écrase donc la première.

Heureusement avec un peu d'astuce, il est possible de trier ce tableau dans l'ordre naturel sans risquer cet effet de bord en combinant les fonctions [uksort()](http://www.php.net/manual/en/function.uksort.php) et [strnatcmp()](http://fr.php.net/manual/en/function.strnatcmp.php) ainsi&nbsp;:
 <pre>uksort($tableau, 'strnatcmp');</pre> 

On obtient bien&nbsp;:
 <pre>array(5) {   ["1.0.8"] =&gt; int(14)   ["1.9.7"]=&gt; int(26)   ["2.1.1"] =&gt; int(38)   ["2.1.6"]=&gt; int(38)   ["2.1.12"]=&gt; int(53) }</pre> 

La subtilité est que la fonction uksort() demande un callback vers une fonction qui va être chargée de trier les éléments du tableau 2 à 2\. Cette fonction de comparaison doit retourner un entier supérieur, égal ou inférieur à zéro, pour, respectivement, indiquer que le premier argument est supérieur, égal ou inférieur au second.

Si généralement on utilise une fonction "maison" avec un callback, il est parfaitement possible d'utiliser une fonction native de PHP. C'est ce qui est fait ici afin de ne pas réinventer la roue et d'optimiser les performances.