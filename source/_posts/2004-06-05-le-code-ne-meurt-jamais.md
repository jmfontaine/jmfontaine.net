---
title: Le code ne meurt jamais
id: 202
categories:
  - PHP
date: 2004-06-05 20:02:03
tags:
---

Pour mes besoins personnels j'avais écris il y a 2 ans une classe PHP qui permettait de gérer les erreurs. Celle-ci avait une particularité par rapport à d'autres classes du même genre. En cas d'erreur fatale elle pouvait rediriger le visiteur vers une autre page plutôt que d'afficher une page tronquée. Cela se faisait en fait assez facilement en exécutant une expression rationelle sur le tampon de sortie de la page mais j'étais plutôt fier de mon idée. Finalement j'ai assez peu utilisé cette classe mais je l'avais diffusé à un jeune Allemand qui cherchait une classe de ce type.

Nous nous sommes perdus de vue et pour tout vous avouer j'avais oublié cette classe jusqu'à cette semaine où j'ai reçu ce mail d'un autre Allemand&nbsp;:
 > Hallo Jean-Marc!
> 
>  I'm sorry.I am not able to talk in french,nor able to talk in english quite well.
> 
>  But I am interested in a piece of code i found.I found the following comment in it: <pre>/*  *  This is an error manager.  *  All classes inherits from it. It is dedicated to manage errors  *  only, thus its child classes will not have to take care about  *  the way errors are handled.  *  *  # History : #  *  *  + 1.0 (01 march 2002) : First version  *  + 1.1 (01 march 2002) : New version rewritten from scratches  *    - Added format string for errors logging  *    - Added log to file function  *  *  @author Jean-Marc Fontaine &lt;webmaster@dyingculture.net&gt;  *  @version 1.1  */</pre> > My question is,whether this is a piece of a whole CMS you wrote last year? I found a quite complex CMS which should be written by an 18 years-old boy.Maybe I am wrong,but it seems like this is a stolen code.
> 
>  I am just interested and awaiting your answer.
> 
>  Thanks a lot, Christian (From Germany near Berlin) 

Tout d'abord, je tiens à précisé qu'il avait le droit d'utiliser mon code, je lui avais donné dans ce but. Mais ce qui m'amuse réellement c'est qu'il a utilisé mon code, en respectant mes droits d'auteur, dans un de ses projets et ce projet a ensuite voyagé pour finalement revenir à mes oreilles.