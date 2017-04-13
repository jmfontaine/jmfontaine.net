---
title: XMLMind XML Editor
id: 200
categories:
  - Boîte à outils
date: 2004-06-07 20:19:37
tags:
---

Une fois n'est pas coutume, je ne vais pas vous parler d'un Logiciel Libre aujourd'hui. Ce programme est cependant disponible gratuitement pour la version Standard tandis que la version Professionnal qui inclut quelques fonctionnalités supplémentaires est payante.

Il s'agit d'[XMLMind XML Editor](http://www.xmlmind.com/xmleditor/ "XMLMind XML Editor"). Sous ce nom peu racoleur se cache un éditeur XML qui fait merveille pour éditer des fichiers dépendant d'une DTD et plus particulièrement les fichiers DocBook.

![](/images/XMLMind_XML_Editor.png)

#### Petit rappel

Pour ceux qui ne connaitraient pas DocBook, il s'agit d'une DTD [développée à l'origine](http://www.oasis-open.org/committees/docbook/intro.shtml#d0e41 "A Short DocBook History") par HaL Computer Systems et par l'éditeur de livres O'Reilly &amp; Associates vers 1991\. Le consortium Oasis en assure à présent le développement. Basée originellement sur le SGML, DocBook est à présent développée conjointement pour le SGML et pour l'XML. Ceci est sensé être une phase de transisition avant que la version XML ne prenne définitivement le pas.

Ce qui est vraiment bien avec DocBook c'est que c'est particulièrement adapté à la rédaction de documentation technique et que du fait que ça soit fondamentalement de l'XML, la pérénité des données est parfaitement assurée.

En revanche ce qui est moins bien que DocBook ne reste jamais qu'une DTD. Il faut donc trouver les outils permettant de l'exploiter. (Editeur, feuilles XSLT, processeur XSLT etc.) Et là il faut bien avouer qu'il n'existe pas vraiment à ma connaissance de logiciel intégré permettant de gérer la chaine de bout en bout de manière conviviale. Mais revenons à nos moutons, c'est à dire à XMLMind XML Editor.

#### Tour d'horizon

Cet éditeur est particulièrement adapté à la rédaction de documents DocBook. Développée par des Français, cette application Java est utilisable sur Windows, Linux et Mac OS X.

L'interface est plutôt conviviale, pour du Java bien entendu mais ça c'est une autre histoire. On dispose au centre d'une vue simulant un traitement de texte. Bien évidemment cette vue a une valeur purement informative car de par la nature même de DocBook, on ne peut pas savoir à ce stade à quoi va ressembler la mise en page du document final. L'important est le fond et non la forme pour DocBook. C'est assez déroutant pour qui a l'habitude de Word mais on en commprend vite tout l'intérêt. Il est également possible d'afficher la structure XML du fichier sous forme d'arbre.

#### Quelques fonctionnalités particulièrement interessantes

Une des choses que je trouve particulèrement interessante, même si cela existe dans d'autres éditeurs, c'est que quand on insère une balise à un endroit, on ne se voit proposer que celles qui sont valides dans le contexte. Cela est bien entendu réalisé grâce à la DTD.

XMLMind XML Editor permet de vérifier l'orthographe de ce qui est tapé. On peut également à tout moment s'assurer que le document que l'ont édite est toujours valide. Heureusement l'editeur nous encadre beaucoup et il est donc _difficile_ de rendre un document invalide. Généralement cela n'arrive que quand on ne tient pas compte des avertissements du logiciel lors de la suppression ou de la conversion d'un élément.

Comme je vous l'ai dit, générer un document final à partir du document DocBook n'est pas chose aisée car il faut souvent se frotter à des outils pas forcéments conviviaux et surtout qu'il faut assembler par ses propres moyens afin d'obtenir une chaine de rendu fonctionnelle. Cet éditeur permet d'effectuer directement ce rendu dans différents formats (HTML pour la version standard, RTF, PostScript et PDF pour la version professionnelle). Il est bien entendu possible d'utiliser des feuilles XSLT personnalisées.

Enfin à tout cela s'ajoute une documentation abondante et bien faite qui permet de découvrir les fonctionnalités avancées et les possibilités de configuration impressionantes d'XMLMind XML Editor.