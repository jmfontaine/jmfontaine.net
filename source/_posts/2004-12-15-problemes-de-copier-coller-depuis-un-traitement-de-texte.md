---
title: Problèmes de copier/coller depuis un traitement de texte
id: 331
categories:
  - PHP
date: 2004-12-15 16:30:03
tags:
---

Quand on fait un copier/coller d'un texte depuis traitement de texte, notamment Word, vers un formulaire <acronym title="HyperText Markup Language">HTML</acronym>, on obtient parfois des caractères exotiques qui posent des problèmes lors de leur utilisation.

Pour cela, il suffit d'encoder ces fameux caractères avant de les incorporer dans une page <acronym title="HyperText Markup Language">HTML</acronym>. La fonction suivante, inspirée de la classe [Wiki2xhtml](http://www.neokraft.net/sottises/wiki2xhtml/ "Wiki2xhtml") d'[Olivier Meunier](http://www.neokraft.net/blog/ "Neokraft blog"), réalise cet encodage&nbsp;:
 <pre>   function encoderChaine($chaine)    {        $entites = array(            '&#8218;' =&gt; '&amp;#8218;',            '&#402;' =&gt; '&amp;#402;',            '&#8222;' =&gt; '&amp;#8222;',            '&#8230;' =&gt; '&amp;#8230;',            '&#8224;' =&gt; '&amp;#8224;',            '&#8225;' =&gt; '&amp;#8225;',            '&#710;' =&gt; '&amp;#710;',            '&#8240;' =&gt; '&amp;#8240;',            '&#352;' =&gt; '&amp;#352;',            '&#8249;' =&gt; '&amp;#8249;',            '&#338;' =&gt; '&amp;#338;',            '&#8216;' =&gt; '&amp;#8216;',            '&#8217;' =&gt; '&amp;#8217;',            '&#8220;' =&gt; '&amp;#8220;',            '&#8221;' =&gt; '&amp;#8221;',            '&#8226;' =&gt; '&amp;#8226;',            '&#8211;' =&gt; '&amp;#8211;',            '&#8212;' =&gt; '&amp;#8212;',            '&#732;' =&gt; '&amp;#732;',            '&#8482;' =&gt; '&amp;#8482;',            '&#353;' =&gt; '&amp;#353;',            '&#8250;' =&gt; '&amp;#8250;',            '&#339;' =&gt; '&amp;#339;',            '&#376;' =&gt; '&amp;#376;',            '&#8364;' =&gt; '&amp;#8364;');        return str_replace(array_keys($entites),                                 array_values($entites),                                 $chaine);    }</pre>