---
title: Viva DotClear !
id: 23
categories:
  - Général
date: 2003-10-23 18:26:42
tags:
---

Je ressens périodiquement un besoin fort d'exprimer une idée, un sentiment, une réaction et j'étais frustré de ne pas pouvoir l'exprimer comme je l'aurais souhaité. Puis j'ai découvert les blogs et là je me suis dis que c'était exactement ce que je voulais faire. N'arrivant pas à trouver un outil qui me convienne je métais résigner à créer le mien. Seulement faute de temps libre, j'avais repoussé l'ouverture de mon blog aux calendes grèques. Mais c'était sans compter sur [Olivier Meunier](http://www.neokraft.net/) et son outil [DotClear](http://www.dotclear.net/). Celui-ci est vraiment bien pensé, simple, puissant, propre bref il m'a convaincu de ne pas développer mon propre outil … tout du moins dans l'immédiat.

### Revue

Blindé de [fonctionnalités](http://www.dotclear.net/caracteristiques.php) cet outil augure l'avenir des outils de gestion de blog notamment du fait qu'il génère du code XHTML valide. Bien sûr il est totalement personnalisable au travers d'un [système ingénieux de modèles](http://www.dotclear.net/doc/userGuide/chap5.html). Quant à la [partie administration](http://www.dotclear.net/doc/userGuide/chap4.html), elle est intuitive et puissante.

### Trucs et astuces

La documentation indique un [moyen](http://www.dotclear.net/doc/userGuide/chap8.html#id2609816) de mettre en place les [urls significatives](http://www.useit.com/alertbox/990321.html) pour votre blog. Si pour une raison ou une autre, comme moi, vous ne pouvez ou ne voulez utiliser cette méthode, je vous livre une méthode simple et pratique d'implémenter ces urls significatives.

Cette méthode utilise le célèbre [mod_rewrite](http://httpd.apache.org/docs/mod/mod_rewrite.html) pour [Apache](http://httpd.apache.org/) qui est disponible chez beaucoup d'hébergeurs utilisant ce serveur HTTP.

Dans l'exemple suivant je considère que DotClear est installé dans le répertoire _/outils/dotclear_ et que l'on va accèder au blog par l'adresse _www.site.com/blog_. Il suffit de créer un fichier .htaccess à la racine du site et d'y insérer les lignes suivantes:

@@ RewriteEngine on

RewriteRule ^blog/administration /outils/dotclear/ecrire/ [R,L,NC]

RewriteRule ^blog/trackback/([0-9]+) /outils/dotclear/tb.php?id=$1 [L,NC]

RewriteRule ^blog/rss$ /outils/dotclear/rss.php [L,NC]

RewriteRule ^blog(.*) /outils/dotclear/index.php$1 [L,NC]

@@

Ensuite il faut éditer le fichier _blog_conf.php_ situé dans le répertoire _conf_ et modifier 3 variables comme suit: @@ $cf_blog_url = '/blog/';

$cf_blog_rss = '/blog/rss';

$cf_trackback_uri = '/blog/trackback/%d';

@@

Maintenant passons à l'explication. Alors la réécriture d'url comment ça marche ? La commande <q>RewriteEngine on</q> active la réécriture d'url quant aux commandes <q>RewriteRule xxxxx yyyyy [z,z,z]</q> elle permmettent de transformer une url à l'aide d'une expression régulière compatibles Perl. xxxxx est le masque, yyyyy la destination et z sont les paramètres régissant l'exécution de la commande.

<q>RewriteRule ^blog/administration /outils/dotclear/ecrire/ [R,L,NC]</q> permet d'aller à la partie administration en tapant _www.site.com/blog/administration_. Cette commande n'est qu'une redirection simple comme l'indique le paramètre R. Je n'ai pas jugé utile de pousser plus loin car cette partie n'est utilisée que par l'administrateur.

<q>RewriteRule ^blog/trackback/([0-9]+) /outils/dotclear/tb.php?id=$1 [L,NC] </q> permet de faire des trackbacks de la forme _www.site.com/blog/trackback/x_.

<q>RewriteRule ^blog/rss$ /outils/dotclear/rss.php [L,NC]</q> permet d'obtenir le fil RSS en allant à l'adresse _www.site.com/blog/rss_.

Enfin la dernière commande permet de passer les arguments de l'url au fichier index.php dans tous les autres cas. A noter, il ne s'agit pas d'une redirection cette fois mais d'une substitution d'url directement au niveau du serveur. Le navigateur ne saura pas qu'il na pas obtenu directement la page qu'il demandait.

Avec cette méthode assez peu contraignante, vous disposerez d'un blog fonctionnant avec DotClear et possèdant des urls significatives.