---
title: L'accessibilité selon Microsoft
id: 27
categories:
  - Développement Web
date: 2003-11-05 19:53:16
tags:
---

Ne croyez pas que [je cherche la petite bête chez Microsoft](http://www.dyingculture.net/blog/2003/10/30/7-MicrosoftEtLaLiberteDexpression) mais il faut avouer qu'une fois encore ils se fichent de nous. Récemment j'ai mis à jour mon Windows XP en utilisant le très pratique service Windows Update. Ce faisant j'ai été interpellé par un lien situé en bas de la page qui disait <q>Accessibilité.</q>.

Curieux je clique sur ce lien et arrive sur un [site](http://www.microsoft.com/france/accessibilite/default.asp) nommé _Accessibilité - Rendre la technologie accessible à tous_. Je dois avouer que je suis quelque peu surpris de cette démarche de la part de Microsoft mais je met mes préjugés de côté et j'entame l'exploration de ce site.

Le site traite des différents handicaps et des parades qu'apporte la gamme des produits Microsoft. Il faut avouer que le contenu est fourni et plutôt instructif cependant ma curiosité maladive me poussa à vérifier si Microsoft appliquait ces belles déclarations d'intention.

Je tente donc de valider le code de la page et là [première erreur : il n'y a pas de DocType spécifié](http://validator.w3.org/check?verbose=1&amp;uri=http%3A//www.microsoft.com/france/accessibilite/default.asp). Qu'à cela ne tienne, je tente de revalider en considérant, dans ma grande bonté, qu'il s'agit d'HTML 4.01 Transitionnal et non Strict. Malheureusement ce n'est pas mieux, je découvre une pléthore d'erreurs courantes qui vont des attributs non encadrés de guillemets ou de quotes aux caractères non encodés en passant par des attributs illégaux. Bien évidemment par voie de conséquence le [validateur CSS refuse de fonctionner](http://jigsaw.w3.org/css-validator/validator?profile=css2&amp;warning=2&amp;uri=http%3A//www.microsoft.com/france/accessibilite/default.asp).

Quant à l'accessibilité pure, que ça soit par rapport à la [Section 508](http://www.contentquality.com/mynewtester/cynthia.exe?rptmode=-1&amp;runcr=1&amp;url1=http%3A//www.microsoft.com/france/accessibilite/default.asp) ou à [WAI](http://www.contentquality.com/mynewtester/cynthia.exe?rptmode=2&amp;runcr=1&amp;url1=http%3A//www.microsoft.com/france/accessibilite/default.asp), la page d'accueil du site ne passe pas la plupart des tests et je vous fait grâce des critiques sur la mise en page à base de tableaux.

Alors que conclure ? Je dirais que si Microsoft semble prendre à c&#339;ur les problèmes liés aux handicaps dans sa gamme de produits, ce qui est plus que louable il faut le reconnaitre, il en va bien différemment pour ses sites Internet. Je le savais depuis longtemps pour ces sites généralistes mais j'espérais, naïvement sans doute, que quitte à faire un site sur l'accessibilité, Microsoft ferait un site accessible. Il n'en est rien malheureusement.