---
title: Bookmarlet générateur de mots de passe
id: 288
categories:
  - Boîte à outils
date: 2004-09-11 10:25:21
tags:
---

Récemment un camarade s'est aperçu que du fait qu'il utilisait toujours le même mot de passe pour s'inscrire sur les forums, si l'un de ces forums était hacké et son mot de passe découvert, il serait très simple d'usurper son identité sur une quantité d'autres sites. La solution la plus évidente est d'avoir un mot de passe par site mais c'est ingérable en pratique.

C'est là qu'intervient le [Password generator bookmarklet](http://angel.net/~nic/passwdlet.html "Password generator bookmarklet") de [Nic Wolff](http://angel.net/~nic/ "Nic&#039;s tricks"). Son utilisation est simplissime&nbsp;: quand vous êtes sur le formulaire d'inscription d'un site, vous lancez le bookmarklet, celui-ci vous demande d'entrer votre mot de passe maitre. Il génére à la volée un mot de passe spécifique au site et le met dans tous les champs de type mot de passe de la page. Ensuite pour vous logger, il vous suffit de refaire la même manipulation.

Le principe de fonctionnement est génialement simple&nbsp;: le mot de passe maitre et le nom de domaine sont hachés avec l'algorithme MD5\. Ainsi le mot de passe maitre n'est jamais utilisé directement et le mot de passe généré est différent pour chaque site.

Si vous trouvez fastidieux de rentrer votre mot de passe maitre systématiquement, il existe une version du bookmarlet où le mot de passe est directement inclus dedans.

Enfin il faut noter que ce bookmarklet ne fonctionne malheureusement pour le moment qu'avec Mozilla et Safari car il est trop long pour Internet Explorer.