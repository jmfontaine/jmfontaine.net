---
title: Ne jamais prendre un article pour parole d'évangile
id: 526
categories:
  - PHP
date: 2005-12-01 15:13:46
tags:
---

Comme vous l'avez constaté, j'ai très peu de temps libre en ce moment mais la lecture d'un article publié par IBM sur les [méthodes de déboggage d'un script PHP](http://www-128.ibm.com/developerworks/opensource/library/os-debug/?ca=dgr-lnxw06PHPEclipse) m'a fait bondir.

Le niveau général de l'article est assez faible. Il n'aborde par exemple pas certaines possibilités plus pratiques que la fonction _print_ comme les fonctions _var_dump_, _print_r_ et _debug_backtrace_. Mais voici l'extrait qui m'a particulièrement dérangé&nbsp;:
 > The error_reporting variable has a default value of E_ALL. This displays everything from bad coding practices to harmless notices to errors. E_ALL is a little too picky for my liking in the development process because it clutters the browser output by displaying notices on the screen for small things like uninitialized variables. I prefer to see the errors, any bad coding practices, but not the harmless notices. Therefore, replace the default value of error_reporting as follows: error_reporting = E_ALL &amp; ~E_NOTICE 

L'auteur déclare qu'il préfère n'avoir que les _mauvaises pratiques de codage_ et non pas toutes les _erreurs sans gravité comme celles des variables non initialisées_. C'est assez incroyable qu'en prêchant pour les bonnes pratiques de développement, il puisse écarter l'une des principales&nbsp;: toutes les variables doivent être initialisées. Si le réglage par défaut du paramètre _error_reporting_ est à _E_ALL_, ce n'est pas pour embêter le monde mais pour inciter à coder proprement.

Je trouve vraiment dommage qu'un article se proposant de donner des conseils afin de mieux débogger ses scripts en prodigue un si mauvais et parfaitement contre productif. Voilà encore une preuve que ce n'est pas parce qu'une chose est écrite qu'elle est vraie.