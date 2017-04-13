---
title: PasswordComposer
id: 396
categories:
  - Boîte à outils
date: 2005-05-06 12:38:29
tags:
---

Si comme moi, vous passez beaucoup de temps sur Internet, vous visitez sans doute une multitude de forums et de sites qui requièrent une authentification. Au niveau du choix du mot de passe, il y a deux écoles&nbsp;: la bonne (avoir un mot de passe différent pour chaque site) et la mauvaise (utiliser le même mot de passe pour tous les sites). Bien entendu, la bonne est la plus difficile à mettre en oeuvre mais de loin la plus sûre.

Imaginons qu'un pirate arrive à compromettre l'un des sites sur lequel vous avez un compte. Si cela arrive et que vous utilisez le même mot de passe partout, tous vos accès sont à la merci de ce pirate. Bien sûr, encore faut-il que celui-ci sache retrouver les sites sur lesquels vous avez des comptes mais cela est tout à fait faisable si la personne est motivée ou bien vous connait.

La solution est clairement d'utiliser un mot de différent pour chaque site malgré la lourdeur de cette solution. Heureusement, Nick Wolff a ecrit il y a quelques mois un [bookmarklet](http://angel.net/~nic/passwdlet.html "Password generator bookmarklet") qui facilitait cette tâche mais restait peu pratique à utiliser de manière intensive. Pour remédier à cela, Johannes la Poutré a développé une [extension pour Firefox](http://www.xs4all.nl/~jlpoutre/BoT/Javascript/PasswordComposer/ "Password Composer") qui reprend le même principe mais avec une bien meilleure ergonomie.

Le fonctionnement est le suivant. Une fois l'extension installée, une icone apparait dans les formulaires à côté des champs de type _password_.

![](/images/password_composer.png)

Lorsque vous cliquez sur cette icone, une boîte de dialogue apparait vous demandant de saisir le mot de passe maître. Il s'agit du seul et unique mot de passe que vous aurez à retenir. Password Composer utilisera ce mot de passe et l'hôte de la page sur laquelle vous êtes pour générer un mot de passe, puis renseignera les champs de type _password_ avec celui-ci.

Le mot de passe est donc unique mais vous n'avez absolument pas besoin de le retenir ni même de le connaitre car il sera regénéré à chaque fois. La seule contrainte est de faire attention au sous-domaine car il est pris en compte lors de la génération du mot de passe. Ainsi, le mot de passe pour _www.domaine.com_ sera différent de celui pour _domaine.com_.

L'intérêt de cette extension est qu'elle combine le meilleur des deux méthodes. Elle permet de ne retenir qu'un seul mot de passe tout en ayant des mots de passe différents pour chacun des sites sur lesquels vous avez des comptes.