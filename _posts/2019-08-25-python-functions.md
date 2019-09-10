---
title: Python Functions
description: Python Functions, python functional programming, scoping rules, closures, decorators, generators, coroutines, oops
layout: content
date: 2019-08-26 00:10:00
categories: python
featured: false 
image-url: /images/python-functions.jpg
alt-img: Python Functions
short-description: Python, function is a group of related statements that perform a specific task. Functions help break our program into smaller and modular pieces. Functions make program more organized and manageable.
---

{%
include related-post.html
input = 'python-lambda-functions.html,1. Python Lambda Functions|python-args-kwargs.html,2. Python *args **kwargs'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python Functions</h1>

Python, function is a group of related statements that perform a specific task. Functions help break our program into smaller and modular pieces. Functions make program more organized and manageable.

Substantial programs are broken up into functions for better modularity and ease of maintenance. Python makes it easy to define functions but also incorporates a surprising number of features from functional programming languages


<h3 style="padding-top: 60px; margin-top: -40px;">Function</h3>

Functions are defined with the **def** statement:


{% highlight python %}
def fn_add(x,y):
    return x + y
{% endhighlight %}

The function body is simply a sequence of statements that execute when the function is called. Function is invoked by calling the function followed by a tuple of function arguments. eg: to call the above declared function **fn_add(2,5)**. The order and number of arguments must match those given in the function definition. **TypeError** is raised in case function argument is not matched.

<h3 style="padding-top: 60px; margin-top: -40px;">Function Docstring</h3>
The first string after the function header is called the **docstring** which is short for documentation string. It is used to explain in brief, what a function does. This is optional but is a good programming practice.

This document string can be retrieved by using the **__doc__** attribute of the function.

<div class="card">
<div class="card-body">
{% highlight python %}
>>> def fn_add(x,y):
       """This function accepts two arguments 
       and return the sum of the two arguments""" 
       return x + y
>>>
>>> print(fn_add.__doc__)
This function accepts two arguments 
    and return the sum of the two arguments

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Function Arguments</h3>

Function arguments or parameters are used to pass values to function. Python functions can take variable number of arguments, also function can have default arguments, variable arguments and keyword arguments.

<div class="card">
<div class="card-body">
{% highlight python %}
>>> def fn_add(x,y,z):
       return x + y + z
{% endhighlight %}
</div>
</div>
<br>
Function **fn_add** accepts three arguments. TypeError will be raised if all three values are not passed.

<div class="card">
<div class="card-body">
{% highlight python %}
>>> fn_add(20,30,40)
90
>>> fn_add(2.5,2.5,5)
10.0
>>> fn_add(20,30)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: fn_add() missing 1 required positional argument: 'z'
>>> 
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Function Default Arguments</h3>

Attach default arguments to function parameters by assigning values in the function definition.

When a function defines a parameter with a default value, that parameter and all the
parameters that follow are optional. If values are not assigned to all the optional parame-
ters in the function definition, a SyntaxError exception is raised.

<div class="card">
<div class="card-body">
{% highlight python %}
>>> def fn_split(line,delimiter=','):
...     return line.split(delimiter)
... 
>>> fn_split("Line1, Line2, Line3, Line4")
['Line1', ' Line2', ' Line3', ' Line4']
>>>
>>> fn_split("a:b:c:d:e:f",":")
['a', 'b', 'c', 'd', 'e', 'f']
{% endhighlight %}
</div>
</div>
<br>
Default parameter values are always set to the objects that were supplied as values when the function was defined

<div class="card">
<div class="card-body">
{% highlight python %}
>>> l_delimit = ','
>>> def fn_split(line, delimiter = l_delimit):
...     return line.split(delimiter)

>>> fn_split("a,b,c,d,e,f")
['a', 'b', 'c', 'd', 'e', 'f']
>>>
{% endhighlight %}
</div>
</div>
<br>
Assigning l_delimit = "#" another values will not change the **delimiter** parameter value assigned to the function **fn_split**. 

<div class="card">
<div class="card-body">
{% highlight python %}
>>> l_delimit = '#'
>>> fn_split("a#b#c#d#e#f")
['a#b#c#d#e#f']
>>> 
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Function Position and Keyword Arguments</h3>

When we call a function with some values, these values get assigned to the arguments according to their position. Function arguments can also be supplied by explicitly naming each parameter and specifying a value.These are known as keyword arguments

Positional arguments and keyword arguments can appear in the same function call, provided that all the positional arguments appear first, values are provided for all non-optional arguments, and no argument value is defined more than once

<div class="card">
<div class="card-body">
{% highlight python %}
>>> fn_split(delimiter = "$", line="hello $ world")
['hello ', ' world']
>>> 
{% endhighlight %}
</div>
</div>
<br>
<div class="card">
<div class="card-body">
{% highlight python %}
>>> fn_split("hello $ world", delimiter="$")
['hello ', ' world']
>>>
>>> # keyword arguments should follow positional argument else exception is raised
>>> fn_split(line="hello $ world", "$")
  File "<stdin>", line 1
SyntaxError: positional argument follows keyword argument
{% endhighlight %}
</div>
</div>