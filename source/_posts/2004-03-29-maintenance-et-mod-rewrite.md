---
title: Maintenance et mod_rewrite
id: 164
categories:
  - Développement Web
date: 2004-03-29 22:30:25
tags:
---

Je vous l'avais promis, je vais essayé de publier plus régulièrement des billets maintenant que le site de mon association est en ligne. Alors voilà je vais vous livrer une astuce qui vous simplifiera sans doute énormément la vie.

Tout d'abord mettons nous en situation. Eric, le tableau ... non c'est pas ça, je confond. Je disais donc voici le problème: vous avez un site en production et vous souhaitez le mettre à jour. Comme toute mise à jour elle va entraîner des phénomènes étranges lors de son déroulement. L'idéal serait de bloquer proprement l'accès au site pendant que vous seul pouvez y accèder afin de mettre à jour les fichiers et vérifiez que tout fonctionne comme prévu. Ca vous paraît utopique ? Pourtant c'est très facile à mettre en place. Voici comment.

La clé de cette astuce est le génial [mod_rewrite](http://httpd.apache.org/docs-2.0/mod/mod_rewrite.html "Apache Module mod_rewrite"), un module pour le [serveur Apache](http://httpd.apache.org/ "Apache HTTP server project"). Le principe est tout bête: on interdit l'accès à toute page du site à toute IP autre que la notre.

Pour cela il suffit de créer un fichier nommé .htaccess dans le répertoire racine de votre site et d'y mettre :
 <pre>RewriteEngine on RewriteCond  %{REMOTE_ADDR}  !^1\.2\.3\.4$ RewriteRule .* pages/maintenance.html [L]</pre> 

Si au premier abord ces lignes semble assez cryptiques, elles sont en fait assez simples. La première active la réécriture d'URL par mod_rewrite. La seconde indique que seules les IP autres que 1.2.3.4 seront prisent en compte pour la troisième ligne qui redirige toute requête d'URL vers pages/maintenance.html. Il suffit de remplacer 1.2.3.4 par votre IP.

Quelques remarques avant de continuer. Les points séparant les parties de l'IP doivent être échappés car ils ont une signification. La commande RewriteRule prend pour premier argument une expression rationnelle (souvent appellée abusivement _expression régulière_ à cause du faux-amis qu'est _regular_ en Anglais) et pour second argument une URL qui sera utilisée si l'URL demandée correspond à l'expression rationnelle. Enfin le _[L]_ indique qu'il ne faut pas continuer à tenter de réécrire l'URL. Pour plus de détails, reportez vous à la [documentation officielle](http://httpd.apache.org/docs-2.0/mod/mod_rewrite.html#rewriterule "RewriteRule Directive").

Cette méthode fonctionne très bien pour une page HTML simple mais si vous essayez d'y inclure une image vous allez avoir un problème. En effet la troisième ligne redirige toute requête vers _pages/maintenance.html_, y compris les requêtes pour vos images. La solution est relativement simple en fait. Il suffit de modifier le code pour obtenir ceci :
 <pre>RewriteEngine on RewriteCond %{REMOTE_ADDR} !^1\.2\.3\.4$ RewriteCond %{REQUEST_URI} !^/images RewriteRule .* pages/maintenance.html [L]</pre> 

La ligne supplémentaire rajoute une condition à la réécriture d'URL. Il faut à présent que l'URL demandée ne commence pas par _/images_. Ainsi vos requêtes vers vos images ne seront pas réécrites.

Voilà vous pouvez maintenant faire vos mises à jours tranquillement et proprement. Par contre quand vous avez terminé, n'oubliez pas de commenter ces lignes car vous aurez toujours accès au site mais pas vos visiteurs.