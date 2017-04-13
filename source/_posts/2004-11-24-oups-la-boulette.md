---
title: Oups. La boulette.
id: 318
categories:
  - Boîte à outils
date: 2004-11-24 18:49:26
tags:
---

Une fois n'est pas coûtume, aujourd'hui, je vais vous parler dans cette rubrique d'une procédure et non d'un programme. Si vous utilisez MySQL et que vous avez déjà tenté de l'administrer un peu, je suis sûr qu'au moins une fois vous avez commis l'erreur de triffouiller sans faire attention dans les privilèges et vous vous êtes retrouvé sans pouvoir accèder à votre base de données. Soit le mot de passe est erroné, soit l'utilisateur root n'existe plus ou bien encore il n'a aucun droit. Bref c'est la catastrophe.

Vous avez bien la solution de le désinstaller puis de le réinstaller ou pour les plus brutaux de récupérer les fichiers _user.*_ du répertoire _data/mysql_ d'une autre installation de MySQL et d'écraser les votres avec, perdant au passage vos anciens comptes et droits. Dans tous les cas, ce n'est ni pratique ni conseillé.

Il existe pourtant une procédure simple et [documentée](http://dev.mysql.com/doc/mysql/en/Resetting_permissions.html "How to Reset the Root Password") pour résoudre ce problème. Je vais vous la résumer rapidement pour une installation faite avec les RPM officiels sous Fedora Core 2\. Pour les autres systèmes, se référer à la documentation officielle.

*   Connectez vous sur la machine en _root_
*   Arrêtez le serveur MySQL 

`$ kill `cat /var/lib/mysql/_NOM DE VOTRE HOTE_.pid``

*   Relancez le serveur en désactivant la vérification des droits 

`$ /usr/bin/safe_mysqld --skip-grant-tables &amp;`

*   Changez le mot de passe du root 

`$ mysqladmin -u root flush-privileges password _'NOUVEAU MOT DE PASSE_'`

Voilà, ce n'est pas plus compliqué que cela.