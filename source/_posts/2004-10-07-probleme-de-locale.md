---
title: Problème de locale
id: 304
categories:
  - PHP
date: 2004-10-07 15:23:51
tags:
---

Récemment, je me suis aperçu que certaines des dates étaient en Anglais sur l'un de mes sites. Ainsi les noms de mois étaient dans la langue de Shakespeare, ce qui faisait plutôt désordre sur un site en Français. C'est donc confiant que j'ai changé la valeur du _locale_ par _fr_FR_ comme le préconise la [RFC 1766 ](http://www.faqs.org/rfcs/rfc1766 "RFC 1766") mais cela n'a rien changé. J'ai fait une multitude d'essais avec tout ce qui a pu me passer par la tête mais sans succès.

Finalement j'ai trouvé la raison du problème et sa solution dans les commentaires du manuel PHP&nbsp;: le serveur tourne sous FreeBSD et sous ce système d'exploitation il faut ajouter l'encodage, la valeur correcte est donc _fr_FR.ISO8859-1_. Il fallait le savoir.