---
title: Mise à jour de Dapper dangereuse
id: 613
categories:
  - Ubuntu
date: 2006-08-22 12:33:49
tags:
---

Ce matin j'ai mis à jour ma distribution [Kubuntu](http://http://www.kubuntu.org/) Dapper comme l'alerte le proposait. Malheureusement le paquer xserver-xorg-core pose un problème.

Chez moi, l'écran n'est plus reconnu ce qui est particulièrement gênant sur un portable. Je suis donc allé sur les [forums d'aide d'Ubuntu-Fr](http://forum.ubuntu-fr.org/) afin d'y trouver de l'aide et il semble que le problème soit d'envergure car un bandeau indique en grand sur la première page du forum que [cette mise à jour est dangereuse](http://forum.ubuntu-fr.org/viewtopic.php?id=56984) et qu'il ne faut donc pas l'effectuer.

![](/images/prob_maj_dapper.jpg)

Si cela est malheureusement déjà fait, comme dans mon cas, il faut effectuer les manipulations suivantes&nbsp;:

*   Au démarrage choisissez la version _Recovery mode_ de votre kernel
*   A la première invite, tapez simplement _exit_ puis appuyez sur la touche Entrée
*   A la seconde invite, connecter vous
*   Enfin, tapez la commande suivante qui permet de revenir à la version antérieure du paquet problématique&nbsp;: <pre>sudo apt-get install xserver-xorg-core=1:1.0.2-0ubuntu10</pre> 

Pour revenir sur cet incident à un niveau moins technique, j'ai vu un certain nombre de personnes s'indigner qu'un tel problème arrive et jurer qu'elles allaient changer de distribution pour la peine. Je trouve ces réactions très exagérées car en un an d'utilisation quotidienne tant personnelle que professionnelle, je n'ai jamais connu un problème aussi sérieux. Je ne peux pas en dire autant d'autres distributions que j'ai utilisé par le passé comme [Fedora](http://fedora.redhat.com/) par exemple.

De plus, la réactivité de la communauté a été plutôt bonne car je n'ai même pas eu à chercher la solution, la communication de crise ayant parfaitement fonctionné. Cette erreur qui reste bien entendu regrettable et à ne pas renouveller, n'entâche cependant en rien mon attachement à Kubuntu.

**Mise à jour :** Le paquet incriminé a été corrigé. Vous pouvez mettre à jour votre système avec la commande suivante&nbsp;:
 <pre>sudo apt-get update &amp;&amp; sudo apt-get upgrade</pre>