---
title: Empêcher la soumission multiple d'un formulaire
id: 343
categories:
  - Développement Web
date: 2004-12-30 13:55:16
tags:
---

Lorsqu'on utilise des formulaires, on est souvent confronté au problème de la soumission multiple. Pour éviter cela il suffit d'utiliser la méthode JavaScript suivante&nbsp;:
 <pre>function soumettreUneSeuleFois(formulaire) {   if (formulaire.elements['submit']  != null) {     if (formulaire.elements['submit'].disabled) {       return false;     }     formulaire.elements['submit'].disabled = true;     formulaire.elements['submit'].value = 'Veuillez patienter';   }   return true; }</pre> 

Quant au code HTML du formulaire, il sera le suivant&nbsp;:
 <pre>&lt;form action="traitement.php" method="post"          onsubmit="return soumettreUneSeuleFois(this);"&gt;   &lt;fieldset&gt;     &lt;input name="champ" type="text" /&gt;     &lt;input type="submit" name="submit" value="soumettre" /&gt;   &lt;/fieldset&gt; &lt;/form&gt;</pre> 

Ainsi lorsque le formulaire sera soumis, que ça soit par l'appui sur la touché Entrée ou bien par un clic sur le bouton de soumission, ce dernier sera désactivé et son texte sera remplacé par un message d'attente.