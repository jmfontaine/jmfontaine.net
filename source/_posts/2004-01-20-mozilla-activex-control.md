---
title: Mozilla ActiveX Control
id: 109
categories:
  - Delphi
date: 2004-01-20 17:37:29
tags:
---

Peut être avez vous déjà utilisé le composant ActiveX d'Internet Explorer dans une application. C'est très pratique mais quand a conscience des limitations et des bugs de ce navigateur, on aimerait avoir une alternative. Si celle-ci était respectueuse des standards et qui plus est Open Source ça serait le bonheur non ?

Eh bien tout cela existe sous la forme du [Mozilla ActiveX Control](http://www.iol.ie/%7Elocka/mozilla/mozilla.htm "Site du Mozilla ActiveX Control"). Ce n'est pas vraiment nouveau mais je trouve que son existence est malheureusement beaucoup trop confidentielle.

Ce contrôle ActiveX inclut donc le moteur de rendu Gecko et là où les développeurs ont été très malins c'est que partant du constat que l'ActiveX d'Internet Explorer était largement diffusé, il ne servait à rien de tenter d'imposer une autre API. Ils ont donc utilisé une API strictement identique à celle de l'ActiveX d'Internet Explorer. Ainsi les problèmes de passage de l'un à l'autre sont quasiment inexistants.

Simple à installer grâce à son installeur et de taille nettement inférieure au contrôle ActiveX d'Internet Explorer, 4 Mo contre 10 Mo, ce contrôle pourrait se répandre rapidement.

Comme tout ActiveX, il est utiliseable dans de nombreux environnements dont [Delphi](http://delphi.mozdev.org/articles/taming_the_lizard_with_delphi.html "Taming the Lizard with Delphi"), Visual Basic, Visual C++ et même [Internet Explorer](http://www.iol.ie/%7Elocka/mozilla/mozctltest1.htm "Mozilla ActiveX control test for IE!") !