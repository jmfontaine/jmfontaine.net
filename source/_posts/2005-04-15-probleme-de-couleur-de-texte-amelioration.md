---
title: Problème de couleur de texte - Amélioration
id: 385
categories:
  - PHP
date: 2005-04-15 17:52:19
tags:
---

Après quelques recherches sur Internet, j'ai découvert [un article](http://www.aprompt.ca/WebPageColors.html "Testing The Readability Of Web Page Colors") expliquant une manière de déterminer la luminosité d'une couleur. Je me suis donc empressé d'améliorer ma fonction qui permet de [déterminer la couleur d'un texte en fonction de celle du fond](/blog/2005/04/12/365-probleme-de-couleur-de-texte "Problème de couleur de texte").

Le principe est simple&nbsp;: on donne un poids différent à chacune des composantes de la couleur selon l'importance qu'elle a dans la perception que nous avons de la luminosité. La formule suivante retourne une valeur comprise entre 0 et 255\. 0 étant la plus faible luminosité possible et 255 la plus forte.
 <pre>luminosité = ((rouge x 299) + (vert x 587) + (bleu x 114))                   / 1000</pre> 

Ma fonction devient donc&nbsp;:
 <pre>function couleurTexte($couleur) {     $rouge      = hexdec(substr($couleur, 1, 2));     $vert       = hexdec(substr($couleur, 3, 2));     $bleu       = hexdec(substr($couleur, 5, 2));     $luminosite = (($rouge * 299) + ($vert * 587) + ($bleu * 114))                       / 1000;     return ($luminosite &gt; 127) ? '#000000' : '#FFFFFF'; }</pre> 

Tandis que mon plugin Smarty devient ceci&nbsp;:
 <pre>&lt;?php /** * Smarty plugin * @package Smarty * @subpackage plugins */</pre> <pre>/** * Smarty {text_color} function plugin * * Type:     function&lt;br&gt; * Name:     text_color&lt;br&gt; * Date:     April 15, 2005&lt;br&gt; * Purpose:  determinate the text color depending on the                  background color&lt;br&gt; * Input: *         - bkg   = color of the background *         - light = color for the light text (optional,                        white is default) *         - dark  = color for the dark text (optional,                         black is default) * * Examples:&lt;br&gt; * &lt;pre&gt; * {text_color bkg=#FF0000} * {text_color bkg=#FF00DE light=#CCCCCC dark=#333333} * &lt;/pre&gt; * * @link http://smarty.php.net/manual/en/language.function.          text_color.php {text_color} *       (Smarty online manual) * @author Jean-Marc Fontaine &lt;jmf at durcommefaire dot net&gt; * @version  1.1 * @param array * @param Smarty * @return string */ function smarty_function_text_color($params, &amp;$smarty) {     if (substr($params['bkg'], 0, 1) != '#') {         return 'inherit';     }     $red          = hexdec(substr($params['bkg'], 1, 2));     $green        = hexdec(substr($params['bkg'], 3, 2));     $blue         = hexdec(substr($params['bkg'], 5, 2));     $brightness   = (($red * 299) + ($green * 587) + ($blue * 114))                          / 1000;     $dark_color   = isset($params['dark']) ? $params['dark'] :                                 '#000000';     $ligth_color  = isset($params['light']) ? $params['light'] :                                '#FFFFFF';</pre> <pre>    return ($brightness &gt; 127) ? $dark_color : $ligth_color; }</pre> <pre>/* vim: set expandtab: */</pre> <pre>?&gt;</pre> 

Un comparatif montre que dans certains cas, la nouvelle méthode améliore grandement la lisibilité du texte.

![](/images/text_color.png)