---
title: Jusqu'où les URL doivent-elles être significatives ?
id: 250
categories:
  - Développement Web
date: 2004-07-19 22:24:43
tags:
---

Il y a déjà un moment que je suis convaincu de l'intérêt des [URL](http://www.useit.com/alertbox/990321.html "URL as UI") [significatives](http://www.w3.org/Provider/Style/URI "Cool URIs don&#039;t change") seulement je commence à en voir les limites. En effet pour un blog par exemple, l'URL suivante est très explicite&nbsp;:
 > http://www.monsite.net/blog/2004/07/19 

On comprend très facilement qu'elle mène à la liste des billets du 19 juillet 2004\. Maintenant imaginons que pour une raison quelconque nous ayons besoin d'inclure plus d'informations dans cette URL. Très vite celle-ci va perdre de sa signification et va même peut-être devenir plus confuse qu'une URL "_non significative_".

Prenons l'URL "_non significative_" suivante&nbsp;:
 > http://www.monsite.net/gallerie.php?numero=2&amp;depart=15&amp;nombre=10 

En l'observant un peu, on comprend qu'elle affiche 10 images de la galerie numéro 2 en partant de la 15e image. Je vois 3 moyens de transformer cela en URL significative.

1.  http://www.monsite.net/gallerie/2/15/10
2.  http://www.monsite.net/gallerie/2?depart=15&amp;nombre=10
3.  http://www.monsite.net/gallerie/numero-2/depart-15/nombre-10 

La première façon est calquée directement sur le premier exemple mais on voit tout de suite que la signification est très altérée. La seconde façon correspond à un schéma que l'ont commence à croiser sur quelques sites mais j'estime qu'il ne fait que retomber dans les travers que les URLS significatives étaient sensées corriger. Enfin la troisième façon est celle qui a ma faveur car je la trouve relativement claire même lorsqu'on multiplie les paramètres. Bien sûr la longueur de l'URL augmente mais on conserve les vertues principales des URL significatives.

Et vous qu'en pensez-vous&nbsp;?