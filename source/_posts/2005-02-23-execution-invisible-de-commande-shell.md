---
title: Exécution invisible de commande Shell
id: 366
categories:
  - PHP
date: 2005-02-23 13:17:13
tags:
---

Lorsqu'on utilise PHP en ligne de commande, il est souvent nécessaire de lancer une commande Shell depuis PHP. Seulement, il est rarement souhaitable que celle-ci affiche directement des informations dans le terminal. Afin d'empêcher un quelconque affichage par la commande Shell tout en récupérant sa sortie, il suffit d'utiliser la commande suivante&nbsp;:
 <pre>exec('LA_COMMANDE_SHELL', $sortie, $code);</pre> 

Une fois cette ligne exécutée, la variable _$sortie_ sera un tableau contenant les lignes de la sortie tandis que la variable _$code_ contiendra le code de sortie de la commande Shell.