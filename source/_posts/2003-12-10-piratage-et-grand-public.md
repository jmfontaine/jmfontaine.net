---
title: Piratage et grand public
id: 63
categories:
  - Général
date: 2003-12-10 21:37:35
tags:
---

Vendredi, j'ai reçu un mail étrange au travail. Je l'ai tout d'abord pris pour du spam, puis en voyant qu'il semblait émaner d'[E-Bay](http://wwwe-bay.com/) je me suis penché dessus plus particulièrement avant de me rendre compte qu'il s'agissait d'une tentative de piratage de numéro de Carte Bleue des plus habiles.

### Anatomie du mail

Le message du mail est le suivant :
 > Dear Ebay.com Customer, Ebay.com is constantly working to ensure security by regularly screening the accounts in our system. We recently reviewed your account and determined more information was needed from you to provide you with secure service. After we collect this information your account will be reviewed. You will be notified when the review is complete.
> 
>  We apologize for any inconvenience and hope to restore your access as soon as possible.
> 
>  For instructions on how to restore full use of your account, please go to the link below:
> 
>  https://scgi.ebay.com/saw-cgi/eBayISAPI.dll?RegisterEnterInfo&amp;siteid=0
> 
>  We encourage you to update your account and restore full access as soon as possible. Should access to your account remain limited for an extended period of time, it may result in further limitations on the use of your account or may result in eventual account closure.
> 
>  Thank you for your prompt attention to this matter.
> 
>  Sincerely, Ebay.com Account Review Team 

Le discours est des plus châtié et inspire la confiance, tout comme l'url qui pointe vers un sous-domaine d'E-Bay et qui utilise une connexion sécurisée. Seulement en y regardant de plus prêt on s'apercoit que dans le source de ce mail HTML, l'url pointée par ce lien n'est pas du tout la même: `&lt;a href="http://212.90.255.226/billing/ebayindex.htm"&gt; https://scgi.ebay.com/saw-cgi/eBayISAPI.dll?RegisterEnterInfo&amp;amp;siteid=0&lt;/a&gt;`

Elle ne pointe plus vers E-Bay et n'est plus sécurisée.

Quand on se [renseigne sur le propriétaire de cette adresse IP](http://www.ripe.net/perl/whois?form_type=simple&amp;full_query_string=&amp;searchtext=212.90.255.226&amp;do_search=Search), on découvre qu'elle appartient en fait à la filiale Polonaise du fournisseur d'accès Tiscali et qu'elle a donc probablement été attribuée à l'un de ses abonnés, en tous cas elle n'appartient pas à E-Bay.

### Une fausse page plus vraie que nature

Quand on suit le lien indiqué dans le mail, on tombe sur la page suivante :

![](/images/e-bay.png)

Ou plus exactement on arrive sur une page qui ouvre une autre page dans un pop-up avant de se fermer elle même et ce avec la plus grande discrétion.

La nouvelle fenêtre ne comprend pas de barre de navigation mais en revanche elle contient un assemblage d'image et de zones de saisie de formulaire simulant assez bien la barre d'adresse d'Internet Explorer. Un détail cependant attire l'attention, la couleur de cette barre et la forme du bouton qui sont celles de Windows 9x et non Windows XP comme sur mon poste. Il faut cependant reconnaitre que la tromperie est très bien menée et que beaucoup ne remarqueront pas ce détail ou tout du moins n'en concluerons pas à une tentative de dupérie.

Enfin pour finir de rassurer l'internaute, la page pirate inclut les entête et pied de page originaux du site E-Bay. Ainsi lorsqu'on survole les liens du menu, les urls affichée sont bien celles d'E-Bay.

### Danger pour les néophytes

Si pour un oeil averti ce mail mal intentionné est aisément identifiable, la _qualité_ de la tentative de piratage est telle que beaucoup de néophytes en informatique pourrait aisément se laisser berner avec les graves conséquences financières que cela suppose.

Alors à qui incombe la responsabilité ? L'éditeur du logiciel de messagerie et du navigateur pour ne pas avoir détecter la tromperie et ne pas l'avoir signalé à l'utilisateur ? Bien sûr que non, la différenciation entre ce genre de mail et un mail légitime est impossible à faire pour une machine. Une autre solution serait de former les utilisateurs mais comme on ne demande à personne d'être mécanicien pour obtenir le permis de conduire, il semble difficile et même idiot de demander à un utilisateur d'ordinateur d'avoir des compétence de développeur ou d'expert en sécurité.

Il faudra cependant d'une manière ou d'une autre arrêter ce genre d'arnaque car il en va de la confiance du grand public envers ce média et donc de la prospérité de tout ce qui en découle (E-Business, création de sites, création de contenu etc.)