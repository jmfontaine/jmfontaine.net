---
title: Ca commence bien avec IE7
id: 627
categories:
  - Développement Web
date: 2006-10-10 16:24:34
tags:
---

Alors que Microsoft annonce l'[arrivée d'Internet Explorer 7](http://blogs.msdn.com/ie/archive/2006/10/06/IE7-Is-Coming-This-Month_2E002E002E00_Are-you-Ready_3F00_.aspx) pour ce mois-ci, j'ai eu envie de tester son rendu avec un site que je suis en train de réaliser.

Le site a été conçu à l'aide de Firefox. Une fois la mise en page effectuée et le code HTML et CSS validé, j'ai vérifié qu'il passait bien sur les principaux navigateurs. Les navigateurs modernes n'ont posé aucun problème. Internet Explorer 6 et 5.5 ont demandé quelques menues adaptations notamment pour contourner le [Doubled Float-Margin Bug](http://www.positioniseverything.net/explorer/doubled-margin.html).

Internet Explorer 7 en revanche affiche un rendu catastrophique. Que ce soit avec ou sans les adaptations pour Internet Explorer 6 et 5.5\. Cela veux donc dire que non seulement il ne rend pas correctement ma mise en page valide et qui passe sur les navigateurs dignes de ce nom mais en plus il a des bugs différents, et en l'occurence pires, que les versions précédentes. Franchement, ce n'est pas rassurant.

Voici le rendu sous Internet Explorer 6\. Il correspond à ce qui est attendu&nbsp;:

![](/images/site_ie6.jpg)

Et voici le rendu sous Internet Explorer 7&nbsp;:

![](/images/site_ie7.jpg)

**Note :** Je n'ai pas utilisé de hacks mais des [commentaires conditionnels](http://msdn.microsoft.com/workshop/author/dhtml/overview/ccomment_ovw.asp) pour les adaptions pour Internet Explorer 6 et 5.5\. Le problème d'affichage avec la version 7 ne peut donc pas venir de là.