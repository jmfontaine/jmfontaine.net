---
title: Erreur de compilation sous Ubuntu
id: 491
categories:
  - Ubuntu
date: 2005-09-29 12:54:03
tags:
---

Cela fait plusieurs fois que je suis dans l'incapacité de compiler une application avec Ubuntu. La première fois, j'ai mis cela sur le compte de l'application, puis il y a eu d'autres applications qui présentaient le même problème notamment PHP. J'ai doncfini par me dire que cela venait sans doute de mon installation.

Le message d'erreur est le suivant&nbsp;:

`error: C++ preprocessor "/lib/cpp" fails sanity check`

La cause est en fait toute simple, il me manquait le paquet _build-essential_. Un simple _sudo apt-get install build-essential_ et tout est rentré dans l'ordre.