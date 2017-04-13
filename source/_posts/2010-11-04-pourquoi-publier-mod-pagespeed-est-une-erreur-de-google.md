---
title: Pourquoi publier mod_pagespeed est une erreur de Google
tags:
  - google
  - mod_pagespeed
  - pagespeed
  - performance
  - yahoo
  - yslow
id: 908
categories:
  - Développement Web
date: 2010-11-04 12:16:55
---

Il y a déjà quelques années, Yahoo! bousculait bien des idées reçues en affirmant que les potentialités de gains de performance des applications web se situaient davantage du côté client que du côté serveur.

### La prise de conscience

[![](http://www.jmfontaine.net/wp-content/uploads/2010/11/yslow-150x150.png "Yslow")](http://www.jmfontaine.net/wp-content/uploads/2010/11/yslow.png)Menée par [Steve Souders](http://stevesouders.com/), une équipe baptisée [Exceptional Performance team](http://developer.yahoo.com/performance/) était constituée dans le but de mener des recherches sur les technologies web et leur gestion par les navigateurs. A l'issue de ces longs tests empiriques,  l'équipe a publié [une liste de préconisations](http://developer.yahoo.com/performance/rules.html) qui a bousculé certaines idées reçues.

Dans la foulée, l'équipe publiait [Yslow](http://developer.yahoo.com/yslow/), une extension pour Firefox qui permet de tester très simplement l'application de ces préconisations. On obtient une note entre A et F qui permet de situer son site par rapport à d'autre en terme de performances et de lister les améliorations possibles.

### Google entre dans la danse

Google ne pouvait rester longtemps étranger à cette problématique, le [géant américain recrute donc Steve Souders](http://www.businessinsider.com/2007/12/yahoo-exec-souders-going-to-google-yahoo-going-to-zero) début 2008 pour monter une équipe similaire en son sein.

L'équipe publie rapidement sa propre [liste de préconisations](http://code.google.com/speed/page-speed/docs/rules_intro.html) ainsi qu'une extension pour Firefox nommée [PageSpeed](http://code.google.com/speed/page-speed/). La filiation avec Yslow et les préconisations de Yahoo est évidente même si chacun conserve ses particularités.

### Un choix contre-productif

Pour aller plus loin, Google a annoncé hier la sortie de [mod_speedpage](http://code.google.com/speed/page-speed/docs/module.html), un module Apache qui permet de mettre en place simplement ces préconisations. L'intention est louable mais elle me semble contre-productive au final.

Proposer des préconisations sous un format facilement compréhensible avec à la fois les raisons qui amènent à prodiguer ce conseil et les manières de l'implémenter me semble être une bonne manière d'éduquer les développeurs web et les administrateurs de serveurs en partageant avec le plus grand nombre le fruit des recherches complexes effectuées par des équipes de pointe.

Au contraire, empaqueter l'application des ces préconisations dans un module Apache prêt à l'emploi me semble être une fausse bonne idée car les plus fainéants (et qui ne l'est pas au fond ?) vont préférer installer ce module à l'étude puis l'implémentation manuelle des préconisations. On perd au passage la prise de conscience et la compréhension fine des problématiques sous-jacentes.

On risque également de se retrouver avec des modules mal configurés qui n'apporteront pas grand chose, donnant une fausse impression de travail accompli.

Il est important de rappeler au passage qu'en matière de performance, chaque évolution doit être validée par des mesures précises. Les benchmarks montrent souvent que les problèmes ne se situent pas vraiment là où on le pense intuitivement. Par ailleurs, modifier un élément pour améliorer la vitesse d'affichage d'une  application web ne doit pas être basé sur l'intuition au risque de ne  rien gagner voire même de perdre en performances.

### Tout n'est pas à jeter

Il faut cependant veiller à ne pas jeter le bébé avec l'eau du bain car il y a également de bonnes choses dans ce projet de Google.

Tout d'abord mod_speedpage est très paramétrable et peut être utilisé en complément des optimisations manuelles notamment pour ce qui concerne du code dont on n'aura pas la maîtrise (contenu généré par des utilisateurs, code géré par une équipe tierce ou un prestataire, code intégré dynamiquement depuis une source non maîtrisée, etc.)

Le module propose également un [mécanisme](http://code.google.com/speed/page-speed/docs/filter-instrumentation-add.html) permettant de déterminer la vitesse d'affichage des pages dans le navigateur des visiteurs de manière automatisée. Cela permet d'aller plus loin que les tests de performances menées par l'équipe de développement et qui sont forcément limitées par les configurations à disposition.

En conclusion, je trouve l'initiative intéressante sur certains aspects mais j'ai bien peur qu'elle ne vienne annihiler une partie des efforts fait par Yahoo! et Google depuis quelques années pour promouvoir les performances web.