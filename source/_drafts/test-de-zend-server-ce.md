---
title: Test de Zend Server CE
id: 832
categories:
  - PHP
tags:
---

<pre>  1\. Open terminal and login as root root sudo -i (très important, pas de sudo)   2\. Edit sources list nano /etc/apt/sources.list   3\. Add row: deb http://repos.zend.com/deb/ce ce non-free   4\. Get and install key: wget http://repos.zend.com/deb/zend.key -O- |apt-key add -   5\. Update repository: apt-get update   6\. Install Zend Server CE: aptitude install zend-ce</pre>