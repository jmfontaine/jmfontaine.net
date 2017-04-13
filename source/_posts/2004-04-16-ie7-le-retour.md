---
title: 'IE7, le retour'
id: 178
categories:
  - Boîte à outils
date: 2004-04-16 13:54:38
tags:
---

Je [vous en avais parlé](/blog/2004/03/04/139-LaBombeDeDeanEdwards) il y a quelques temps, puis [IE7](http://dean.edwards.name/IE7/ "IE7") n'était plus disponible au téléchargement. Derrière cela ne se cachait pas un sombre complot ourdi dans le seul but de priver les développeurs Web du Saint Graal. Bon c'est un peu la méthadone du Saint Graal mais c'est mieux que rien puisque l'editeur du navigateur le plus utilisé refuse de le mettre à jour.

En réalité son auteur, Dean Edwards, a collaboré avec [Gellért Gyuris](http://arcok.ujevangelizacio.hu/bubu/web.html) afin de nous pondre une version 0.5.1 totalement réécrite. Si les premières versions étaient très impressionnantes, celle-ci est proprement hallucinante. Voyez donc par vous même la liste des choses supportées par IE 5.5 et 6 lorsqu'on utilise IE7:

*   Sélecteurs CSS
        *   :first-child
    *   :last-child
    *   :active
    *   :focus
    *   :hover
    *   [attr]
    *   [attr="value"]
    *   [attr~="value"]
    *   parent &gt; child
    *   adjacent + sibling
    *   adjacent ~ sibling
    *   .multiple.classes
    *   :root
    *   :empty
*   Attributs CSS
        *   box-sizing
    *   min-width
    *   min-height
    *   max-width
*   Divers
        *   Support de la balise ABBR
    *   Gestion de la couche alpha des images au format PNG 

Il faut noter que Dean recommande d'utiliser son script de manière différente par rapport aux premières versions. A présent, il est préférable d'utiliser des [commentaires conditionnels](http://msdn.microsoft.com/workshop/author/dhtml/overview/ccomment_ovw.asp "About Conditional Comments") en plus du lien habituel.

Cet outil va sans doute simplifier énormément la vie de milliers de développeurs Web en attendant que Microsoft daigne assumer ses responsabilités de leader du marché des navigateurs Web. Seulement une telle réalisation amène une question à 1000 roubles : Si un individu seul peut développer en JavaScript et sur son temps libre un outil permettant de corriger la plupart des bugs d'Internet Explorer, comment expliquer le fait que Microsoft n'ait pas été capable avec le code source et ses bataillons de développeurs professionnels d'en faire autant. Il suffisait d'appliquer le même raisonnement, le passage au code compilé présentant en plus un net gain en terme de performances. Pour ma part la réponse est claire: c'est un choix stratégique délibéré qui montre à quel point Microsoft se soucie de l'utilisateur final !