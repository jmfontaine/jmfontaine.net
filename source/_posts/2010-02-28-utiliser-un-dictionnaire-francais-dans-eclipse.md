---
title: Utiliser un dictionnaire français dans Eclipse
id: 860
categories:
  - Développement Web
date: 2010-02-28 13:35:18
tags:
---

L'éditeur de code Eclipse possède une fonctionnalité de correction orthographique. Malheureusement, par défaut seuls les dictionnaires anglais de Grande Bretagne et des Etats-Unis sont proposés.

Il est cependant assez facile de mettre en place un dictionnaire français. Pour cela nous allons utiliser le dictionnaire Aspell français&nbsp;:
 <pre>sudo aptitude install aspell aspell-fr</pre> 

Puis nous allons extraire les données au format destiné à Eclipse&nbsp;:
 <pre>aspell dump master nl | cut -d / -f 1 &gt; fr.txt</pre> 

Ensuite, il n'y a plus qu'à indiquer ce dictionnaire à Eclipse dans les options de configuration pour que le tour soit joué.

![](/images/eclipse_dictionnaire.png)