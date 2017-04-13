---
title: Des bits et déboires
id: 479
categories:
  - Divers
date: 2005-09-16 10:01:30
tags:
---

La semaine dernière, nous avons convenu à mon travail d'installer une Debian sur le [serveur Intel 64 bits](http://www1.us.dell.com/content/products/productdetails.aspx/pedge_2850?c=us&amp;cs=04&amp;l=en&amp;s=bsd) d'un client. A priori rien de sorcier mais toutes nos tentatives sont restées infructieuses pendant une semaine (Je vous rassure tout de suite, ce n'était pas ma tâche principale). Nous avions beau télécharger la version [IA-64](http://en.wikipedia.org/wiki/IA-64), vérifier les checksums, graver le CD en activant la vérification de gravure, le système bloquait juste après avoir booté sur le CD.

Devant tant de problème, j'insiste pour connaitre la marque et le modèle (je n'ai pas d'accès physique au serveur, je ne connaissais donc pas ses références) afin de voir s'il n'existerait pas une incompatibilité avec Debian. Cela serait très surprenant mais au point où on en était, toute idée valait le coup d'être creusée. De rapides recherches m'ont confirmé que ce modèle de serveur était bien compatible avec Debian puisque [plusieurs](http://www.netbenefit.fr/products_dedicated_linux.html) [hébergeurs](http://www.hostingasia.com/index.asp?Section=/services&amp;Doc=/services/dedicated.servers) proposaient cette combinaison. Le problème venait donc bien de nous.

En désespoir de cause, nous nous étions résolus à chercher une alternative commerciale certifiée par le constructeur quand une [nouvelle](http://www.pcinpact.com/actu/news/Ou_sont_passes_les_Itanium_chez_Dell_.htm) trouvée sur un site d'information m'a interpellé. On y apprenait que le constructeur abandonnait les processeurs Itanium d'Intel pour ses serveurs et allait se concentrer sur les Xeons.

Dans ma petite tête, Itanium était le type du processeur et Xeon n'était qu'un terme marketing pour dire que c'était le haut de gamme. Comme l'avaient été en leur temps les [PII](http://en.wikipedia.org/wiki/Intel_Xeon#Pentium_II_Xeon) et [PIII Xeon](http://en.wikipedia.org/wiki/Intel_Xeon#Pentium_III_Xeon). Il semble qu'Intel ait modifié ses appellations et donc un Xeon 64 bits n'est pas un Itanium haut de gamme.

Intrigué, j'ai cherché le nom de code de l'architecture de ces Xeons. Celle-ci répond au doux nom d'[EM64T](http://en.wikipedia.org/wiki/EM64T)  qui n'est en fait que l'implémentation par Intel de l'architecture [AMD64](http://en.wikipedia.org/wiki/X86-64) d'AMD. (Egalement connue sous le nom x86-64).

Eh oui, je vous le donne en mille, depuis une semaine nous essayions d'installer une version destinée à une autre architecture que celle du serveur d'où les blocages incompréhensibles. Alors, effectivement l'erreur vient de nous mais sincèrement, avouez que les appellations trompeuses de ces architectures ne nous a pas facilité la tâche.