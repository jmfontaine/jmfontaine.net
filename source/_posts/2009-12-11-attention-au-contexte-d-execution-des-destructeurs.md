---
title: Attention au contexte d'exécution des destructeurs
id: 856
categories:
  - PHP
date: 2009-12-11 20:16:36
tags:
---

Lors d'un exercice en [Licence Professionnelle Informatique Web Développeur](http://www.insset.u-picardie.fr/site/licencepro_web) à l'INSSET de Saint-Quentin, mes élèves ont constaté un comportement étrange avec le destructeur d'une classe. Voici un exemple minimal du problème&nbsp;:
 <pre>&lt;?php class Exemple { 	public function __destruct() 	{ 		file_put_contents('log.txt', 'Test'); 	} } $exemple = new Exemple();</pre> 

Ce code ne pose a priori pas de problème et pourtant si vous l'exécutez avec Apache sur Unix vous risquez d'avoir des problèmes de droit d'écriture&nbsp;:
 <pre>Warning: file_put_contents(log.txt) [function.file-put-contents]: failed to open stream: Permission denied in /var/www/test/destruct.php on line 6</pre> 

En fait l'explication est aussi étonnante que simple et comme souvent on la trouve dans la [documentation de PHP](http://www.php.net/manual/en/language.oop5.decon.php#language.oop5.decon.destructor)&nbsp;: lors de la phase de clôture d'un script, le contexte peut changer sur certains SAPI dont Apache.

Cela veux dire que notre instance étant détruite implicitement lors de la clôture du script, PHP ne va pas essayer de créer le fichier, dont le chemin est relatif, dans le même répertoire que le script mais dans un autre répertoire où il n'a pas forcément le droit d'écrire.

Pour contourner ce problème, il suffit soit de donner au fichier un chemin absolu pour le fichier, soit de détruire explicitement l'instance afin que cela se fasse avant la phase de clôture du script&nbsp;:
 <pre>$exemple = null</pre> 

ou
 <pre>unset($exemple);</pre>