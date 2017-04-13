---
title: Revelation
id: 439
categories:
  - Ubuntu
date: 2005-07-21 13:12:44
tags:
---

Je parie que vous avez des dizaines de paires de nom d'utilisateur / mot de passe à retenir que bien entendu vous oubliez régulièrement. Il y a les mauvaises solutions (post-it, fichier texte) et les bonnes comme utiliser un logiciel de gestion de mots de passe. Le principe est très simple, le logiciel permet de stocker de manière sécurisée et hiérarchisée les informations concernant un compte&nbsp;: nom d'utilisateur, mot de passe mais aussi informations connexes (URL, commentaires etc). Il vous suffit de retenir un seul mot de passe, celui qui verrouille le fichier regroupant vos informations.

Sous Windows, il existe le très bon [KeePass](http://keepass.sourceforge.net/) mais comme [je suis passé sur Ubuntu](/blog/2005/07/13/417-ubuntu-un-premier-point), cela ne me concerne plus. Je me suis donc mis en quête d'un remplacant et j'ai trouvé [Revelation](http://oss.codepoet.no/revelation/) qui fonctionne sous Gnome.

![](/images/revelation.jpg)

Parmi ses caractéristiques on peut citer&nbsp;:

*   Stockage sécurisé dans un fichier XML encrypté avec l'agorithme AES
*   Structure en arbre afin de gérer facilement un grand nombre de comptes
*   Possibilité d'exporter et d'importer depuis différents logiciels et formats (Figaro's Password Manager, GNOME Password Manager (gpass), .netrc, fichiers XML, fichiers texte)
*   Possibilité d'accéder à des fichiers distants grâce à gnome-vfs
*   Différents types de comptes pour couvrir les besoins les plus courants&nbsp;: carte de crédit, clé de cryptage, base de données, digicode, email, ftp, téléphone, shell, site web et un format générique
*   Intégration étroite à Gnome
*   Simple d'utilisation&nbsp;: Drag/drop, undo/redo illimités, bonne utilisation du presse-papier, interface utilisateur certifiée [HIG](http://developer.gnome.org/projects/gup/hig/) etc.
*   Recherche de compte
*   Générateur de mot de passe intégré
*   Testeur de force des mots de passe