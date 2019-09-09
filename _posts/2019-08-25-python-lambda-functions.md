---
title: Python lambda Functions
description: Python lambda Functions, Python data structures, Python List Comprehension, Python Generators, Python Iteration, Python Lists, Python Dictionary, Python for loop
layout: content
date: 2019-08-25
categories: python
featured: false 
image-url: /images/python-lambda-functions.jpg
alt-img: Python lambda Functions
short-description: Python lambda functions are anonymous in-line function consisting of a single expression which is evaluated when the function is called.
---

{%
include related-post.html
input = 'python-generators.html,1. Python Generators'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python lambda Functions</h1>

Python lambda functions are anonymous in-line function consisting of a single expression which is evaluated when the function is called. Lambda functions are also referred to as lambda abstractions, a direct reference to the abstraction model of <a href='https://en.wikipedia.org/wiki/Alonzo_Church' target="_">Alonzo Church’s</a> original creation. Python is not inherently a functional language, but it adopted some functional concepts using map(), filter(), reduce(), and the lambda operator. 

<b>A lambda function can’t contain any statements. In a lambda function, statements like return, pass, assert, or raise will raise a SyntaxError exception</b>

Basic Syntax

{% highlight python %}
lambda argument: manipulate(argument)
{% endhighlight %}


<h3 style="padding-top: 60px; margin-top: -40px;">Creating lambda functions</h3>

An anonymous function is created with the lambda keyword. Using the python interpretor interactive "_" feature the function can be accessed.

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> lambda x: x*x
<function <lambda> at 0x7efe48d36bf8>
>>> _(4)
16
>>>
>>> (lambda x, y: x + y)(2, 3)
5
>>>
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Named lambda functions</h3>

Lambda functions can be named and used like normal python functions.

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> fn_square = lambda x: x*x
>>> fn_square(4)
16
>>> type(fn_square)
<class 'function'\>
>>>
{% endhighlight %}
</div>
</div>
<br>

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> fn_odd_even = lambda n: f'Number {n} is even' if(n%2==0) else f'Number {n} is odd'
>>> fn_odd_even(3)
'Number 3 is odd'
>>> fn_odd_even(2)
'Number 2 is even'
>>>
{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Lambda higher-order functions</h3>

Python lambda function can be a higher-order function by taking a function (normal or lambda) as an argument

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> fn_cube = lambda x,fn : x*fn(x)
>>>
>>> fn_cube(5,lambda x:x*x)
125
>>>
>>> fn_square = lambda x: x*x
>>> fn_cube(3,fn_square)
27
>>>
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Lambda List Comprehension</h3>

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> [(lambda x,y: f'{x} * {y} = {x*y}')(i,j) for i in range(1,5) for j in range(1,3)]
>>> ['1 * 1 = 1',
 '1 * 2 = 2',
 '2 * 1 = 2',
 '2 * 2 = 4',
 '3 * 1 = 3',
 '3 * 2 = 6',
 '4 * 1 = 4',
 '4 * 2 = 8']
{% endhighlight %}
</div>
</div>