---
title: Afficher les répertoires et fichiers cachés sous Mac OS X
id: 319
categories:
  - Divers
date: 2004-11-25 09:54:57
tags:
---

Il y a quelques temps, je vous avais fait part de mon [désarroi](/blog/2004/10/19/294-offre-logiciel-sur-mac-os-x "Mac OS X me laisse dubitatif") face à certains comportement de Mac OS X. Ce billet m'a valu [une pléthore de commentaires](/blog/2004/10/19/294-offre-logiciel-sur-mac-os-x#commentaires "Commentaires pour le billet &quot;Mac OS X me laisse dubitatif&quot;") pas forcément toujours constructifs mais cela ne m'empêchera pas de continuer à dire ce que je pense. En mal comme en bien cela va de soit.

Parmi les choses qui me dérangeaient, se trouvait l'impossibilité d'accèder aux fichiers cachés dans le Finder. Pour un utilisateur lambda c'est un avantage car ça simplifie la navigation dans l'arborescence. Cependant, pour un utilisateur avancé c'est un vrai souci, notamment quand on utilise des fichiers .htaccess dans un site Internet. Je sais, j'en reviens toujours à l'idée que "le Mac est très pratique pour un utilisateur lambda mais bridant pour un utilisateur avancé". Seulement plus mon expérience du Mac augmente et plus cela se confirme. Encore une fois, cela ne retire en rien aux qualités de ce système d'exploitation. Je ne pense simplement pas faire partie des utilisateurs ciblés par la firme à la pomme.

Bref, ce souci est à présent résolu grâce à cette simple ligne de commande qu'il faut exécuter dans un terminal&nbsp;:

`defaults write com.apple.Finder AppleShowAllFiles true`

Il suffit ensuite de redémarrer le Finder pour voir apparaître les répertoires et les fichiers cachés. C'est simple et pratique aussi je me demande bien pourquoi cette option n'est pas activable de manière plus conviviale.