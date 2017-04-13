---
title: Nouvelle technique de CSS hack
id: 130
categories:
  - Développement Web
date: 2004-01-30 10:15:21
tags:
---

Mon camarade YoGi expose au grand jour [une nouvelle technique pour éviter d'avoir recours aux CSS hacks](http://darkmag.net/darkBlog/index.php/2004/01/30/11-CssHacksPourquoiFaireCompliqueQuandOnPeutFaireSimple "CSS Hacks : pourquoi faire compliqué quand on peut faire simple ? ") qui, souvent, font autant de mal que de bien.

Cette technique a le mérite d'être simple à comprendre et à mettre en oeuvre mais je dois avouer être dubitatif quant à son intérêt. En effet elle ne peut s'utiliser que dans la page HTML et non dans les fichiers CSS. Il est clair que pour des raisons de maintenance et de gâchis de bande passante, il est inimaginable de laisser les propriétés CSS sur chaque page. Ce qui revient à dire qu'il faudrait utiliser la méthode suivante pour contourner certains bugs d'Internet Explorer :
 > &lt;link rel="stylesheet" type="text/css" href="style.css" media="screen" /&gt;
> 
>  &lt;!--[if IE 5]&gt; &lt;link rel="stylesheet" type="text/css" href="style_ie.css" media="screen" /&gt; &lt;![endif]--&gt; 

Sachant que selon les version d'Internet Explorer les bugs diffèrent on pourrait très rapidement se retrouver avec ce genre de chose :
 > &lt;link rel="stylesheet" type="text/css" href="style.css" media="screen" /&gt;
> 
>  &lt;!--[if IE 5.0]&gt; &lt;link rel="stylesheet" type="text/css" href="style_ie_5.css" media="screen" /&gt; &lt;![endif]--&gt;
> 
>  &lt;!--[if IE 5.5]&gt; &lt;link rel="stylesheet" type="text/css" href="style_ie_5_5.css" media="screen" /&gt; &lt;![endif]--&gt;
> 
>  &lt;!--[if IE 6]&gt; &lt;link rel="stylesheet" type="text/css" href="style_ie_6.css" media="screen" /&gt; &lt;![endif]--&gt; 

Dès lors je doute que cela soit meilleur que les CSS hacks, je serais même tenté de dire que les CSS hacks simple sont préférables. Personnellement j'essaie d'y avoir recours le moins possible et quand c'est vraiment nécessaire je me contente de hacks tout bêtes afin de ne pas prendre en facilité de maintenance ce que je gagne en possibilités. Cela dit, cette technique a le mérite d'exister et peut, dans certains cas, être une bonne idée. Comme tous les outils elle n'a pas une utilité universelle mais constitue un bon apport à votre trousse à outils.