---
title: Astuce SQL
id: 455
categories:
  - Développement Web
date: 2005-08-05 20:54:31
tags:
---

J'ai récemment eu besoin d'insérer un enregistrement dans une table d'une base de données. La particularité est que je devais insérer cet enregistrement avec un identifiant de _1_ or il y avais déjà des enregistrements et donc un enregistrement ayant pour identifiant _1_.

Le principe est simple, il suffit de décaler les identifiants de 1\. Malheureusement, la mise en oeuvre l'est moins car les identifiants étant uniques et les modifications se faisant dans l'ordre ascendant des identifiants, la requête suivante provoque une erreur indiquant que l'identifiant _2_ existe déjà&nbsp;:
 <pre>UPDATE ma_table SET id=id+1;</pre> 

La solution est elle aussi simple en principe&nbsp;: il suffit de faire cette mise à jour des identifiants en commencant par la fin. Qu'à cela ne tienne, l'instruction UPDATE permet d'utiliser une clause ORDER BY&nbsp;:
 <pre>UPDATE ma_table SET id=id+1 ORDER BY id DESC;</pre> 

Personnellement, je ne connaissais pas cette possibilité et je trouve cela génial.