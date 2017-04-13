---
title: Smarty et les constantes de classe
id: 607
categories:
  - PHP
date: 2006-08-03 11:43:38
tags:
---

Le nouveau modèlke objet de PHP 5 permet l'utilisation de [constantes de classe](http://www.php.net/manual/en/language.oop5.constants.php). Malheureusement le moteur de template [Smarty](http://smarty.php.net/) pour assurer la compatibilité avec PHP 4 ne les reconnait pas.

Si vous tentez le test suivant `{if $vente-&gt;type == VENTE::INTERNE}`, vous obtiendrez le message d'erreur suivant&nbsp;:
 > syntax error: unidentified token '::INTERNE' (Smarty_Compiler.class.php, line 1384) 

Il est possible de contourner cette limitation en passant par la fonction [constant()](http://www.php.net/manual/en/function.constant.php) qui renvoie la valeur d'une constante d'après son nom. Le test devient donc&nbsp;:

`{if $vente-&gt;type == constant('VENTE::INTERNE')}`