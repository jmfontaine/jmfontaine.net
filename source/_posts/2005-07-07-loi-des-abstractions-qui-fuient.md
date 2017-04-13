---
title: Loi des abstractions qui fuient
id: 433
categories:
  - PHP
date: 2005-07-07 13:23:39
tags:
---

Un concept cher à [Perrick](http://www.onpk.net/) vient de faire irruption à mon travail. Il s'agit de la [loi des abstractions qui fuient](http://french.joelonsoftware.com/Articles/LeakyAbstractions.html). Cette loi édictée par le brilliant [Joël Spolsky](http://www.joelonsoftware.com/) dit en substance que lorsqu'on utilise un outil qui nous simplifie la vie, il faut être sûr de connaître les mécanismes mis en oeuvre afin de ne pas être désamparé le jour où cet outil ne remplira plus sa fonction car ce cas arrivera forcément tôt ou tard.

Dans l'application que nous développons, nous utilisons [ADOdb](http://adodb.sourceforge.net/) comme couche d'abstraction de base de données. J'ai fait ce choix au moment de la mise en place de l'architecture du produit car j'apprécie les méthodes qu'elle fournit pour simplifier le quotidien du développeur. De plus, l'application devant être déployée chez le client, je ne savais pas au départ s'il serait nécessaire ou non de supporter d'autres SGBD que MySQL, et en particulier Oracle.

Avec le temps, il s'est avéré que les clients s'équiperont d'un serveur dédié à notre application que nous administrerons nous-même. La portabilité n'est donc plus une contrainte. C'est d'autant mieux que l'application s'étoffant, nous avons commencé à introduire du code SQL spécifique à MySQL afin d'optimiser certains traitements. Il serait donc aujourd'hui difficile, en tout cas long, de passer à un autre SGBD.

Mais ce qui m'a définitivement fait basculer en faveur du remplacement d'ADOdb par une couche d'abstraction très simple et faite maison est que j'ai récemment rencontré 2 bugs dont un bloquant avec cette librairie. J'ai pu facilement débusquer et corriger le premier, correction qui apparaitra d'ailleurs dans la prochaine version, mais le second me resiste encore. Je n'ai même pas encore réussi à l'isoler.

C'est là que la loi des abstractions qui fuient m'est soudainement revenue à l'esprit. Clairement, cette libraire qui est sensée me faciliter la tâche me bloque gravement pour la mise en place du produit sur un serveur. Le problème semble lié au fait que ce soit une architecture 64 bits car le problème ne se produit pas sur 2 autres serveurs 32 bits. Cependant quelqu'en soit la raison, la taille et la complexité de cette librairie fait qu'il est difficile, et donc long, de s'en imprégner afin de pouvoir déterminer la cause du problème.

Je viens de vérifier malgré moi cette loi des abstractions qui fuient et cela va me servir de leçon. A l'avenir, j'essaierai un maximum de me passer de librairies que je ne maitrise pas parfaitement.