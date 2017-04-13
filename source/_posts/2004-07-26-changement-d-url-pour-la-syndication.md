---
title: Changement d'URL pour la syndication
id: 256
categories:
  - Vie du blog
date: 2004-07-26 22:45:41
tags:
---

Suite à certaines modifications sur ce blog, les [fils de syndications](/blog/syndication "Syndication") ont changé d'URL. Voici les nouvelles adresses&nbsp;:

*   Billets
        *   [Atom 0.3](http://www.dyingculture.net/blog/syndication/billets/atom/0.3)
    *   [RSS 1.0](http://www.dyingculture.net/blog/syndication/billets/rss/1.0)
*   Commentaires
        *   [Atom 0.3](http://www.dyingculture.net/blog/syndication/commentaires/atom/0.3)
    *   [RSS 1.0](http://www.dyingculture.net/blog/syndication/commentaires/rss/1.0) 

Grâce à la magie de [mod_rewrite](http://httpd.apache.org/docs/mod/mod_rewrite.html "Module Apache mod_rewrite"), les anciennes URL fonctionnent toujours et vous redirigent automatiquement vers les nouvelles en glissant au passage un code _[301 - Moved Permanently](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.2 "HTTP 1.1 Status Code Definitions / 301 - Moved Permanently")_ à votre agent web qui pourra ainsi mettre à jour ses tablettes.