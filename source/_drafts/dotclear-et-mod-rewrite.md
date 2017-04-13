---
title: DotClear et mod_rewrite
id: 35
categories:
  - Général
tags:
---

RewriteCond %{REQUEST_URI} !^/themes RewriteCond %{REQUEST_URI} !^/rss.php RewriteCond %{REQUEST_URI} !^/ecrire RewriteCond %{REQUEST_URI} !^/images RewriteRule ^/(.*) /index.php/$1