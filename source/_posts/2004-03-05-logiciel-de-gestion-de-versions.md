---
title: Logiciel de gestion de versions
id: 150
categories:
  - Divers
date: 2004-03-05 10:27:46
tags:
---

Petit à petit, j'augmente mon score au [test de Joël](http://french.joelonsoftware.com/Articles/TheJoelTest.html "Le test de Joël : 12 étapes vers un meilleur code"). Oh bien sûr je parle de mes développements personnels car au travail c'est une toute autre histoire malheureusement.

Mon score est maintenant de 5\. Ca peut paraitre ridicule mais le test est axé sur le fonctionnement d'une société commerciale. Mes développements personnels et associatifs ne me permettent pas de mettre en oeuvre les points 10 et 11\. Mon score est donc rapporté à 5 sur 10, ce qui est encore insuffisant mais je travaille à améliorer les points 2, 3, 6 et 7.

Pour en revenir au sujet de ce billet, le point que j'ai accroché à mon tableau de chasse cette fois-ci est le tout premier : <q lang="fr">Utilisez-vous un système de gestion de code source ?</q>. Pour ceux qui se demanderaient ce qu'est un logiciel de gestion de versions, je les renvoie vers [cette explication](http://fr.wikipedia.org/wiki/Logiciel_de_gestion_de_versions "Logiciel de gestion de versions") de WikiPédia Pour tout vous avouer ce n'est pas la première fois que j'essaie d'obtenir ce point.

#### CVS: Un ténor vieillisant

En effet, il y a un an j'ai essayé d'utiliser [CVS](http://www.cvshome.org/ "Concurrent Versions System - The open standard for version control") en conjonction avec le client Windows [WinCVS](http://www.wincvs.org/ "CVSGui"). L'expérience n'a pas vraiment été concluante. Le client, bien qu'apparement le plus ergonomique pour CVS, ressemblait plus à un programme bidouillé en vitesse pour un besoin ponctuel qu'un logiciel conçu pour une utilisation intensive. A l'époque le panorama des solutions alternatives abouties et gratuites étaient relativement désert.

#### Subversion: Un challenger prometteur

Aujourd'hui ce n'est plus le cas avec [Subversion](http://subversion.tigris.org/ "Subversion") qui arrive à maturité. Le développement de ce logiciel est parti de l'impossibilité de faire évoluer CVS pour répondre à de nouveaux besoins car son architecture est trop ancienne. Les améliorations apportées sont notamment :

*   Versionnement des répertoires
*   Possibilité de déplacer et de renommer un fichier
*   Ajout de méta-données sur les fichiers et les répertoires, ainsi que versionnement de celles-ci
*   Commits atomiques (Le comit est géré par un mécanisme similaire aux transactions pour les bases de données. C'est à dire que les fichiers sont tous _commités_ ou alors aucun ne l'est si un problème intervient.)
*   Possibilité d'utiliser d'Apache comme serveur et de WebDAV comme protocole
*   Meilleure gestion des fichiers binaires
*   La création de tags et de branches ne demandent pas un temps excessif
*   Le temps d'enregistrement de modifications est proportionnel à la taille des changements effectués et non des données concernées 

#### TortoiseSVN: Un client très abouti

Basé sur le principe de fonctionnement de TortoiseCVS, [TortoiseSVN](http://tortoisesvn.tigris.org/ "TortoiseSVN") est sa déclinaison pour Subversion. Au lieu d'être un client classique, TortoiseSVN est en fait une extension Shell, c'est à dire qu'il s'utilise directement en situation dans l'explorateur de fichier au moyen du menu contextuel.

![](/images/TortoiseSVN_Menu_Contextuel.png)

Ce fonctionnement est un peu déroutant au départ mais dès qu'on s'y est fait, il se révèle ultra pratique et intuitif.

Pour afficher l'état d'un fichier ou d'un répertoire, ce client utilise le concept d'Icon Overlay, autrement dit, une petite icone est superposée à celle du fichier ou du répertoire.

![](/images/TortoiseSVN_Icon_Overlay.png)

#### Une documentation déjà fournie

Le problème majeur quand on se met à une nouvelle technologie est l'absence de documentation. Avec Subsersion, ce problème est en partie résolu grâce au livre _Version Control with Subversion_. Celui-ci sera publié courant 2004 par O'Reilly mais est également disponible librement en [téléchargement](http://svnbook.red-bean.com/ "Version Control with Subversion").

Cela fait maintenant quelques semaines que j'utilise Subversion et j'en suis très content. je ne compte d'ailleurs plus m'en séparer.