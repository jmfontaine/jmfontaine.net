---
title: Amélioration du TEdit en mode mot de passe
id: 132
categories:
  - Delphi
date: 2004-01-30 14:57:32
tags:
---

Le TEdit utilisé en mode mot de passe sous WIndows XP ne mime pas exactement le comportement du composant Windows natif. Ainsi il est possible de lire le contenu du TEdit grâce à un message WM_GETTEXT, les caractères sont remplacés par des étoiles et non des ronds et enfin il n'y a aucun message d'alerte si la touche _Caps Lock_ est activée.

Gnegg apporte une réponse toute simple à cela dans [ce billet](http://www.gnegg.ch/archives/000084.html#000084 "Delphi, WinXP and Password Edits").