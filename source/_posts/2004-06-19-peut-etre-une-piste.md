---
title: Peut être une piste …
id: 217
categories:
  - Développement Web
date: 2004-06-19 12:28:08
tags:
---

En lisant le billet de Daniel Glazman intitulé [Future of HTML and the Web, part 1](http://webperso.easyconnect.fr/danielglazman/weblog/dotclear/index.php?2004/06/08/362-future-of-html-and-the-web "Future of HTML and the Web, part 1") je suis tombé sur la phrase suivante&nbsp;: <q>no browser, since a late first version of HotJava, shows a warning when the document is invalid.</q>. En lisant cette phrase j'ai immédiatement repensé à un problème qui me turlupine depuis des lustres&nbsp;: comment arriver à sensibiliser l'utilisateur lambda au fait qu'Internet Explorer est un [navigateur obsolète et peu fonctionnel](http://emmanuel.clement.free.fr/navigateurs/comparatif.htm "Comparatif Internet Explorer / Mozilla Firefox") qui complique considérablement la tâche des développeurs Web.

En effet si cela semble évident à toute personne qui a déjà un tant soit peu sérieusement développé des sites Internet, monsieur tout le monde n'en a même pas conscience. Comment dès lors le persuader de faire le bon choix alors même qu'il ignore le problème&nbsp;? De plus les quelques rares personnes qui ont conscience qu'il peut y avoir des navigateurs alternatifs prennent le problème à l'envers en érigeant la page HTML en référence. Dans cette optique si un navigateur n'affiche pas la page correctement alors c'est lui qui est dans l'erreur alors que ceci n'est valable que dans le cas où une page est valide, ce qui reste encore marginal malheureusement.

Bien entendu il est n'est pas envisageable de former tout le monde aux problématiques du développement Web. Heureusement que l'utilisation d'un outil ne nécessite pas d'être expert dans le domaine. Il faudrait donc trouver un moyen simple de sensibiliser le grand public à tout cela. Un moyen serait à mon sens de simplement faire connaitre la notion de validité d'une page qui est un concept assez facile à appréhender pour des néophytes. Ainsi la responsabilité de l'affichage des pages reviendrait à un équilibre plus naturel entre le développeur de la page en question et le navigateur.

C'est là que la phrase de Daniel prend tout son intérêt. Pourquoi ne pas intégrer dans les navigateurs un mécanisme de validation automatique des pages affichées&nbsp;? L'invalidité d'une page pourrait être matérialisée par l'affichage d'une icône dans la barre d'état du navigateur. On pourrait également imaginer qu'en cliquant sur celle-ci on pourrait accèder à un écran listant les erreurs.