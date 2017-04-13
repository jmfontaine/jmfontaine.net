---
title: Extreme programming - Jour 1
id: 91
categories:
  - Général
date: 2004-01-07 23:39:26
tags:
---

Ca fait plus d'un an que je cherchais à découvrir l'Extreme Programming. A l'époque j'étais tombé sur un article décrivant cette méthode et je dois avouer que les concepts de base (agilité, tests unitaires, cycles courts etc.) m'avaient pas mal plu. Faute de temps, j'avais remis ça à plus tard jusqu'à ce que [Perrick](http://www.onpk.net/ "Blog de Perrick Pennet") me parle d'un livre qu'il venait de lire sur le sujet lors du dernier [Apero PHP lillois](/blog/2003/12/16/59-3emeAperoPhpALille). Il a d'ailleurs écrit [un billet](http://www.onpk.net/index.php/2003/12/18/123-PremierPasVersLextremeProgramming "Premier pas vers l") à ce sujet.

Alors voilà j'entame avec ce billet une série qui me permettra de relater au jour le jour mes impressions sur ce livre. Si je le fait sur ce blog et non sur une feuille de papier c'est pour que chacun puisse commenter ce que je vais tirer de ce livre et au besoin m'éclairer ou me détromper.

Ce soir je commence en douceur avec l'introduction. Fort logiquement elle démontre les limites des démarches par phases puis décrit les pratiques de l'Extreme Programming (que j'appellerai à présent XP pour plus de simplicité) avant d'en citer les valeurs. Mais avant de commencer les choses sérieuses faisont un rapide résumé de l'historique d'XP.

## Historique

Initialement XP a été créé par Kent Beck dans le cadre du projet C3 de Chrysler avec l'aide de [Ron Jeffries](http://www.xprogramming.com/ "Site de Ron Jeffries"). Ward Cunningham les rejoindra plus tard et formera avec Kent Beck le noyau des instigateurs d'XP.

Pressentant que leur méthode était plus universellement applicable, ils affinèrent celle-ci à l'aide du site collaboratif Wiki Wiki Web avant que Kent Beck ne publie en octobre 2000 le livre _[Extreme programming explained](http://www.amazon.com/exec/obidos/tg/detail/-/0201616416/002-2495502-7226419?v=glance "Extreme Programming Explained sur Amazon")_.

## Limites des démarches par phases

Si vous avez un tant soit peu de bouteille dans ce métier, vous avez sans nul doute déjà expérimenté avec la méthode du développement par phases les désagréments suivants:

*   **Spécifications changeant alors que le développement est déjà commencé :** Ce qui entraîne soit une mécontentement du client car on ne change pas les spécifications soit une perte de temps et un surcoût si on modifie effectivement les spécifications et que l'ont fait les modifcations qui en découlent sur ce qui est déjà développé.
*   **Effet tunnel :** Il se passe un temps non négligeable entre la rédaction des spécifications et la livraison du produit au client. Seulement pendant ce temps là, les besoins de celui-ci ont pû changer entre temps ou il a pû tout simplement affiner sa demande. Ca arrive relativement souvent car n'étant évidement pas du métier, le client imagine souvent mal ce qu'il peu demander et ce qu'il ne peut décemment pas envisager pour son produit.
*   **Démotivation des équipes :** Si elle a du bon, la spécialisation des équipes tend à démotiver celles-ci car le travail à alors tendance à devenir répétitif et monotone.
*   **Code peu optimisé :** Les équipes de développement n'ayant souvent pas une vision globale du projet, le code souffre de lourdeur et d'un manque d'optimisation. Il est évident qu'à force de toujours travailler sur son propre code, on lui voit plus les défauts que lui verrait un oeil extérieur. 

## Les pratiques d'XP

Dans ce livre, on trouve 13 pratiques alors que parfois on n'en compte que 12\. C'est en fait parce qu'ici les tests unitaires et les tests de recette sont séparés.

Voici une liste exhaustive de ces pratiques avec leur description. Ces informations sont extraites du [Wiki francophone sur XP](http://xp-france.net/cgi-bin/wiki.pl?TreizePratiques "Wiki francophone sur XP") que je vous encourage à consulter.

### Les pratiques de programmation

*   **Conception Simple (Simple Design) :** Le code doit passer tous les tests et répondre aux critères de maintenabilité : concision, modularité, cohérence, lisibilité.
*   **Remaniement Continu (Refactoring) :** Modification du code par laquelle on améliore sa conception sans en modifier le comportement.
*   **Tests unitaires (Unit testing) :** Des tests automatisés sont écrits pour chaque classe, chaque méthode, et pour tout "ce qui pourrait casser" en général. Ces tests doivent passer à 100% continuellement.
*   **Tests de recette (Acceptance Tests) :** Retour d'information rapide sur le système, en général automatisé, constitué à partir de critères de test définis par le client. 

### Les pratiques de collaboration

*   **Programmation en binôme (Pair programming) :** Le code de production est toujours écrit par deux développeurs : le pilote et le copilote. Les binômes changent au cours du projet.
*   **Propriété Collective du Code (Collective code ownership) :** Chaque développeur peut modifier chaque partie du code si le besoin s'en fait sentir.
*   **Convention de codage (Coding Standard) :** Le code doit suivre une convention de nommage et de présentation afin d'être lisible par tous les membres de l'équipe.
*   **Métaphore (Metaphor) :** Une analogie utilisée comme modèle conceptuel du système en cours de développement.
*   **Intégration continue (Continuous integration) :** Le système est intégralement assemblé et testé une à plusieurs fois par jour. 

### Les pratiques de gestion de projet

*   **Livraisons fréquentes (Frequent releases) :** Le rythme des livraisons est le plus soutenu possible.
*   **Séance de planification (Planning Game) :** Le client définit les scénarios utilisateurs prioritaires. Les développeurs discutent le contenu de ces scénarios, définissent les tâches techniques sous-jacentes, estiment ces tâches et y souscrivent.
*   **Client sur le site (On-site customer) :** Pour une meilleure communication, le client et les développeurs travaillent dans le même espace autant que possible.
*   **Rythme soutenable(Forty-hour week) :** L'équipe fait en sorte de maintenir sa capacité à développer efficacement en ne surchargeant pas outre mesure ses horaires de travail. 

Globalement tout cela me semble plein de bon sens mais une question me turlupine: comment automatiser les tests de recette ? Si j'ai bien saisi, il s'agit de tests au niveau utilisabilité de l'application et non au niveau du code en lui même. Ce genre de test me semble difficile à automatiser. J'en apprendrais sans doute plus par la suite dans ce livre mais si quelqu'un a une explication rapide je suis preneur.

## Les valeurs d'XP

Xp est composé de 4 valeurs qui définissent sa spécificité :

*   **Communication :** L'accent est mis sur la communication en général et la communication orale en particulier car celle-ci améliore l'ambiance dans une équipe et l'implication de ses membres dans le projet.
*   **Simplicité :** Il s'agit de toujours choisir la solution la plus simpel qui puisse marcher (<q lang="en">The simpliest thing that could possibly work</q>). De plus XP met particulièrement en garde contre les travers des développeurs qui cherchent souvent à créer des outils génériques alors que le besoin ne s'en fait pas sentir. Si cela s'avérait nécessaire alors il faudrait le faire mais il faut s'interdire de le faire à priori.
*   **Feedback :** Le feedback, que l'ont pourrait traduire par retour en français, ne se situe pas seulement au niveau de l'adéquation du produit avec les demandes du client. Il aide également à affiner les spécifications en cours de développement si besoin est. Loin d'être inutile ce feedback est gage de qualité car il permet de recadrer en permanence le produit avec les besoins du client. Besoins qui peuvent évoluer avec le temps rappellons le.
*   **Courage :** Cette valeur peut paraître étrange dans le contexte d'une méthode de développement d'un projet informatique mais il faut reconnaître qu'une bonne dose de courage est nécessaire pour se lancer dans un développement sans avoir de spécifications approfondies et définitivement fixées. Bien sûr il existe de multiples mécanismes destinés à parer aux problèmes qui surgiront inévitablement mais ce n'est tout de même pas forcément évident. Il faut également du courage pour faire accepter à des développeurs que leur code puisse être jetté s'il n'est plus en adéquation avec les besoins du client. C'est quelque chose que nous répugnons souvent à faire mais c'est un tort. Il vaux souvent mieux repartir sur des bases saines que de tenter de bricloer un code mal conçu ou mal adapté au contexte. Enfin le travail en binôme et l'appropriation collective du code oblige à dévoiler ses limites et ses lacunes aux autres membres de l'équipe ce qui demande une certaine modestie au niveau de l'égo. 

## Premières impressions

Je dois avouer que mes premières impressions sur XP sont bonnes. Cette méthode semble offrir ce que j'en attend. Espèrons que cela va continuer.