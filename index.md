---
title: Python Pandas Tutorial
description: Pandas tutorial covering how to install anaconda, create dataframe, how to query dataframe, how to filter dataframe, add delete rows to dataframe, join multiple dataframe
layout: default
---

<div id="top" class="container">
<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron jumbotron-fluid">
  <div class="container-fluid">
    <h1 class="display-6">Python Pandas!</h1>
    <p><a href="http://pandas.pydata.org/" target="_blank">Pandas</a>&nbsp;is a data analysis Python library.
      Started by&nbsp;<a href="http://wesmckinney.com/pages/about.html"  target="_blank">Wes McKinney</a>&nbsp;in 2008 out
      of a need for a powerful and flexible quantitative analysis tool, pandas has grown into one of the
      most popular Python libraries. It has an extremely active&nbsp;<a
        href="https://github.com/pydata/pandas/graphs/contributors"  target="_blank">community of contributors</a>.</p>
    <p>Pandas is built on top of two core Python libraries.</p>
    <ul>
      <li>NumPy&nbsp;for mathematical operations</li>
      <li>matplotlib&nbsp;for data visualization</li>
    </ul>
    <p>Pandas package comes with several data structures that can be used for many different data
      manipulation tasks.</p>
  </div>
</div>

{% for tp in site.data.index.topics%}
<p>
<div class="row">
<div class="col-xl-9">
<h3><a href="{{tp.url | prepend:site.baseurl}}">{{tp.header}}</a></h3>
{% for con in tp.content%}
<p>{{con}}</p>
{% endfor %}
</div>
<div class="col-xl-3 hidden-xs-up">
<img src="{{tp.image-url | prepend: site.baseurl}}" class="featurette-image img-fluid d-none d-xl-block" alt="{{tp.alt-img}}">
</div>
</div>
{% endfor %}

<br>
<!--
You can use HTML elements in Markdown, such as the comment element, and they won't be affected by a markdown parser. However, if you create an HTML element in your markdown file, you cannot use markdown syntax within that element's contents.
-->