---
title: Zend Framework inutilisable chez OVH ?
id: 681
categories:
  - PHP
tags:
---

Bonjour,

J'ai constaté avec surprise il y a quelques temps que vous ne proposiez pas l'accès à MySQL via PDO. On m'a dit que cela n'était pas prévu dans un futur proche. Je pensais donc me rabattre sur l'extension mysqli.

Malheureusement, celle-ci n'est pas non plus disponible sur vos serveurs. Il semble que vous ne fournissez que l'extension mysql. Je ne comprends pas ce choix car cette extension ne permet pas de tirer partie des nouvelles fonctionnalités de MySQL 4.1 et supérieur. Quel est l'intérêt de proposer MySQL 5 si une partie de ses fonctionnalités n'est pas utilisable&nbsp;?

Par ailleurs, si j'ai besoin de cela c'est pour utiliser le Zend Framework, framework de plus en plus populaire. En l'absence de PDO, je projetais d'utiliser un connecteur en version de développement (celui pour mysqli) mais cela n'est même pas possible. En clair, le Zend Framework n'est pas utilisable chez OVH, ce qui est assez incompréhensible quand on se dit premier hébergeur Français.

Vous est-il possible de fournir prochainement l'accès à MySQL via PDO ou mysqli&nbsp;?

Cordialement.