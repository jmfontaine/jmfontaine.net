---
title: De la difficulté de recruter un développeur
id: 540
categories:
  - PHP
date: 2006-04-05 23:04:31
tags:
---

Le calme qui règne sur ce blog depuis le début de l'année est trompeur car il est inversement proportionnel à l'activité qui règne dans ma vie. De grands changements sont en cours d'élaboration et parmi ceux-ci, [mon départ de la société](/blog/2006/03/23/521-offre-d-emploi) qui m'emploie actuellement.

Etant le seul employé, il a fallu me trouver un remplacant. J'ai activement participé à la sélection des candidats ainsi qu'aux entretiens. L'expérience a été très intéressante et surtout enrichissante. J'ai pu constater que le marché du travail est difficile actuellement si l'on en juge par les candidatures très éloignées, géographiquement ou dans les qualifications, de ce qui était demandé.

Pour rappel, voici l'intitulé de l'annonce que nous avons diffusé&nbsp;:
 > Le poste, basé sur Lille (59), consiste à concevoir, développer et maintenir une application PHP pour les cabinets d'avocats en collaboration avec des experts métiers.
> 
>  Il est impératif d'être autonome car vous serez le seul intervenant technique sur le projet. De bonnes facultés de communication sont également indispensables car vous serez en relation régulière avec des intervenants métiers ainsi qu'avec les utilisateurs.
> 
>  Les connaissances techniques suivantes sont indispensables&nbsp;: *PHP *SQL *HTML/CSS (Conformes aux standards Web) *Javascript *Installation et maintenance de serveurs Linux avec Apache, PHP, MySQL
> 
>  Par ailleurs, vous serez amené de temps en temps à développer quelques sites Internet pour lesquels une connaissance de Flash et d'ActionScript seront un plus apprécié, ainsi que la connaissance de l'environnement Mac.
> 
>  Un diplôme bac+3 minimum est exigé. La rémunération sera à négocier en fonction de l'expérience. 

En vrac, nous avons reçu&nbsp;:

*   la candidature d'un webdesigner,
*   celle d'un développeur vivant à Toulon,
*   celle d'un autre de Poitiers,
*   celle d'un administrateur réseaux ne parlant même pas de développement sur son CV
*   des propositions de sociétés nous invitant à délocaliser le développement de notre application en Roumanie ou en Chine 

Une fois le premier écrémage fait, nous avons convoqué une demi-douzaine de candidats. Parmi eux se trouvait une personne que je croise très régulièrement le matin en me rendant au travail. Il s'est avéré qu'il travaille à côté d'où j'habite et inversement. Chose étonnante, le candidat de ce matin n'était autre qu'un développeur fréquentant les [apéroPHP](http://www.aperophp.net/index.php) Lillois dont je ne connaissais pas le patronyme ce qui m'avait empêché de faire le rapprochement en lisant son CV.

Ayant toujours le "[test de Joël](http://french.joelonsoftware.com/Articles/TheJoelTest.html)" dans un coin de ma tête, j'ai proposé à mon patron de faire passer un petit test technique à nos candidats pendant leur entretien. Le principe était assez simple. Il fallait développer un petit gestionnaire de personnes. Un certain nombre d'informations devait pouvoir être stockées concernant ces personnes. Je mettais à la disposition des candidats une structure rudimentaire contenant une instance de Smarty configurée et une autre d'ADOdb car nous utilisons ces deux libraires dans nos projets. Les candidats étaient libres d'utiliser ou non la struture fournie, d'utiliser les outils (librairies, classes, etc.) qu'ils voulaient, de consulter toute l'aide qu'ils souhaitaient et de nous poser n'importe quelles questions. Enfin, j'ai mis à leur disposition une base de données vierge avec un phpMyAdmin fonctionnel.

C'était la première fois que je mettais un test de ce type en place et je dois avouer que j'ai été totalement convaincu de son intérêt. Cela nous a permis de mieux cerner les candidats, de voir le cheminement de leur pensée, leur rigueur et cela a également permis de mettre en évidence une tentative de bluff.

En effet, l'un (ou plutôt l'une) des candidats avait indiqué être experte PHP, SQL et HTML. A priori, elle était la perle rare que nous cherchions. Cependant, son expérience de seulement 2 ans en PHP me laissait dubitatif. Soit la personne était très douée pour être devenue experte en seulement 2 ans, soit elle essayait de nous pipoter. A vrai dire, je penchais pour la seconde solution mais je ne pensais pas que c'était à ce point.

Nous lui avons donc expliqué le test et l'avons laissée travailler pendant les 30 minutes dévolues au test. Une fois la demi-heure passée, nous avons regardé avec elle se qu'elle avait fait. Elle avait créer 3 tables pour gérer les personnes dont une pour les villes dans laquelle elle avait mis un champ "code postal". Je lui ai demandé pourquoi avoir fait ce choix. Elle a alors remarqué qu'il y avait peut-être plusieurs villes pour un code postal. Je n'ai pas osé lui dire que l'inverse aussi était vrai. Le reste de la base était à l'avenant (clé étrangère en VARCHAR(50) , le nom des tables qui commence par "tab_", etc.).

Deçu à l'examen de sa base de données, j'ai demandé à voir le code PHP et là ça a été la stupéfaction&nbsp;: elle n'a écrit en tout et pour tout qu'une seule ligne de code. Il s'agissait d'un _include_ qui ne fonctionnait même pas car elle n'avait pas mis de guillemets au nom du fichier&nbsp;! La seule explication qu'elle a balbutié en devenant écarlate a été qu'elle ne pratiquait pas PHP au quotidien dans son emploi actuel mais que ça reviendrait vite. Une prétendue experte PHP incapable de faire l'inclusion d'un fichier, qui plus est en consultant la documentation&nbsp;? A ce niveau là, ce n'est plus de l'enjolivement de CV, c'est du foutage de gueule&nbsp;! Enfin, pour en terminer avec ses domaines de compétence (ou plutôt d'incompétence), la seule et unique ligne de HTML qu'elle a écrit a été "&lt;b&gt;Annuaire&lt;/b&gt;". Experte en HTML peut-être mais surement pas en standards Web.

La décision a finalement été prise cette après-midi et mon remplacant doit commencer lundi. Nous allons donc attaquer concrêtement la phase de transition avant que je ne parte vers d'autres aventures.