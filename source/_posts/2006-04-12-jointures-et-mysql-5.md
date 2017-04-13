---
title: Jointures et MySQL 5
id: 543
categories:
  - Développement Web
date: 2006-04-12 14:47:08
tags:
---

Ce matin nous avons été confronté à un problème surprenant au travail. Une requête SQL qui passe très bien sur 2 serveurs mais qui indique qu'un champ est inconnu dans une jointure sur un troisième.

Après observation, la seule chose qui parraissait un peu étrange dans la requête SQL était le fait que l'une des jointures ne se faisait pas dans l'ordre logique. Voici un exemple simplifié de la requête illustrant le problème&nbsp;:
 <pre>SELECT * FROM `clients` AS c INNER JOIN `groupes` AS g ON g.id = s.id_groupe INNER JOIN `societes` AS s ON s.id = c.id_societe</pre> 

En toute logique, il aurait fallu faire la jointure sur la table _groupes_ après celle sur la table _sociétés_. Cependant cette requête passe parfaitement sur deux serveurs. Le second point étonnant est que ces fameux serveurs sont en version 4.1.12 tandis que celui qui pose problème est en 5.0.18\. Rétablir l'ordre logique des jointures règle le problème.

Après quelques recherches, il s'avère que ce n'est pas un bug mais une [nouvelle fonctionnalité](http://dev.mysql.com/doc/refman/5.0/en/join.html). Afin de mieux coller au standard SQL:2003, MySQL a modifier sa gestion des jointures sur de nombreux points dont celui-ci. En attendant de modifier vos requêtes, vous pouvez rétablir le comportement de MySQL 4.0 en modifiant [le mode SQL](http://dev.mysql.com/doc/refman/5.0/en/server-sql-mode.html).