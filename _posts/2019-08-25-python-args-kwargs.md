---
title: Python Args and Kwargs
description: Python \*args and \*\*kwargs, Python Functions, python functional programming, scoping rules, closures, decorators, generators, coroutines, oops
layout: content
date: 2019-08-26 00:30:00
categories: python
featured: false 
image-url: /images/python-args-kwargs.jpg
alt-img: Python Functions
short-description: Python function can accept a variable number of parameters if an asterisk ( * ) is added to the last parameter name, similarly Function arguments can also be supplied by explicitly naming each parameter and specifying a value.These are known as keyword arguments
---

{%
include related-post.html
input = 'python-functions.html,1. Python Functions'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python *args and **kwargs</h1>

Python function can accept a variable number of parameters if an asterisk ( * ) is added to the last parameter name, similarly function arguments can also be supplied by explicitly naming each parameter and specifying a value.These are known as keyword arguments

If the last argument of a function definition begins with \*\*, all the additional keyword arguments (those that don’t match any of the other parameter names) are placed in a dictionary and passed to the function. You can combine extra keyword arguments with variable-length argument lists, as long
as the ** parameter appears last.



<h3 style="padding-top: 60px; margin-top: -40px;">Variable length arguments *args</h3>

A function can accept a variable number of parameters if an asterisk ( * ) is added to the last parameter name

<div class="card">
<div class="card-body">
{% highlight python %}
>>> def fn_variable_args(x, y, *args):
...     print(f'value of x is {x}')
...     print(f'value of y is {y}')
...     print(f'value of *args is {args}')
... 
>>> fn_variable_args(100,200,300,400,500)
value of x is 100
value of y is 200
value of *args is (300, 400, 500)
>>>
{% endhighlight %}
</div>
</div>
<br>
Use for loop to access the elements in the \*args variable 
<div class="card">
<div class="card-body">
{% highlight python %}

>>> def fn_args(*args):
...     for i in args:
...         print(f'values passed = {i}')
... 
>>> fn_args(1,2,3,'name',[100,200],{'name':'john', 'age':30})
values passed = 1
values passed = 2
values passed = 3
values passed = name
values passed = [100, 200]
values passed = {'name': 'john', 'age': 30}
>>>
{% endhighlight %}
</div>
</div>
<br>
<div class="card">
<div class="card-body">
{% highlight python %}
>>> def fn_sum(x,y,z,*args):
        return x + y + z + sum(args)
>>> fn_sum(10,10,10,10,10)
>>> 50
>>>
{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Keyword arguments **kwargs</h3>


If the last argument of a function definition begins with ** , all the additional keyword arguments (those that don’t match any of the other parameter names) are placed in a dictionary and passed to the function.This can be a useful way to write functions that accept a large number of potentially open-ended configuration options that would be too unwieldy to list as parameters


<div class="card">
<div class="card-body">
{% highlight python %}
>>> def fn_variable_args(x, y, *args, **kwargs):
...     print(f'value of x is {x}')
...     print(f'value of y is {y}')
...     print(f'value of *args is {args}')
...     print(f'value of *kwargs is {kwargs}')
... 
>>> fn_variable_args(100,200,300,400,500,name='John',age=30, sal=2000)
value of x is 100
value of y is 200
value of *args is (300, 400, 500)
value of *kwargs is {'name': 'John', 'age': 30, 'sal': 2000}
>>> 
{% endhighlight %}
</div>
</div>
<br>
Use for loop to access the elements in the *kwargs variable

<div class="card">
<div class="card-body">
{% highlight python %}
>>> def fn_kwargs(**kwargs):
...     for (key,val) in kwargs.items():
...         print(f'Key = {key} and value = {val}')
... 
>>> fn_kwargs(empid=1001, name='John',age=30, sal=2000, mgrid=2002, deptno=30, bonus='2.3%')
Key = empid and value = 1001
Key = name and value = John
Key = age and value = 30
Key = sal and value = 2000
Key = mgrid and value = 2002
Key = deptno and value = 30
Key = bonus and value = 2.3%
>>> 
{% endhighlight %}
</div>
</div>