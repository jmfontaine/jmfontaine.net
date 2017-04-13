---
title: Installation de Zend Server sur Ubuntu Karmic
id: 848
categories:
  - PHP
date: 2009-10-31 17:30:32
tags:
---

Karmic, la nouvelle version d'Ubuntu est sortie comme prévu jeudi dernier. En essayant d'installer Zend Server dessus, j'ai eu la désagréable surprise de constater qu'un paquet nécessaire, "libkrb53", [n'est plus disponible sur celle-ci](http://www.mail-archive.com/universe-bugs@lists.ubuntu.com/msg150925.html).

Voici le genre de message d'erreur que l'on obtient&nbsp;:
 <pre>The following packages have unmet dependencies:   php-imap-zend-ce: Depends: libkrb53 (&gt;= 1.4.2) but it is not installable E: Broken packages</pre> 

En fait, ce paquet a été séparé en plusieurs nouveaux paquets&nbsp;: libkrb5-3, libgssapi-krb5-2, libk5crypto3 et libkrb5support0\. En attendant qu'Ubuntu ou Zend corrige ce problème, il est possible de le contourner en créant soit-même un paquet transitionnel faisant office d'alias pour ces nouveaux paquets.

*   Passer en root&nbsp;: sudo -i
*   Créer le fichier libkrb53_fake.txt et y ajouter les lignes suivantes&nbsp;: <pre>Package: libkrb53 Version: 1.6.dfsg.2+fake1 Depends: libkrb5-3, libgssapi-krb5-2, libk5crypto3, libkrb5support0</pre> 

*   Construire le paquet&nbsp;: equivs-build libkrb53_fake.txt (Il vous faudra peut-être installer le paquet "equivs" pour cela)
*   Installer le paquet créé&nbsp;: dpkg -i libkrb53_1.6.dfsg.2+fake1_all.deb 

Il ne vous reste plus qu'à relancer l'installation de Zend Server.