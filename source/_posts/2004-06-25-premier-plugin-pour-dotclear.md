---
title: Premier plugin pour DotClear
id: 228
categories:
  - PHP
date: 2004-06-25 22:34:03
tags:
---

Chose [promise](/blog/2004/06/14/192-blogmark "Blogmark"), chose due. [Voici](/dotclear/plugins/plugin-dcBlogmark-1.0.pkg.gz) donc mon premier plugin pour [DotClear](http://www.dotclear.net/ "DotClear"). Il s'agit d'un plugin permettant de gérer un blogmark. Pour ceux qui l'ignoreraient, un blogmark est une sorte de liste de favoris sur un blog. Il s'agit généralement de billets récents d'autres blogs que l'ont a particulièrement appréciés mais sur lesquel on n'a pas bloggé. C'est un moyen de leur donner tout de même de la visibilité.

Pour installer ce plugin, il suffit de passer le script <acronym title="Structured Query Language">SQL</acronym> se trouvant dans le sous-répertoire _sql_ et de configurer les options du fichier _conf.ini_. Concernant la mise en oeuvre, il suffit de mettre un code de ce style dans votre template&nbsp;:
 <pre>while(!dcBlogmark::eof()){    echo '&lt;li&gt;&lt;a href="' . dcBlogmark::get('url') . '" title="'            . dcBlogmark::get('title') . '"&gt;'            . dcBlogmark::get('title', 20) . '&lt;/a&gt;&lt;/li&gt;';    dcBlogmark::moveNext(); }</pre> 

Quant à l'administration, elle est assez intuitive. Je vous laisse la découvrir par vous même.