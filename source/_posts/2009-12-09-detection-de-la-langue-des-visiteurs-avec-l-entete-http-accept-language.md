---
title: Détection de la langue des visiteurs avec l'entête HTTP Accept-Language
id: 853
categories:
  - Développement Web
date: 2009-12-09 22:05:30
tags:
---

Détecter automatiquement la langue d'un visiteur n'est pas chose aisée. Généralement, on utilise un système de géo-localisation pour déterminer le pays depuis lequel l'internaute navigue afin d'en déduire la langue.

Mais comment fait-on pour les pays avec plusieurs langues officielles comme la Belgique, le Canada ou la Suisse&nbsp;? Comment distinguer également une personne située dans un pays dont elle ne parle pas la langue (touristes, travailleurs en déplacements, immigrés, etc.)&nbsp;?

L'[équipe de Flickr a résolu le problème](http://code.flickr.com/blog/2009/12/04/language-detection-a-witchs-brew/) en basant sa détection sur l'entête HTTP Accept-Language qu'envoient la plupart des navigateurs. Celle-ci indique au serveur les langues acceptées par l'internaute dans l'ordre de préférence. Il est donc ainsi aisé de servir le contenu du site dans la langue la plus appropriée sans devoir passer par des déductions plus ou moins approximatives.

Attention cependant à ne pas imposer vos déductions à vos visiteurs. Comme toute méthode, celle-ci a ses limites. Il est donc important de proposer un mécanisme aux visiteurs pour changer manuellement de langue.