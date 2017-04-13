---
title: Zend Studio et Ubuntu Karmic
id: 849
categories:
  - PHP
date: 2009-11-01 16:37:57
tags:
---

Décidément la nouvelle mouture d'Ubuntu pose des problèmes aux produits Zend. Après [Zend Server qui refuse de s'installer](http://www.durcommefaire.net/2009/10/31/834-installation-de-zend-server-sur-ubuntu-karmic), voici que certains boutons sont inopérants dans la dernière version de Zend Studio.

Il existe là encore un [contournement](http://kb.zend.com/index.php?View=entry&amp;EntryID=435) en attendant la correction du bug de GTK à l'origine du problème. Pour cela, il suffit de créer un script contenant les lignes suivantes et de l'utiliser pour lancer Zend Studio&nbsp;:
 <pre>#!/bin/bash export GDK_NATIVE_WINDOWS=1 &lt;CHEMIN&gt;/ZendStudio</pre> 

Remplacez &lt;CHEMIN&gt; par le chemin vers votre exécutable Zend Studio et le tour est joué.