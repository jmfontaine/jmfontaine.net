---
title: Limites des URL significatives
id: 782
categories:
  - Développement Web
tags:
---

Les bonnes pratiques de développement web préconisent d'utiliser des URL significatives. Cette technique permet de passer des informations via une URL non pas dans la [query string mais dans le chemin](http://en.wikipedia.org/wiki/URI_scheme).

Ainsi, l'URL&nbsp;:
 <pre>http://www.example.com/produits.php?id=123</pre> 

pourra être avantageusement remplacer par&nbsp;:
 <pre>http://www.example.com/produits/123</pre> 

Cette technique a cependant une limite. Dans une URL significative, on passe généralement un identifiant sous la forme d'un entier ou bien une chaîne de caractères très simple. Le problème arrive lorsque l'on souhaite passer une chaîne de caractère un peu plus compliquée contenant par exemple une date.
 <pre>http://www.example.com/agenda.php?date=04/05/08</pre> 

L'équivalent sous forme d'URL significative pourrait être&nbsp;:
 <pre>http://www.example.com/agenda/date/01%2F02%2F03</pre> 

_Note&nbsp;: "01%2F02%2F03" correspond à la date "01/02/03" encodée pour être passé dans une URL._

Par défaut, Apache décode les slashes contenus dans le chemin d'une URL. Le comportement n'est pas dénué de sens mais en l'occurrence il est gênant car il empêche Apache de comprendre correctement notre demande et indique qu'il ne trouve pas l'URL spécifiée.

Heureusement, il existe depuis la version 2.0.46 d'Apache une directive de configuration nommée "AllowEncodedSlashes". Comme son nom l'indique, elle permet d'indiquer à Apache de ne pas décoder les slashes avant l'évaluation d'une URL.

http://httpd.apache.org/docs/2.2/mod/core.html#allowencodedslashes