---
title: Amélioration du mailto
id: 323
categories:
  - Développement Web
date: 2004-12-07 19:36:58
tags:
---

Vous savez sans doute créer un lien vers une email à l'aide d'un _mailto_. Peut-être même savez vous ajouter un sujet, des copies conformes, des copies conformes cachées ou un corps. Mais saviez-vous qu'il est possible d'indiquer l'identité de la personne en plus de son email&nbsp;?

Pour cela il suffit de créer un lien tel que celui-ci&nbsp;:

`&lt;a href="mailto:Jean-Marc%20Fontaine%3Cjmf@dyingculture.net%3E"&gt;Mon mail&lt;/a&gt;`

Le texte suivant le _mailto_ devra être de la forme _identité&lt;email&gt;_. Il s'agit en fait du format classique des emails dans les clients de messagerie. Attention cependant à bien échapper les caractères. Ainsi, l'espace entre mon nom et mon prénom devient _%20_ et les caractères _&lt;_ et _&gt;_, respectivement _%3C_ et _%3E_. Bien entendu, tout cela est parfaitement valide.

Merci à Andrzej pour cette astuce et pour m'avoir prouvé une nouvelle fois qu'"on croyait une chose impossible jusqu'à ce que quelqu'un ne le sache pas et la fasse".