---
title: 'Zend Server : Permettre l''accès à distance à phpMyAdmin'
id: 839
categories:
  - PHP
date: 2009-09-13 17:36:32
tags:
---

Je teste [Zend Server](http://www.zend.com/en/products/server/) depuis quelques semaines. Mes premières impressions sont plutôt bonnes mais il y a une chose qui me dérange. Il est possible d'installer phpMyAdmin afin d'administrer des bases de données MySQL mais l'accès à cet outil ne peut se faire que depuis la machine locale. Cela pose donc problème si on utilise Zend Server sur autre chose qu'un poste de développement.

Heureusement, il est très facile de désactiver cet excès de zèle. Pour cela, il suffit d'éditer le fichier /usr/local/zend/gui/lighttpd/etc/lighttpd.conf et de commenter les lignes suivantes&nbsp;:
 <pre>$HTTP["remoteip"](&quot;remoteip&quot;) !~ "127.0.0.1" {     $HTTP["url"](&quot;url&quot;) =~ "^/phpmyadmin/" {         url.access-deny = ( "" )         server.errorfile-prefix = "//usr/local/zend/gui/lighttpd/share/lighttpd-custom-errors/errorcode-"     } }</pre> 

Il faut ensuite redémarrer Lighttpd afin que la modification soit prise en compte&nbsp;:
 <pre># zendctl.sh stop-lighttpd # zendctl.sh start-lighttpd</pre> 

Et voilà, le tour est joué.