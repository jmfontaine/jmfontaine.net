---
title: Corriger un blocage d'apt-get
id: 710
categories:
  - Ubuntu
date: 2007-04-29 22:10:33
tags:
---

Ce billet est plus un pense-bête qu'autre chose mais j'ai pensé qu'il pourrait en aider certains d'entre vous.

Sous Linux, il arrive parfois que suite à une mauvaise manipulation, la commande apt-get soit verrouillée. Ce problème qui semble inextricable au premier abord peut en fait être résolu très simplement à l'aide de la commande suivante&nbsp;:
 <pre>sudo dpkg --configure -a</pre>