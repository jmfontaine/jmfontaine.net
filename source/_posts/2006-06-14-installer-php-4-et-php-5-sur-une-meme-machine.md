---
title: Installer PHP 4 et PHP 5 sur une même machine
id: 585
categories:
  - PHP
date: 2006-06-14 10:14:15
tags:
---

Dans le cadre d'un nouveau projet, je vais participer à la réécriture d'une libraire PHP initialement développée pour PHP 4\. L'objectif est de la rendre compatible avec PHP 5 mais surtout de tirer partie des améliorations apportées par celui-ci.

Il me faut donc disposer à la fois de PHP 4 et 5 sur mon poste de développement. Il existe une foule de tutoriaux expliquant comment parvenir à cela. Généralement cela passe par l'installation d'un second Apache écoutant sur un autre port que le 80\. Dans tous les cas, cela reste trop de la bidouille à mon goût.

Souhaitant rester le plus proche possible de la configuration de base de ma Kubuntu Dapper, j'ai opté pour une autre approche.

La configuration initiale comprend Apache 2.0 et PHP 5.1.2 installé en module Apache. Nous allons installer PHP 4 en mode CGI afin de ne pas chambouler l'installation de base. L'astuce va consister à utiliser [mod_actions](http://httpd.apache.org/docs/2.0/mod/mod_actions.html) pour Apache. Ce module permet de lancer un CGI lorsqu'un fichier ou un type de fichier est appelé.

On installe PHP 4 en mode CGI
 <pre>sudo apt-get install php4-cgi</pre> 

On active le mode actions
 <pre>a2enmod actions</pre> 

On redémarre Apache
 <pre>/etc/init.d/apache2 restart</pre> 

A présent, il suffit d'ajouter les 2 lignes suivantes dans un fichier .htaccess situé dans le répertoire où activer PHP 4 ou bien dans le fichier de configuration du VirtualHost.
 <pre>AddHandler x-httpd-php4 .php Action x-httpd-php4 /cgi-bin/php4</pre> 

Si PHP 4 ne semble pas utilisé vérifiez que les fichiers .htaccess sont activés. La directive AllowOverride doit être à All pour cela.

Enfin, si vous utilisez un VirtualHost, assurez vous que les lignes suivantes sont présentes dans son fichier de configuration&nbsp;:
 <pre>ScriptAlias /cgi-bin/ /usr/lib/cgi-bin/ &lt;Directory "/usr/lib/cgi-bin"&gt;     AllowOverride None     Options +ExecCGI -MultiViews +SymLinksIfOwnerMatch     Order allow,deny     Allow from all &lt;/Directory&gt;</pre>