---
title: Bug Firefox ?
id: 452
categories:
  - Général
tags:
---

&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt; &lt;html xmlns="http://www.w3.org/1999/xhtml" lang="en_US" xml:lang="en_US"&gt;
 <pre>   &lt;head&gt;        &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;        &lt;title&gt;Test&lt;/title&gt;        &lt;script type="text/javascript"&gt;            function showHide(id) {                var element = document.getElementById(id);                element.style.display = (element.style.display == 'none') ? 'block' : 'none';            }        &lt;/script&gt;    &lt;/head&gt;</pre> <pre>   &lt;body&gt;        &lt;form action="link" method="post"&gt;            &lt;fieldset&gt;                &lt;input type="checkbox" id="show_hide" value="1" onchange="showHide('row');" /&gt;&lt;label for="show_hide"&gt;Show / hide second row&lt;/label&gt;            &lt;/fieldset&gt;        &lt;/form&gt;        &lt;table border="1"&gt;            &lt;tr&gt;                &lt;td&gt;Column 1&lt;/td&gt;                &lt;td&gt;Column 2&lt;/td&gt;                &lt;td&gt;Column 3&lt;/td&gt;                &lt;td&gt;Column 4&lt;/td&gt;                &lt;td&gt;Column 5&lt;/td&gt;                &lt;td&gt;Column 6&lt;/td&gt;            &lt;/tr&gt;            &lt;tr&gt;                &lt;td id="row" colspan="6"&gt;Foo bar&lt;/td&gt;            &lt;/tr&gt;        &lt;/table&gt;    &lt;/body&gt;</pre> 

&lt;/html&gt;