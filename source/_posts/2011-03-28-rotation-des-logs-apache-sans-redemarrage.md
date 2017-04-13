---
title: Rotation des logs Apache
id: 966
categories:
  - Boîte à outils
date: 2011-03-28 13:41:58
tags:
---

Les logs sont une mine d'or pour comprendre le fonctionnement d'une application et débusquer les bogues vicieux. Il faut cependant veiller à ne pas les laisser grossir excessivement car cela ralenti progressivement l'application et fini parfois par la paralyser.

Sous Linux, on utilise généralement [logrotate](http://linuxcommand.org/man_pages/logrotate8.html) qui est simple à mettre en œuvre et efficace. Il permet de faire tourner les logs de n'importe quelle application.

Dans le cas particulier d'Apache, un <del>redémarrage</del> rechargement est nécessaire car sinon il n'écrit plus dans le nouveau fichier de log vierge. <del>Cela peut-être gênant pour des serveurs fortement sollicités pour lesquels il est difficile de trouver une période sans charge.
</del>**Correction****:** Suite à une remarque judicieuse d'Eric Daspet sur Twitter, j'ai corrigé ce paragraphe.

Pour pallier à ce problème, l'utilitaire [rotatelogs](http://httpd.apache.org/docs/current/programs/rotatelogs.html) est livré avec Apache. Il est très simple à mettre en œuvre : il suffit de modifier la déclaration des fichiers de log ainsi :
<pre>CustomLog "|bin/rotatelogs logs/access.%Y-%m-%d-%H_%M_%S 10M" common
ErrorLog "|bin/rotatelogs logs/error.%Y-%m-%d-%H_%M_%S 10M"</pre>
Désormais, au lieu d'écrire les lignes de log dans un fichier, Apache les envoie à l'exécutable rotatelogs qui se charge de les stocker dans un fichier nommé en fonction de la date. Ici la rotation s'effectue lorsque le fichier atteint la taille de 10 Mo.

On peut également définir une durée comme critère de rotation. Dans l'exemple suivant, les logs seront tournés toutes les 24 heures :
<pre>CustomLog "|bin/rotatelogs logs/access.%Y-%m-%d-%H_%M_%S **86400**" common
ErrorLog "|bin/rotatelogs logs/error.%Y-%m-%d-%H_%M_%S **86400**"</pre>
L'avantage de rotatelogs est qu'il fonctionne également sous Windows ce qui peut-être pratique lorsqu'on doit faire tourner un Apache sur ce système d'exploitation.

En revanche, rotatelogs n'effectue aucune compression ni nettoyage des logs archives comme le fait logrotate. Il faut donc veiller à effectuer ces tâches de maintenance par un autre moyen sous peine de remplir inexorablement le disque-dur de la machine.