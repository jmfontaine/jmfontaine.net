---
title: MySQL et les valeurs monétaires
id: 688
categories:
  - Développement Web
date: 2007-02-16 14:23:11
tags:
---

Pour stocker des valeurs monétaires dans une base de données, on a généralement le réflexe d'utiliser un champ de type FLOAT. Ce n'est cependant pas une bonne idée, en tout cas avec MySQL.

En effet, [la documentation](http://dev.mysql.com/doc/refman/5.0/en/numeric-types.html) indique que MySQL arrondit les valeurs lors du stockage ce qui veux dire que la valeur récupérée n'est pas forcément exactement celle stockée ce qui est très gênant dans le cas de valeurs monétaires.
 > MySQL performs rounding when storing values, so if you insert 999.00009 into a FLOAT(7,4)  column, the approximate result is 999.0001. 

Il est préférable d'utiliser un champ de type DECIMAL comme préconisé dans la documentation de MySQL&nbsp;:
 > The DECIMAL and NUMERIC data types are used to store exact numeric data values. In MySQL, NUMERIC is implemented as DECIMAL. These types are used to store values for which it is important to preserve exact precision, for example with monetary data.