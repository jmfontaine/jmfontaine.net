---
title: MS Smart Tags
id: 229
categories:
  - Développement Web
date: 2004-06-26 16:39:43
tags:
---

En créant mon template pour ce blog, j'avais été intrigué par une balise meta inhabituelle&nbsp;:
 <pre>&lt;meta name="MSSmartTagsPreventParsing" content="TRUE"&gt;</pre> 

Sur le coup j'avais d'autres chats à fouetter mais récemment j'ai revu cette balise dans le code de plusieurs pages. Oui j'ai une drôle d'habitude, quand un site me plait je regarde systématiquement son code <acronym title="HyperText Markup Language">HTML</acronym> et <acronym title="Cascading Style Sheets">CSS</acronym> pour voir si il n'y aurait pas quelque chose à en apprendre et c'est régulièrement le cas.

Je me suis donc mis en quête de documentation sur le sujet. Il s'[avère](http://smarttags.manilasites.com/ "The Smart Tags Weblog") [donc](http://www.alistapart.com/articles/smarttags/ "Much Ado About Smart Tags") que cette balise a pour but d'empêcher l'activation des Smart Tags pour la page. Bon c'est bien joli tout ça mais que sont ces Smart Tags&nbsp;? Il s'agit en fait d'un mécanisme implémenté dans Windows et diverses autres applications de Microsoft, dont Internet Explorer, qui recherche dans un document un mot qui correspondrait à ceux qu'il a en stock. Lorsqu'il en trouve un il, le transforme en lien. Quand on clique sur celui-ci, un menu permettant des actions en rapport avec le mot s'affiche. Par exemple il peut détecter un nom de ville et vous proposer un lien vers un voyagiste proposant des séjours dans cette ville.

A priori on ne voit pas trop ce qui pourrait poser problème mais en y regardant de plus près cela ne signifie ni plus ni moins que Microsoft tente par ce biais de s'incruster dans vos pages Web et y propose des services pas forcément en rapport avec vos préoccupations. Cela pourrait même tourner à la concurrence pure et simple si dans notre exemple précédent on considère qu'on est sur le site d'un voyagiste.

La parade est relativement simple, elle consiste tout simplement à insérer la balise meta indiquée au début de ce billet.