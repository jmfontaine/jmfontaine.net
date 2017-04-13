---
title: Nombre d'arguments variable en Javascript
id: 593
categories:
  - Développement Web
date: 2006-07-07 14:09:54
tags:
---

Il est parfois utile de pouvoir passer un nombre variable d'arguments à une fonction. Par exemple lorsqu'on veux transmettre une liste sans passer par un tableau.

Avec PHP cela se fait très simplement à l'aide de la fonction [func_get_args()](http://fr2.php.net/manual/fr/function.func-get-args.php)&nbsp;:
 <pre>&lt;?php function test() { 	$arguments = func_get_args(); 	for ($i = 0, $taille = count($arguments); $i &lt; $taille; $i++) { 		echo $arguments[$i]; 	} } test('arg1', 'arg2', 'arg3'); ?&gt;</pre> 

Aujourd'hui, j'ai eu besoin de le faire en Javascript. Après quelques recherches, j'ai trouvé que cela se fait ainsi&nbsp;:
 <pre>&lt;script&gt; function test() { 	for(var i = 0; i &lt; arguments.length; i++) { 		alert(arguments[i]); 	} } test('arg1', 'arg2', 'arg3'); &lt;/script&gt;</pre>