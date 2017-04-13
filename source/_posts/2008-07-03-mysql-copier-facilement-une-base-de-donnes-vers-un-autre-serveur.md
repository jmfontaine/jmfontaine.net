---
title: 'MySQL : Copier facilement une base de données vers un autre serveur'
id: 783
categories:
  - Développement Web
date: 2008-07-03 14:38:25
tags:
---

Il arrive parfois d'avoir besoin de copier une base de données vers un autre serveur. Il est possible de faire facilement cette opération en utilisant l'outil mysqldump en ligne de commande&nbsp;:
 <pre>mysqldump table_source | mysql --host=hote -C table_cible</pre> 

Il est également possible de créer la copie sur le même serveur en omettant l'option --host&nbsp;:
 <pre>mysqldump table_source | mysql -C table_cible</pre> 

J'ai découvert cette astuce aujourd'hui en lisant la [documentation de l'outil mysqldump](http://dev.mysql.com/doc/refman/5.0/en/mysqldump.html). Voilà encore une preuve que [RTFM](http://en.wikipedia.org/wiki/Rtfm) est probablement le meilleur adage pour un développeur.