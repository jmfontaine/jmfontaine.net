---
title: mod_rewrite et vieilles habitudes
id: 283
categories:
  - Développement Web
date: 2004-09-07 13:45:46
tags:
---

Cela fait deux fois que quelqu'un me contacte pour me dire, en substance, qu'il y a une erreur dans ma gestion des URL de ce blog car l'URL _www.dyingculture.net/blog/_ est invalide. Nous sommes bien d'accord sur le fait qu'elle est invalide mais le problème ne vient pas de ma gestion des URL mais de vos habitudes. Je m'explique.

L'idée qu'une URL doit se terminer soit par une extension de fichier soit par un slash est assez répandue et est une réminiscence de la manière de créer l'arborescence des sites qui prévalait jusqu'à récemment. Celle-ci était en fait basée uniquement sur la structure physique du système de fichier, ce qui impliquait soit de terminer l'URL par un fichier soit par un répertoire et dans ce cas c'était le fichier par défaut qui était affiché. Seulement, les techniques ont évoluées, les [URL significatives](http://www.useit.com/alertbox/990321.html "URL as UI") sont arrivées et c'est précisément ce type d'URL que j'utilise sur mon site.

La principale différence entre ces deux systèmes est que comme leur nom l'indique le but premier des URL significatives est de donner des informations sur le contenu et la structure logique du site contrairement à l'ancien système qui renseignait sur sa structure physique. Le souci est que quelqu'un qui n'a pas conscience de cela pourra se tromper en voulant jouer avec les URL et c'est précisément ce qui est arrivé ici. En effet, je n'ai jamais indique que mon blog se situait à cette adresse, c'est l'interprétation éronnée de mes visiteurs qui les a induit en erreur.

Une parade pourrait consister à retirer un slash de fin inutile avec mod_rewrite mais personnellement je ne le ferais pas sur ce blog car je considère que corriger les erreurs des gens sans leur en faire prendre conscience ne fait qu'empirer les choses car ils continueront à les commettre et les développeurs devront complexifier leur gestion pour en tenir compte. Je pense que chacun est suffisamment intelligent pour comprendre les choses si on prend la peine de lui expliquer clairement les enjeux et que l'obscurantisme que cultivent certains de mes collègues n'apporte rien à personne.

Bien entendu ceci est mon optique pour mon site personnel, pour un site commercial je peux envisager d'utiliser un correctif transparent.