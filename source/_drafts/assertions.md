---
title: Assertions
id: 501
categories:
  - PHP
tags:
---

Ce matin, j'ai découvert par hasard l'existence des [assertions](http://www.php.net/manual/en/function.assert.php) dans PHP. Le concept est assez simple&nbsp;: on défini un test qui doit être vrai. Dans le cas contraire, PHP signale le problème.

#### La théorie!!

Il faut bien garder à l'esprit, le but de ces assertions&nbsp;: le débuggage par la détection de comportements anormaux.  Leur rôle n'est pas de se substituer à la logique fonctionnelle de l'application mais plutôt de la compléter en multipliant les tests lors de la phase de débuggage sans pour autant impacter les performances lors de la mise en production.

En effet, et c'est là que réside une grande partie de l'intérêt des assertions, leur évaluation est désactivable et donc ne grêve pas les performances de l'application lorsqu'on en n'a pas besoin.

La méthode la plus courante de débugagge passe par une profusion de _echo_, _print_r_ et autre _var_dump_. Le problème de cette technique est qu'avant la mise en production il faut soit effacer soit commenter toutes ces commandes avec le risque d'en oublier, ce qui fait toujours désordre sur un serveur de production. Bien entendu lorsqu'on veux dénugger à nouveau l'application, il faut refaire la manipulation inverse. Bref, c'est l'enfer.

Fasse à ces problèmes, certains utilisent une classe ou des fonctions dédiées au débuggage. Cela résoud une partie du problème mais souvent il reste un impact sur les performances car même si le traitement est désactiver, l'appel de la classe ou de la fonction se fait quand même.

Enfin, les plus pointus utilisent des débuggeurs comme DBG ou XDebug, mais aussi puissants soient-ils, ces outils demandent une supervision humaine et donc ne sont aps automatisable au contraire des assertions.

On le voit donc, les assertions ne viennent pas remplacer un débuggeur mais elles sont un outil de plus à ajouter à votre panoplie de développeur efficace.

#### La pratique!!

Utiliser les assertions est très simple. On en définit une de la manière suivante&nbsp;:

&lt;?php $nombre = 2; assert('$nombre &lt; 0; // Le nombre est négatif'); ?&gt;

Dans le flux de nos données, nous avons un nombre, dont la valeur est _en dur_ ici pour les besoins de l'exemple, qui ne doit pas être négatif. Il n'y a d'ailleurs aucune raison pour cela car notre application est sensée nous fournir un nombre supérieur à 0\. Un test avec un _if_ est donc inapproprié. En revanche il ne fait jamais de mal de vérifier que la pratique rejoint la théorie car dans le cas contraire, cela serait le symptôme que quelque chose s'est mal passé en amont.

&lt;?php assert_options(ASSERT_ACTIVE    , 1); assert_options(ASSERT_BAIL      , 0); assert_options(ASSERT_CALLBACK  , 'assertion_handler'); assert_options(ASSERT_QUIET_EVAL, 0); assert_options(ASSERT_WARNING   , 0);

function assertion_handler($file, $line, $message) {
 <pre>   $message = trim(substr($message, strpos($message, '//') + 2));    echo 'Message : ' . $message . '&lt;br /&gt;Fichier : ' . $file . '&lt;br /&gt;Ligne : ' . $line;</pre> 

}

$nombre = 2; assert('$nombre &lt; 0; // Le nombre est négatif'); ?&gt;

Une assertion ne doit pas être une réponse mais une question, pourquoi mon assertion est-elle fausse, qui va déclencher la traque d'un bug.