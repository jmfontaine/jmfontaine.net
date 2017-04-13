---
title: Parsing de l'analyse syntaxique de fichiers PHP
id: 833
categories:
  - PHP
date: 2009-08-19 19:31:23
tags:
---

Afin d'améliorer les méthodes de développement dans la société pour laquelle je travaille, j'ai mis en place un hook Subversion de type "pre-commit" pour vérifier que la syntaxe PHP des fichiers que l'on souhaite commiter est correcte. Je ne parle pas là de respect de standards de codage, juste du respect de la syntaxe PHP. Cela peut paraître inutile mais je retrouve régulièrement des fichiers avec des erreurs de syntaxes.

L'idée est simplement de récupérer la liste des fichiers impactés par le commit en cours et pour chacun d'en vérifier la syntaxe à l'aide de PHP en ligne de commande. J'ai cependant été confronté à une subtilité dont je voudrais vous faire part.

Voici le code complet du hook en question&nbsp;:
 <pre>#!/usr/bin/php &lt;?php $repositoryPath = $_SERVER['argv'][1]; $transaction     = $_SERVER['argv'][2]; $stderr            = fopen('php://stderr', 'w'); (..) // autres vérifications (...) // Checks PHP files for syntax errors $command = "/usr/bin/svnlook changed -t $transaction $repositoryPath"; exec($command, $lines); $errorsFound  = false; $syntaxErrors = ''; foreach ($lines as $line) {         $file = trim(substr($line, 4));         if ('.php' == substr($line, -4)) {                 // KLUDGE: PHP returns found syntax errors through stderr so "2&gt;&amp;1" must be added to redirect stderr to stdout                 $command = "/usr/bin/svnlook cat -t '$transaction' '$repositoryPath' '$file' | /usr/bin/php -l 2&gt;&amp;1";                 exec($command, $output, $returnValue);                 if (0 != $returnValue) {                         $errorsFound   = true;                         $syntaxErrors .= 'Fichier: ' . $file . PHP_EOL;                         array_pop($output);                         foreach ($output as $line) {                                 $position      = strpos($line, ':');                                 $line          = substr($line, $position + 1);                                 $syntaxErrors .= ' - ' . trim($line) . PHP_EOL;                         }                         $syntaxErrors .= PHP_EOL .  str_repeat('-', 80) . PHP_EOL;         } } if ($errorsFound) {         fputs($stderr, str_repeat('-', 80) . PHP_EOL);         fputs($stderr, 'Des erreurs de syntaxe PHP on ete detectes :' . PHP_EOL . PHP_EOL);         fputs($stderr, $syntaxErrors);         fclose($stderr);         exit(1); } fclose($stderr); exit(0);</pre> 

La ligne qui nous intéresse principalement est la suivante&nbsp;:
 <pre>$command = "/usr/bin/svnlook cat -t '$transaction' '$repositoryPath' '$file' | /usr/bin/php -l 2&gt;&amp;1";</pre> 

La première partie, à gauche du pipe, demande à Subversion d'afficher le contenu du fichier _$file_ du dépôt situé à _$repositoryPath_ et cela pour la transaction _$transaction_. On parle ici de transaction et non de révision parce que nous sommes avant le commit. Enfin, la partie après le pipe reçoit le contenu du fichier renvoyé par Subversion et l'analyse syntaxiquement.

Je souhaitais afficher des informations sur les erreurs éventuellement rencontrées afin que le développeur sache exactement pourquoi son commit a été rejeté. Le problème est que PHP m'affichait bien les détails quand je capturais la sortie écran avec de l'output buffering mais je ne les avais pas dans la variable sensée contenir la sortie écran.

La raison est en fait toute bête mais on peut y passer un peu de temps avant de trouver si on n'a pas l'habitude du shell. Nous allons donc faire un petit rappel sur le sujet.

Sur Unix, il existe [des flux standards](http://fr.wikipedia.org/wiki/Stdin). Ce sont des canaux pour l'entrée et la sortie de données. Ces flux sont au nombre de trois, au travers desquels les programmes peuvent faire entrer ou sortir des informations. Ceux qui nous intéressent en l'occurrence sont "stdout" et "stderr". Le premier correspond à la sortie classique tandis que le second correspond aux messages d'erreur.

Revenons maintenant à PHP. La fonction exec() permet de récupérer la sortie dans une variable. Le problème c'est que c'est le flux "stdout" qui est renvoyé et non l'ensemble de l'affichage. Les messages envoyés à "stderr" n'y figurent donc pas, ce qui explique le problème que je rencontrais.

Heureusement, il est possible de rediriger les messages du flux "stderr" vers "stdout" en ajoutant "2&gt;&amp;1" après la commande. Dès lors, la fonction exec() renvoie bien ce que j'attends et je peux afficher les messages d'erreur au développeur.