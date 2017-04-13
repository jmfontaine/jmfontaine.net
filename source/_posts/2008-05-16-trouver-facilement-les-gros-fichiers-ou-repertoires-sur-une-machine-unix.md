---
title: Trouver facilement les gros fichiers ou répertoires sur une machine Unix
id: 774
categories:
  - Boîte à outils
date: 2008-05-16 19:17:01
tags:
---

Une petite astuce rapide en attendant que ce blog reprenne un rythme plus constant.

Il arrive malheureusement de découvrir qu'un disque est saturé mais comment trouver rapidement les fichiers ou répertoires qui prennent inutilement de la place&nbsp;?

La commande suivante permet de lister les fichiers situés dans le répertoire /home/jmf et faisant plus 10 Mo.
 <pre>find /home/jmf -size +10M | xargs ls -lh</pre> 

Elle est bien entendu à adapter à votre besoin.

**Mise à jour :** Une meilleure manière de faire a été indiqué dans [un commentaire](/2008/05/16/760-trouver-facilement-les-gros-fichiers-ou-repertoires-sur-une-machine-unix#c24317)&nbsp;:
 <pre>find /home/jmf -size +10M -exec ls -lh "{}" \;</pre> 

Merci à son auteur&nbsp;!