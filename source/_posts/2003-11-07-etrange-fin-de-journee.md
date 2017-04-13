---
title: Etrange fin de journée
id: 29
categories:
  - Général
date: 2003-11-07 09:41:19
tags:
---

A mon travail, nous utilisons MS SQL Serveur 2000 comme <acronym title="Système de Gestion de Base de Données Relationnel">SGBDR</acronym>. Récemment j'ai rencontré un bug plutôt surprenant et très perturbant tant qu'on n'en a pas trouvé la cause.

Voici une version ultra allégée de ma requête <acronym title="Structured Query Language">SQL</acronym> afin de mettre en évidence ce bug:

` SELECT MON_CHAMP_SMALLDATETIME

FROM MA_TABLE

WHERE MON_CHAMP_SMALLDATETIME BETWEEN '20030910 00:00:00.000' AND '20030912 23:59:59.999'

`

Cette requête tout simple doit en théorie retourner tous les enregistrements dont le champ MON_CHAMP_SMALLDATETIME est compris entre le 10 et le 12 septembre 2003, ces 2 dates étant incluses. Sachant que les seules dates que j'ai dans ma table sont du 13 septembre à 00h 00m, je ne devrais obtenir aucun résultat.

Cependant voici ce que me renvoie cette requête une fois exécutée:

` 1 2003-09-13 00:00:00

2 2003-09-13 00:00:00

3 2003-09-13 00:00:00

4 2003-09-13 00:00:00

` Amusant non ?

Après quelques tests, il s'avère que pour MS SQL Server 2000, la fin d'une journée est située à 23h 59m 29s 998ms soit environ 30 secondes avant la fin réelle de la journée !

Espérons que le Trésor Public n'utilise pas MS SQL Server pour vérifier si un contribuable a posté sa déclaration d'impôt dans les temps impartis ...