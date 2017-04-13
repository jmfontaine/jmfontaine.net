---
title: Des tests unitaires cachotiers
id: 1073
categories:
  - PHP
tags:
---

Mon nouveau poste de responsable de la qualité chez Profilsoft m'a amené à me pencher sur les tests unitaires existants sur notre applicatif.

Lors de premiers lancement j'ai constaté des lenteurs ponctuelles qui semblaient toujours se produire au même niveau de l'exécution de la suite de tests. J'ai soupçonné des tests peu performants mais sans m'alarmer spécialement.

### Des tests pas si unitaires que cela

Lors d'une exécution des tests, j'ai eu un échec pour cause de … timeout. Cette fois, je ne pouvais pas laisser passer cela sans chercher à comprendre. En observant le test concerné, le test d'une classe se connectant à un web service SOAP, j'ai vitre compris que le test n'avait d'unitaire que le nom. En réalité il s'agissait d'un test d'intégration. Cela n'est pas mal en soit, c'est même très utile, simplement confondre les deux peut amener des problèmes.

Le premier ne s'est pas fait attendre. Après avoir désactivé les tests d'intégration en attendant de les extraire des tests unitaires, j'ai mis en place une intégration continue dont l'une des étapes consiste à lancer les tests unitaires. Le script utilisée pour l'intégration continue fonctionne parfaitement sur ma machine locale, je suis donc confiant. De nombreuses erreurs nouvelles me ramènent rapidement sur terre. Visiblement d'autres accès à des serveurs tiers sont effectués :
<pre>13) MatchingByIdTest::testSearch
SoapFault: SOAP-ERROR: Parsing WSDL: Couldn't load from '/CandidateMatchService?WSDL' : failed to load external entity "/CandidateMatchService?WSDL"

14) FusionPartenaireTest::testWillMergeSyncJobBoardIfMaster
mysql_query(): Can't connect to local MySQL server through socket '/var/lib/mysql/mysql.sock' (2)</pre>
Ces deux erreurs sont répétées en tout une vingtaine de fois.

La seule explication était que la configuration était différente entre ma machine de développement et celle d'intégration. Pour valider cette hypothèse, j'ai mis à blanc toutes les directives de configuration contenant des URL ou des adresses IP. Le lancement des tests unitaires dans ces conditions provoque effectivement les même erreurs.

### Trouver ce que les tests font dans notre dos

Ne voulant pas éplucher manuellement chaque test unitaire pour débusquer les appels non autorisés, j'ai dû chercher une manière d'automatiser ce travail. Le but n'était pas uniquement de m'éviter une travail fastidieux : je souhaitais également pouvoir lancer périodiquement ce test pour m'assurer que le problème ne revienne pas.

Pour étudier le comportement de mes tests unitaires avec le reste du système, j'ai utilisé la commande "strace" :
<pre>strace -e trace=connect phpunit 2&gt;&amp;1 1&gt;/dev/null</pre>
Cela a l'air barbare au premier abord mais cela s'explique en fait assez bien. Nous lançons donc la commande "strace" disponible sur la plupart des Unix. L'option "-e trace=connect" permet de filtrer les évènement pour ne s'intéresser qu'aux connexions réseaux. "phpunit" est la commande dont le comportement doit être étudié. Enfin, si on s'arrête là les sorties de strace et de PHPUnit seraient mêlées ce qui compliquerait le travail. Nous faison donc en sorte d'envoyer la sortie d'erreur vers la sortie standard et de rediriger la sortie standard d'origine, donc celle de PHPUnit, vers /dev/null, une sorte de trou noir. Le résultat est que nous obtenons uniquement la sortie de strace.

[![](http://www.jmfontaine.net/wp-content/uploads/2012/11/Capture-décran-061112-2135-1024x400.png "Sortie strace")](http://www.jmfontaine.net/wp-content/uploads/2012/11/Capture-décran-061112-2135.png)

On découvre dans cette sortie, anonymisée pour des raisons évidentes de confidentialité, des informations très intéressantes : les tests unitaires font appels à un serveur tiers (66.111.xx.xx) en HTTPS (port 443) ainsi qu'à un serveur MySQL (192.168.xx.xx sur le port par défaut de MySQL, 3306). La troisième IP (10.0.xx.xx sur le port 53) est en fait le serveur DNS. Sa présence ici est le résultat de l'accès au serveur tiers par son nom de domaine. La résolution DNS doit donc être faite.

La trace est relativement courte mais déjà on sent la confusion et la redondance. Il serait plus agréable de récupérer une liste simple et dédoublonnée contenant uniquement les addresses IP appelées ainsi que les ports. Qu'à cela ne tienne :
<pre>strace -f -e trace=connect phpunit 2&gt;&amp;1 1&gt;/dev/null | perl -nle 'if (/{sa_family=AF_INET, sin_port=htons\((.*?)\), sin_addr=inet_addr\("(.*?)"\)}/) {print "$2:$1"}; if (/{sa_family=AF_FILE, path="(.*?)"}/) {print "$1"};' | awk '!a[$0]++'</pre>
Cette commande, encore plus barbare, que la première produit la sortie suivante :

[![](http://www.jmfontaine.net/wp-content/uploads/2012/11/Capture-décran-061112-2202.png "Sortie strace filtrée")](http://www.jmfontaine.net/wp-content/uploads/2012/11/Capture-décran-061112-2202.png)

Si on la décompose, nous retrouvons la première partie inchangée :

<pre>strace -f -e trace=connect phpunit 2&gt;&amp;1 1&gt;/dev/null</pre>
La suivante permet d'extraire les adresses IP et les ports pour les connexion réseau ainsi que le chemin des connexions par sockets :
<pre>perl -nle 'if (/{sa_family=AF_INET, sin_port=htons\((.*?)\), sin_addr=inet_addr\("(.*?)"\)}/) {print "$2:$1"; if (/{sa_family=AF_FILE, path="(.*?)"}/) {print "$1"};}'</pre>
Enfin, la dernière partie supprime les doublons :
<pre>awk '!a[$0]++'</pre>
&nbsp;