---
title: Plus fréquenté ne veux pas dire meilleur
id: 375
categories:
  - PHP
date: 2005-03-16 12:20:50
tags:
---

On pourrait penser que des personnes qui développent un site très fréquenté sont au dessus du lot mais souvent, malheureusement, il n'en est rien comme le montre cette capture d'écran.

![](/images/winamp_erreur_php.jpg)

On ne le dira jamais assez, il ne faut **jamais** afficher les erreurs sur un serveur de production. Non seulement, cela perturbe l'utilisateur qui ne comprend rien à ce charabia mais surtout, un individu mal intentionné peut en tirer pas mal d'informations sur le site et le serveur (arborescence, nom de variables et de fonctions etc.) qui pourront lui servir en cas de tentative de hack, d'injection <acronym>SQL</acronym>, de Cross-site scripting et autres joyeusetés.