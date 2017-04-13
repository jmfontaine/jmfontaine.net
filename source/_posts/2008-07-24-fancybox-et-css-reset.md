---
title: FancyBox et CSS Reset
id: 785
categories:
  - Développement Web
date: 2008-07-24 19:17:09
tags:
---

Depuis quelques mois, on voit fleurir une multitude de clones de [Lightbox](http://www.huddletogether.com/projects/lightbox/). Personnellement, mon choix s'est porté sur [FancyBox](http://fancy.klade.lv/) qui fonctionne bien et possède un code nettement plus propre que la moyenne.

J'ai cependant rencontré un souci en l'utilisant en conjonction avec le [CSS Reset d'Eric Meyer](http://meyerweb.com/eric/tools/css/reset/)&nbsp;: les légendes étaient trop hautes.

![](/images/fancybox_css_reset.jpg)

Le problème vient de l'alignement vertical appliqué sur la balise "td" par le CSS Reset. Pour annuler son effet, il suffit d'ajouter les lignes suivantes dans le fichier fancy.css&nbsp;:
 <pre>#fancy_title td { 	vertical-align: middle; }</pre>