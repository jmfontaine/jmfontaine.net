---
title: Gérer les interruptions de connexion
id: 500
categories:
  - PHP
date: 2005-10-05 18:53:46
tags:
---

Lorsque PHP exécute un script, il se peut que l'utilisateur clique sur le bouton "Stop" de son navigateur. Dans ce cas, PHP stoppe l'execution du script immédiatement. La plupart du temps, cela ne pose aucun problème mais parfois il est important d'aller jusqu'au bout du script afin de garantir l'intégrité des données.

Pour cela, il suffit d'utiliser la fonction [ignore_user_abort()](http://www.php.net/manual/en/function.ignore-user-abort.php) qui indiquera à PHP de continuer l'exécution du script même en cas d'annulation de la part de l'utilisateur.

**Mise à jour :** Suite au [commentaire d'Arnaud](/blog/2005/10/05/482-gerer-les-interruptions-de-connexion#commentaire_2467), je précise que si l'exécution du script se poursuit sur le serveur, du côté de l'utilisateur, l'affichage de la page est bien stoppé. Il peut donc aller sur une autre page alors même que le premier script n'a pas fini de s'exécuter sur le serveur.