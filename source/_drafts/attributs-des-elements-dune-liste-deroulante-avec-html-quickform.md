---
title: Attributs des éléments d'une liste déroulante avec HTML_QuickForm
id: 329
categories:
  - Général
tags:
---

$select_couleurs =&amp; HTML_QuickForm::createElement('select', 'id_couleur', 'Couleur sélectionnée'); foreach ($liste_couleurs as $valeur) {
 <pre>   $select_couleurs-&gt;addOption($valeur['nom'](&#039;nom&#039;), $valeur['id'](&#039;id&#039;), array('style' =&gt; 'background: #' . $valeur['valeur'](&#039;valeur&#039;) . ';'));</pre> 

} $formulaire-&gt;addElement($select_couleurs);