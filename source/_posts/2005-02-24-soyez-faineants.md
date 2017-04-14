---
title: Soyez fainéants !
id: 367
categories:
  - PHP
date: 2005-02-24 13:25:14
tags:
---

<q>Be Lazy! The greatest inefficiencies come from solving problems you will never have.</q>

Cette phrase tirée des [transparents](http://talks.php.net/show/vankey05 "Pragmatic PHP") d'une conférence donnée par Rasmus Lerdorf en janvier dernier, signifie à peu de choses près&nbsp;: _Soyez fainéants&nbsp;! Les plus grandes inefficacités viennent de la résolution de problèmes que vous n'aurez jamais_.

Cette phrase à première vue provocatrice met, en fait, en lumière un problème très répandu chez les développeurs&nbsp;: la quête du code parfait qui va s'adapter à toutes les situations.

Entendons nous bien, je ne jette la pierre à personne; moi même, cela ne fait pas si longtemps que j'ai pris conscience du problème. Mon but est précisément de permettre à ceux qui y croient encore de comprendre plus tôt pourquoi cette quête est vaine et contre productive.

A première vue, écrire un code capable de gérer tous les cas est LA solution. Seulement en pratique, on s'apercoit très vite que cela n'est jamais possible car les besoins et les contextes changent et tous ces changements ne peuvent pas être prévus. De plus avec l'évolution de votre propre niveau de compétence, certains choix vous sembleront inappropriés et vous souhaiterez revenir dessus. Vous aurez ainsi passé un temps non négligeable sur du code qui n'aura finalement jamais servi.

La philosophie que prône ici Rasmus Lerdorf, et qui se rapproche fortement de celle de l'[eXtreme Programming](http://xp-france.net/ "XP-France, développez à la vitesse du changement…!"), est qu'il faut se limiter à coder le strict nécessaire. Ainsi, on diminue le volume du code, et donc le nombre de bugs potentiels, tout en évitant de perdre du temps à développer des parties qui ne serviront jamais.