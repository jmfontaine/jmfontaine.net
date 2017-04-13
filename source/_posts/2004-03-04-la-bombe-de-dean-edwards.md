---
title: La bombe de Dean Edwards
id: 155
categories:
  - Développement Web
date: 2004-03-04 13:38:19
tags:
---

Fidèle lecteur du [Glazblog](http://webperso.easyconnect.fr/danielglazman/weblog/ "Glazblog"), je viens de tomber sur une [bombe](http://webperso.easyconnect.fr/danielglazman/weblog/dotclear/index.php?2004/03/04/182-extend-internet-explorer "Extend Internet Explorer"). Un truc énorme dont ont va entendre parler pendant des mois à n'en pas douter.

Il est de notoriété publique que le support des standards par Internet Explorer est inversement proportionnel à son taux d'utilisation. Partant de ce funeste constat beaucoup utilisent des [hacks CSS](http://css-discuss.incutio.com/?page=CssHack "CssHack") pour arriver à contourner tant bien que mal ces limitations. Bien sûr ces hacks apportent leurs lots de soucis supplémentaires et donc de cheuveux en moins sur la tête des développeurs Web.

Microsoft a clairement fait savoir qu'ils ne comptaient pas faire le nécessaire pour qu'Internet Explorer améliore son support des standards. En tout cas pas avant la sortie de MSN Explorer avec Longhorn en 2006 au plus tôt.

C'est au moment où certains étaient en train de chercher de quoi se pendre (il faut bien avouer que les souris et les clavier sans fils ça n'a pas que des avantages), que débarque [Dean Edwards](http://dean.edwards.name/ "Dean Edwards"). Honnêtement je n'avait jamais entendu parlé de ce gars mais nul doute que son nom va être sur les lèvres de tous pour un bon moment.

Cet illustre inconnu n'a fait rien d'autre que de trouver une parade à la plupart des limitations d'Internet Explorer. Et d'une manière à la fois simple et propre. Pour tout vous avouer je trouve ça proprement incroyable ce qu'il a réalisé. Son mécanisme, appellé [IE7](http://dean.edwards.name/IE7/ "IE7"), est en fait constitué d'un fichier qui contient un comportement DHTML.

Pour l'utiliser, il n'y a pas besoin de modifier ni le code HTML, ni le code CSS. Il suffit d'ajouter cette ligne dans vos pages HTML :
 > &lt;link rel="stylesheet" src="ie7-html.css" type="text/css"/&gt; 

Le principe de fonctionnement est aussi simple que génial : le comportement DHTML charge, analyse et réécrit le code CSS au chargement de la page. Toute la _magie_ est dans le fait que ce comportement transcrit les règles que ne comprend pas Internet Explorer en règles qu'il comprend.

Ce comportement DHTML fonctionne avec Internet Explorer 5.5 et 6\. Essayez [les tests](http://dean.edwards.name/IE7/compatibility/ "Tests IE7"), vous serez bluffés j'en suis sûr.