---
title: Python Generators
description: Python Yield,Python List Comprehension, Python Generators, Python Iteration, Python Lists, Python Dictionary, Python for loop
layout: content
date: 2019-08-24  01:01:20
categories: python
featured: false 
image-url: /images/python-generators.jpg
alt-img: Python Generators
short-description: Python generator is a function that produces a sequence of values for use in iteration. Generators generate values one at a time from a given sequence, instead of giving the entirety of the sequence at once.
---

{%
include related-post.html
input = 'python-date-time.html,1. Python DateTime'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python Generators</h1>

Python generator is a function that produces a sequence of values for use in iteration. Generators generate values one at a time from a given sequence, instead of giving the entirety of the sequence at once.

If a function uses the **yield** keyword, it defines an object known as a generator. A generator function returns a generator object. The generator function executes when the **__next__()** method is called.

<h3 style="padding-top: 60px; margin-top: -40px;">Python Function vs Generator</h3>

A generator function is just like a regular function which uses the yield keyword instead of return. The code of a generator function is not executed when the function is called, instead it returns a generator object. When next() is invoked, the generator function executes statements until it reaches a
yield statement.


<div class="card">
<div class="card-header">Normal Function</div>
<div class="card-body">
{% highlight Javascript %}

>>> def fn_normal_function(n):
...     return n
... 
>>> x = fn_normal_function(1)
>>> type(x)
<class 'int'>

{% endhighlight %}
</div>
</div>
<br>

<div class="card">
<div class="card-header">Generator Function</div>
<div class="card-body">
{% highlight Javascript %}

>>> def fn_generator_function(n):
...     yield n
... 
>>> x = fn_generator_function(1)
>>> type(x)
<class 'generator'>

{% endhighlight %}
</div>
</div>



<h3 style="padding-top: 60px; margin-top: -40px;">Create Generator</h3>

Define a function with **yield** statement and call the next() method to execute the function. **StopIteration** error is raised, when the generator has not more values to return.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> def fn_generator_function(n):
...     for i in range(n):
...         yield i
... 
>>> x = fn_generator_function(5)
>>> next(x)
0
>>> next(x)
1
>>> next(x)
2
>>> next(x)
3
>>> next(x)
4
>>> next(x)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
>>> 
{% endhighlight %}

</div>
</div>
<br>
**close()** can be called to break the generator function.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> def fn_generator_function(n):
...     for i in range(n):
...         yield i
... 
>>> x = fn_generator_function(5)
>>> next(x)
0
>>> next(x)
1
>>> next(x)
2
>>> x.close()
>>> next(x)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration

{% endhighlight %}

</div>
</div>
<br>
**For loop** can be used to iterate generator.

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> x = fn_generator_function(5)
>>> for i in x:
...     print(i)
... 
0
1
2
3
4
{% endhighlight %}

</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Generator Expression</h3>

Generator expression is similar to list comprehension, the difference is that list comprehension returns a list but generator expression returns a generator. Generator expression is surrounded by parentheses, rather than brackets.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> lc_cube = [pow(n,3) for n in range(5)]
>>> gn_cube = (pow(n,3) for n in range(5))
>>> type(lc_cube)
<class 'list'>
>>> type(gn_cube)
<class 'generator'>

>>> next(gn_cube)
0
>>> next(gn_cube)
1
>>> next(gn_cube)
8
>>> next(gn_cube)
27
>>> next(gn_cube)
64

>>> gn_cube = (pow(n,3) for n in range(5))
>>> for x in gn_cube:
...     x
... 
0
1
8
27
64
>>> 


{% endhighlight %}
</div>
</div>