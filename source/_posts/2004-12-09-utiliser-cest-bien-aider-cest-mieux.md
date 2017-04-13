---
title: 'Utiliser c''est bien, aider c''est mieux'
id: 326
categories:
  - Général
date: 2004-12-09 22:19:18
tags:
---

PHP est très utilisé que ça soit en entreprise ou par les particuliers, comme le montre une récente [étude de Nexen](http://www.nexen.net/interview/index.php?id=44 "Statistiques de diffusion de PHP dans le monde au mois de novembre 2004"). Cependant, il ne faut pas perdre de vue qu'il s'agit là d'un projet Libre et donc que les contributions sous quelque forme que ce soit sont les bienvenues. La plupart des utilisateurs ne peuvent fournir de patchs pour le moteur de PHP car ils n'ont pas les connaissances techniques nécessaire ou pas le temps de se plonger dans les entrailles de la bête.

Il y a cependant quelque chose que beaucoup peuvent faire, qui est très utile pour améliorer la qualité de PHP et qui ne prend que quelques minutes: compiler les [Release Candidate des nouvelles versions de PHP](http://qa.php.net/ "PHP-QAT: Quality Assurance Team") et lancer les tests qui les accompagnent.

Tout cela se fait très simplement. Voici la démarche complète pour tester PHP 4.3.10 RC2 sur Linux&nbsp;:

*   On récupère l'archive avec Lynx&nbsp;: `# lynx http://downloads.php.net/ilia/php-4.3.10RC2.tar.bz2`
*   On la décompresse: `# tar -xvjf php-4.3.10RC2.tar.bz2`
*   On va dans le répertoire créé&nbsp;: `# cd php-4.3.10RC2`
*   On configure l'installation&nbsp;: `# ./configure`
*   On compile PHP&nbsp;: `# make`
*   On lance les tests&nbsp;: `# make test` 

Une fois cela fait, le script vous proposera d'envoyer un rapport aux serveurs PHP. Acceptez, c'est ce qui permet de remonter les éventuels problèmes de manière structurée et donc facilement exploitable par l'équipe de développement.

Pour nettoyer votre système, il suffit de supprimer le répertoire _php-4.3.10RC2_ car rien n'a été installé sur votre système.

*   On revient dans le répertoire d'origine&nbsp;: `# cd ..`
*   On supprime le répertoire créé&nbsp;: `# rm -Rf  php-4.3.10RC2`