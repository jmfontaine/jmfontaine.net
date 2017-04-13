---
title: Revue de presse PHP du 02/11/09
id: 850
categories:
  - PHP
date: 2009-11-02 00:06:26
tags:
---

Après une longue pause estivale (et un peu plus), voici le retour de la revue de presse hebdomadaire.

Le but est de vous faire découvrir ce qui se dit d'intéressant sur PHP. Il s’agit d’articles en français ou en anglais que j’aimerais partager avec vous. Et parce qu'il n'y a pas que PHP au monde, vous trouverez également un article important mais dans un domaine libre et n'ayant pas forcément de rapport avec PHP.

*   [How to Create Totally Secure Cookies](http://carsonified.com/blog/dev/how-to-create-totally-secure-cookies/)
Sécuriser les cookies, et donc souvent par rebond les sessions, est essentiel mais encore faut-il bien comprendre les mécanismes mis en jeu.
Le site Carsonified explique comment fonctionnent les cookies puis propose quelques moyens de sécuriser leur usage&nbsp;:
        *   Limiter l'accès au cookie au strict minimum&nbsp;;
    *   Bien choisir les informations à y stocker&nbsp;;
    *   Protéger le cookie des XSS.
*   Symfony expliqué à ma maman
Cette série de billets vise à expliquer à un néophyte ce qu'est le framework Symfony les rappels généraux s'appliquent à la plupart des frameworks PHP.
        *   [Symfony expliqué à ma maman, 1ère partie&nbsp;: qu’est-ce qu’un framework ?](http://www.do-as-i-say.com/notes/2009/08/symfony-explique-a-ma-maman-1/)
    *   [Symfony expliqué à ma maman, 2ème partie&nbsp;: les design patterns](http://www.do-as-i-say.com/notes/2009/09/design-patterns-symfony-explique-a-ma-maman-2/ "fr")
    *   [Symfony expliqué à ma maman, 3ème partie&nbsp;: le découplage](http://www.do-as-i-say.com/notes/2009/09/decouplage-symfony-explique-a-ma-maman-3/)
*   [Why will Symfony 2.0 finally use PHP 5.3?](http://www.symfony-project.org/blog/2009/10/27/why-will-symfony-2-0-finally-use-php-5-3)
Fabien Potencier, le créateur du framework Symfony, explique pourquoi après mûre réflexion la version 2.0 de ce framework nécessitera PHP 5.3.
Ce choix est en phase avec ceux de Zend Framework et CakePHP et les éléments de sa réflexion font probablement écho aux interrogations de nombreux architectes PHP.
*   [Avoiding Notices: When to Use isset() and empty()](http://www.brandonsavage.net/avoiding-notices-when-to-use-isset-and-empty/)
Si l'ont n'y prend pas garde, l'évaluation de conditions provoque parfois des notices. Pour éviter cela, il est recommandé d'utiliser les fonctions isset() ou empty(). Bien que souvent équivalentes, leur usage varie sensiblement et il est bon de bien comprendre leur fonctionnement pour les utiliser à bon escient.
*   [Five Tips To Make Good Object-Oriented Code Better](http://www.brandonsavage.net/five-tips-to-make-good-object-oriented-code-better/)
Si utiliser la programmation orientée objet est une bonne chose, bien l'utiliser est encore mieux. Brandon Savage nous propose cinq moyens d'améliorer son code avec au programme&nbsp;:
        *   Utiliser beaucoup d'objets&nbsp;;
    *   Utiliser des interfaces pour rendre les API prévisibles&nbsp;;
    *   Utiliser l'injection de dépendance&nbsp;;
    *   Préférer la composition à l'héritage&nbsp;;
    *   Créer des classes faiblement couplées. 

Et voici l'article bonus de la semaine :

[Fake Rocks, Salami Commanders, and Just Enough to Start](http://www.43folders.com/2009/08/04/enough)

On a probablement tous vécu un jour le syndrome de la feuille blanche. Cette peur de se lancer qui nous pousse souvent à choisir la facilité et à remettre au lendemain.

Lutter contre la procrastination, puisque c'est le nom de ce comportement, n'est pas facile et il n'y a pas de remède miracle. Cependant, un peu de méthode et beaucoup de courage peuvent en venir à bout.