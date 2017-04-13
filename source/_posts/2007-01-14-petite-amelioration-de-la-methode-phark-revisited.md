---
title: Petite amélioration de la méthode Phark Revisited
id: 671
categories:
  - Développement Web
date: 2007-01-14 19:10:42
tags:
---

Afin de concilier aspect visuel et accessibilité, il est souvent nécessaire de remplacer un texte par une image. Il existe pour cela des [quantités de méthodes](http://www.mezzoblue.com/tests/revised-image-replacement/) avec chacune leurs avantages et leurs inconvénients.

Celle que je privilégie généralement est la méthode Phark Revisited car elle ne nécessite ni balisage inutile ni hack CSS. Le principe est tout simple&nbsp;: on donne au texte une hauteur et une largeur correspondant à la taille de l'image de remplacement puis on indente le texte à gauche avec une valeur énorme de manière à le faire sortir de l'écran.
 <pre>[php] &lt;h1&gt;Mon blog&lt;/h1&gt; </pre> <pre>[css] h1 {     background: url(mon_blog.jpg);     height: 100px;     text-indent: -9999em;     width: 350px; } </pre> 

Voir l'[exemple](/divers/blog/image_replacement/1.html).

Il est même possible de rendre l'élément cliquable comme si c'était une image en procédant ainsi&nbsp;:
 <pre>[html] &lt;h1&gt;&lt;a href=&quot;#&quot; title=&quot;Retourner à l'accueil&quot;&gt;Mon blog&lt;/a&gt;&lt;/h1&gt; </pre> <pre>[css] h1 {     background: url(mon_blog.jpg);     height: 100px;     width: 350px; } h1 a {     display: block;     height: 100px;     text-indent: -9999em;     width: 350px; } </pre> 

Voir l'[exemple](/divers/blog/image_replacement/2.html).

Le seul problème est que lorsqu'on clique le lien, les pointillés apparaissent autour de l'élément sont bien plus étendus sur la gauche qu'on pourrait s'y attendre comme le montre la capture d'écran suivante.

![](/images/pointilles1.jpg)

Heureusement il existe une parade simple à cela. Il suffit de donner la valeur "hidden" à la propriété overflow. L'exemple complet devient donc&nbsp;:
 <pre>[html] &lt;h1&gt;&lt;a href=&quot;#&quot; title=&quot;Retourner à l'accueil&quot;&gt;Mon blog&lt;/a&gt;&lt;/h1&gt; </pre> <pre>[css] h1 {     background: url(mon_blog.jpg);     height: 100px;     width: 350px; } h1 a {     display: block;     height: 100px;     overflow: hidden;     text-indent: -9999em;     width: 350px; } </pre> 

Voir l'[exemple](/divers/blog/image_replacement/3.html).

Et voici le résultat&nbsp;:

![](/images/pointilles2.jpg)