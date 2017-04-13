---
title: Migrer un dépôt Subversion vers Git
id: 964
categories:
  - Divers
tags:
---

J'ai récemment eu besoin de migrer un dépôt Subversion vers Git.

### Créer un miroir local du dépôt Subversion

Cette étape est facultative mais permet de limiter l'impact d'une éventuelle indisponibilité réseau. Cela permet également de refaire rapidement une migration, en cas de mise à jour du dépôt Subversion pendant la préparation de la migration par exemple.

Tout d'abord, il faut créer un dépôt Subversion local :
<pre># svnadmin create &lt;CHEMIN&gt;</pre>
Ensuite, on créé un hook pour permettre la modification des propriétés Subversion :
<pre>echo -e "#!/bin/sh \n exit 0" &gt; &lt;CHEMIN&gt;/hooks/pre-revprop-change
chmod +x &lt;CHEMIN&gt;/hooks/pre-revprop-change</pre>