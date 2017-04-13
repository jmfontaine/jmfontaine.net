---
title: Processus Unix et humour (de geek)
id: 634
categories:
  - PHP
date: 2006-10-16 12:16:38
tags:
---

En parcourant le livre [PHP5 - Power programming](http://www.amazon.fr/PHP-Power-Programming-Andi-Gutmans/dp/013147149X) à la recherche d'informations sur la gestion des processus avec PHP dans le but d'écrire un daemon, je suis tombé sur un tableau qui répertorie les différent signaux existant.

Le dernier semble tout droit sorti des préoccupations d'un jeune papa&nbsp;:
 > SIGBABY&nbsp;: Passed when a baby is ready to change diapers, hungry, about to climb something dangerous or doing anything else that requires immediate attention from a parent PHP programmer. 

En cherchant un peu, on s'aperçoit que ce signal est également listé dans la [documentation officielle](http://www.php.net/manual/fr/ref.pcntl.php) car il apparaît dans le [code source de PHP](http://www.google.com/codesearch?q=+SIGBABY+show:jGvj0pWVwDw:zLderARryqg:1yLNUN04Rbg&amp;sa=N&amp;cd=1&amp;ct=rc&amp;cs_p=http://snaps.php.net/php5.2-latest.tar.gz&amp;cs_f=php5.2-200608102230/ext/pcntl/pcntl.c#a0). Il semble que cela soit une blague entre les développeurs de PHP.