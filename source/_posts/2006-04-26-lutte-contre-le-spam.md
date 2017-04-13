---
title: Lutte contre le spam
id: 551
categories:
  - Vie du blog
date: 2006-04-26 12:13:20
tags:
---

Le [spam](http://fr.wikipedia.org/wiki/Spam) fait partie de notre quotidien et ce blog ne fait malheureusement pas exception. Depuis quelques mois j'utilisais [Spamplemousse](http://www.zeubeubeu.net/blog/plugins-dotclear#spamplemousse). Ce plugin pour DotClear est assez simple à mettre en oeuvre mais son fonctionnement par [liste noire](http://fr.wikipedia.org/wiki/Spam#Lutte_technique) le rend peu flexible et donc moyennement efficace.

J'ai donc cherché une meilleure solution pour bloquer intelligement le spam et j'ai trouvé [SpamClear](http://www.dotclear.net/forum/viewtopic.php?id=16270). Ce plugin utilise un [filtre Bayésien](http://fr.wikipedia.org/wiki/Spam#M.C3.A9thode_bayesienne) pour déterminer si un commentaire est du spam ou non. S'il s'agit de spam il va mettre le commentaire hors-ligne automatiquement. Bien sûr cela fonctionne également avec les trackbacks. Une fois la phase d'apprentissage terminée (assez courte), ce genre de filtrage est très efficace et ne nécessite quasiment aucun entretien.

Il est en place sur ce blog depuis 2 jours et il rempli parfaitement son rôle pour le moment. Aussi, ai-je décidé de ne plus modérer a priori les commentaires et de permettre à nouveau de soumettre des trackbacks.

**Mise à jour :**

Pour ceux qui seraient surpris du fait que [le commentaire de NiKo](/blog/2006/04/26/533-lutte-contre-le-spam#commentaire_3524) soit affiché, c'est tout à fait normal. Cela prouve justement l'intérêt du filtre Bayésien sur la liste noire.

Avec une liste noire qui contiendrait le mot "viagra", ce commentaire n'aurait pas été affiché car il contient un mot interdit.

Cependant le filtre Bayésien a considéré (à juste titre) ce commentaire comme n'étant pas du spam. Pourquoi&nbsp;? Tout simplement parce que si le mot "viagra" a de forte chance de signifier qu'il s'agit d'un spam, le fait que ce commentaire a été soumis par une personne dont les commentaires ne sont généralement pas considérés comme du spam a permis au filtre de déterminer qu'il n'y avait pas de problème.