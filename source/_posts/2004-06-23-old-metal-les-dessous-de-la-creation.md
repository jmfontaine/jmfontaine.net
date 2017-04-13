---
title: Old metal - Les dessous de la création
id: 220
categories:
  - Développement Web
date: 2004-06-23 18:20:57
tags:
---

Comme promis, voici la démarche que j'ai utilisée pour créer le visuel [Old metal](http://www.csszengarden.com/?cssfile=http://www.dyingculture.net/csszengarden/old-metal/sample.css&amp;page=0 "Old metal") pour [CSS Zen Garden](http://www.csszengarden.com/ "css Zen Garden: The Beauty in CSS Design"). Elle diffère assez peu de celle que j'utilise habituellement. La principale différence vient du fait que pour une fois le code <acronym title="HyperText Markup Language">HTML</acronym> était imposé ce qui induisait des contraintes supplémentaires.

![](/images/old_metal.jpg)

#### Préambule

J'ai mis la main il y a quelques années sur une série de photos libres de droits mettant en scène des plaques de différents métaux. L'une d'elle m'a immédiatement fascinée. Je l'ai utilisée comme base pour le visuel de la première mouture de Dying Culture. Malheureusement avec l'arrivée du blog, les titres en images n'étaient plus appropriés et je ne voulais pas les remplacer par des titres en texte car le rendu visuel était bien moins intéressant. Je me suis donc résolu à changer de visuel pour celui qui est actuellement en place. Seulement j'aimais tellement l'ancien visuel que je ne voulais pas qu'il aille définitivement aux oubliettes du Web. J'ai donc décidé de le retravailler en vue de le soumettre au CSS Zen Garden de [Dave Shea](http://www.mezzoblue.com/ "mezzoblue - design, typography, and the web: live from vancouver, b.c., canada"). C'est ambitieux, j'en ai conscience, voire même peut-être présomptueux mais j'espère qu'il sera accepté.

Dans un autre registre, on me demande régulièrement des conseils de développement Web. Je donne avec plaisir quelques conseils ci et là mais j'ai pleinement conscience que souvent ce ne sont pas les détails qui pêchent mais carrément la méthodologie complète. Ceci n'est pas un reproche, tout débutant par définition ne sait pas comment aborder les problèmes auxquels il est confronté. C'est avec l'expérience et les erreurs commises qu'on acquiert une méthode de travail efficace. Je vais donc détailler ma démarche dans la conception de ce visuel. N'y voyez pas la manifestation d'un ego hypertrophié. Ce ne sont que des conseils et des méthodes tirées de mon expérience personnelle. Chacun peut faire des choix radicalement différents qui ne sont pas pourtant moins bons. Mon but est uniquement de vous donner une vision d'ensemble de ma méthode. Ensuite libre à vous de vous inspirer de tout ou partie pour vous forger votre propre méthode ou même de considérer qu'il n'y a rien d'intéressant là dedans à vos yeux.

Je ne vais utiliser que des logiciels libres ou gratuits à l'exception notable de Photoshop qui est incontournable dans son domaine. Cela montre bien qu'en terme de développement Web, la valeur ajoutée se situe dans la créativité et les compétences du développeur et non dans les outils eux même.

#### Croquis

Tout d'abord je commence par faire un croquis de ce que je veux obtenir. Bien que simpliste, ce croquis me permet d'avoir une idée des volumes et donc de l'équilibre global de la page. Je peux également grâce à cela estimer les tailles des différents éléments pour la maquette.

![](/images/croquis.jpg)

#### Maquette

Ensuite je passe à la maquette. Elle me permet de faire des essais de couleurs, de formes, d'agencement et me servira, une fois finalisée, de source pour mes images.

Généralement je travaille avec Photoshop dont j'apprécie la gestion des calques, les styles de calques, les tranches ainsi que l'exportation pour le Web. Le seul défaut est une mauvaise gestion du PNG en compression. Si vous préférez un outil libre alors essayez [Gimp](http://www.gimp.org/ "GIMP - The GNU Image Manipulation Program") qui est vraiment bien mais, tout du moins à mes yeux, ne rivalise pas encore avec Photoshop pour la création de graphismes destinés au Web.

Nous allons commencer par créer la texture rocheuse qui servira de fond. Je veux qu'elle ressemble un peu à du charbon, qu'on ait l'impression d'une pierre très sombre avec un peu de relief. Obtenir cet effet est assez simple avec Photoshop, le problème ici est qu'il faut obligatoirement que cette texture puisse être utilisée comme motif pour le fond. Cela complique sérieusement la tâche. Heureusement j'ai trouvé sur l'excellent site [theWebMachine](http://www.thewebmachine.com/ "theWebMachine - Your guide through Adobe WebCollection!") un tutorial montrant une technique pour y arriver. Je m'en suis grandement inspiré mais j'y ai introduit quelques différences notamment j'ai utilisé une taille de 512 et non 256\. Le but est de limiter le nombre de répétitions du motif afin justement que cela ne saute pas aux yeux qu'il s'agit d'un motif comme c'est trop souvent le cas. J'ai ensuite diminué la luminosité afin d'accentuer le côté charbon.

Voici à présent les 2 images qui vont nous servir de matériau de base pour ce visuel. Ces versions sont bien entendu réduites. Les versions originales font 3800x2500 en 300 dpi.

![](/images/image_base_2.jpg) ![](/images/image_base_1.jpg)

En ce qui concerne la police, je voulais une écriture manuscrite mais peu structurée. Après une petite recherche sur [DaFont](http://www.dafont.com/) j'ai trouvé mon bonheur en la police _Violation_.

Voici ce que donne la maquette une fois terminée. Pour le moment les 3 menus sont regroupés en un sur la gauche mais c'est uniquement pour faciliter la création de la maquette et éviter de dupliquer inutilement des éléments.

![](/images/maquette.jpg)

#### Réalisation

Il est maintenant temps de créer la feuille de style pour le visuel. L'éditeur que j'utilise depuis des années est Top Style Lite. Il s'agit d'une version très allégée et gratuite de l'excellent éditeur [Top style](http://www.bradsoft.com/topstyle/index.asp "TopStyle Pro CSS / XHTML / HTML Editor"). Ma méthode est de développer avec [Firefox](http://www.mozilla.org/products/firefox/ "Firefox - The Browser, Reloaded") jusqu'à ce que je sois satisfait du résultat. C'est à ce moment et pas avant que je teste mon design avec Internet Explorer.

Cela peut paraître étonnant comme démarche mais mon principe est que je veux coder proprement donc utiliser Firefox est un bon moyen de vérifier l'aspect de la page dans un navigateur conforme. Néanmoins je suis conscient qu'Internet Explorer détient une part de marché beaucoup trop importante pour être négligé. C'est pourquoi je m'attache ensuite à adapter ma feuille de style afin d'obtenir un rendu correct dans ce navigateur. Ainsi j'ai un code <acronym title="Cascading Style Sheets">CSS</acronym> globalement propre avec seulement quelques "bidouilles" concédées pour Internet Explorer. Cette démarche a fait ses preuves à maintes reprises mais elle suppose tout de même d'avoir en tête lors de la création de la feuille de style initiale les limitations d'Internet Explorer afin de ne pas introduire des choses impossibles à reproduire sous ce navigateur même en bidouillant.

Pour être sûr que le code CSS concernant les liens sera pris en compte partout, il faut respecter l'ordre de déclaration suivant&nbsp;: link, visited, hover, active. C'est un peu idiot mais certains navigateurs ayant une gestion assez spéciale de cela, seul cet ordre vous assure un rendu correct.

#### Tests

Une fois le visuel réalisé, il convient de tester son rendu dans le plus de navigateurs possibles. Ne disposant que d'un PC sous Windows pour le moment (Mon serveur Linux n'a toujours pas de nouvelle carte mère), j'ai utilisé la [technique](http://www.skyzyx.com/archives/000094.php "Multiple Versions of Internet Explorer") de Ethan Marcotte mise en oeuvre par Ryan Parman. Celle-ci permet d'avoir plusieurs versions d'Internet Explorer installées en même temps sur un poste.

Pour tester sur Mac, j'ai eu recours à l'excellent [iCapture](http://www.danvine.com/icapture/ "iCapture - your site through the eyes of Apple&#039;s Safari browser.") de Daniel Vine qui permet de tester l'apparence d'une page dans Safari.

Au final j'ai donc testé ce visuel sur les navigateurs suivants&nbsp;:

*   Mozilla 1.7 / Windows
*   Firefox 0.9 / Windows
*   Internet Explorer 6.0 / Windows
*   Internet Explorer 5.5 SP2 / Windows
*   Internet Explorer 5.01 SP2 / Windows
*   Opera 7.51 / Windows
*   Safari 1.2 / Mac 

#### Corrections

Suite à ces tests j'ai donc effectué les quelques corrections nécessaires afin de limiter l'impact de la mauvaise gestion des <acronym title="Cascading Style Sheets">CSS</acronym> par certains navigateurs. Il y a finalement [assez](http://www.dithered.com/css_filters/css_only/property_ws_comment.html "http://www.dithered.com/css_filters/css_only/property_ws_comment.html") [peu](http://www.dithered.com/css_filters/css_only/child_selector.html "Child Selector") de hacks, et ceux-ci sont assez basiques. Ainsi ils ne compliquent pas outre mesure le code <acronym title="Cascading Style Sheets">CSS</acronym>. Si vous visualisez ce design avec un navigateur moderne (Firefox, Mozilla, Opera etc.) puis avec Internet Explorer vous constaterez que la version affichée par le navigateur de Microsoft est moins _jolie_. Cela est dû aux limitations de ce navigateur. Entendons nous bien, le site reste visuellement agréable et parfaitement navigable seulement pour profiter à 100% du visuel il faut utiliser un navigateur digne de ce nom. Cela rejoint la doctrine _[Don't sell. Show !](http://www.zeldman.com/daily/0802c.html#evangeline "Jeffrey Zeldman - Don&#039;t sell. Show!")_ qui, à mon sens, est la meilleure pour démocratiser l'utilisation des standards Web.

#### Conclusion

J'espère que ce billet vous aura donné quelques pistes quant à la démarche à adopter pour développer une page avec <acronym title="Cascading Style Sheets">CSS</acronym>. Comme je l'ai dit précédemment, ne vous sentez pas obligé de l'appliquer à la lettre. Piochez-y plutôt ce qui vous intéresse et adaptez-le à vos besoins.