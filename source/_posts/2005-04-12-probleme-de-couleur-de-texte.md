---
title: Problème de couleur de texte
id: 383
categories:
  - PHP
date: 2005-04-12 13:45:30
tags:
---

Récemment, j'ai été confronté à un problème a priori simple. Dans une application PHP, les utilisateurs peuvent choisir une couleur à associer à un élement. Dans la liste des éléments, cette couleur est utilisée comme couleur de fond. Cela est très pratique car très visuel seulement cela peut poser un problème de lisibilité lorsque la couleur de fond est trop proche de celle du texte.

Il y a bien la solution de demander à l'utilisateur une couleur pour le texte en plus de la couleur de fond mais cela est contraignant, d'autant plus qu'il est facile d'automatiser cela.

Toute l'astuce tient dans un chiffre&nbsp;: 102\. En effet, c'est la valeur décimale clé pour le canal vert de la couleur. Si la valeur est inférieure ou égale à 102, le texte doit être de couleur claire, sinon de couleur foncée. Cela peut se traduire ainsi en PHP&nbsp;:
 <pre>function couleurTexte($couleur) {     $vert = hexdec(substr($couleur, 3, 2));     return ($vert &gt; 102) ? '#000000' : '#FFFFFF'; }</pre> 

Cette fonction reçoit le code hexadécimal de la couleur de fond et retourne le code de la couleur du texte.

Enfin, pour les utilisateurs de Smarty, j'ai écrit ce petit plugin qui implémente cette fonctionnalité de manière un peu plus évoluée&nbsp;:
 <pre>&lt;?php /** * Smarty plugin * @package Smarty * @subpackage plugins */</pre> <pre>/** * Smarty {text_color} function plugin * * Type:     function&lt;br&gt; * Name:     text_color&lt;br&gt; * Date:     April 4, 2005&lt;br&gt; * Purpose:  determinate the text color depending on the                  background color&lt;br&gt; * Input: *         - bkg   = color of the background *         - light = color for the light text (optional,                        white is default) *         - dark  = color for the dark text (optional,                         black is default) * * Examples:&lt;br&gt; * &lt;pre&gt; * {text_color bkg=#FF0000} * {text_color bkg=#FF00DE light=#CCCCCC dark=#333333} * &lt;/pre&gt; * * @link http://smarty.php.net/manual/en/language.function.          text_color.php {text_color} *       (Smarty online manual) * @author Jean-Marc Fontaine &lt;jmf at durcommefaire dot net&gt; * @version  1.0 * @param array * @param Smarty * @return string */ function smarty_function_text_color($params, &amp;$smarty) {     if (substr($params['bkg'], 0, 1) != '#') {         return 'inherit';     }     $green       = hexdec(substr($params['bkg'], 3, 2));     $dark_color  = isset($params['dark']) ? $params['dark'] :                                 '#000000';     $ligth_color = isset($params['light']) ? $params['light'] :                                '#FFFFFF';</pre> <pre>    return ($green &gt; 102) ? $dark_color : $ligth_color; }</pre> <pre>/* vim: set expandtab: */</pre> <pre>?&gt;</pre>