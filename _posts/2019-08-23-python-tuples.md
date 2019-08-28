---
title: Python Tuples
description: Python Tuples, Python collection, Python data structure, python lists, tuples are immutable, indexing, slicing, concatenation 
layout: content
date: 2019-08-23  01:01:20
categories: python
featured: false 
image-url: /images/python-tuples.jpg
alt-img: Python Tuples
short-description: Python tuple is a sequence of immutable Python objects. Tuples are sequences, just like lists. The differences between tuples and lists are, the tuples cannot be changed unlike lists and tuples use parentheses, whereas lists use square brackets
---

{%
include related-post.html
input = 'python-sets.html,1. Python Sets|python-date-time.html, 2. Python DataTime'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python Tuples</h1>

Python tuple is a sequence of immutable Python objects. Tuples are sequences, just like lists. The differences between tuples and lists are, the tuples cannot be changed unlike lists and tuples use parentheses, whereas lists use square brackets.

Tuple is best viewed as a single object consisting of several parts, not as a collection of distinct objects to which you might insert or remove items.

Because tuples are immutable, they use a more compact representation where there is no extra space

{% highlight Javascript %}
>>> tup =()
>>> type(tup)
<class 'tuple'>
{% endhighlight %}

<h3 style="padding-top: 60px; margin-top: -40px;">Creating Tuple</h3>

Create a tuple by enclosing a group of values in parentheses.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> tup = ('this', 'is', 'a', 'python', 'tuple')
>>> tup
('this', 'is', 'a', 'python', 'tuple')
>>> 

{% endhighlight %}
</div>
</div>



<h3 style="padding-top: 60px; margin-top: -40px;">Accessing Tuple items</h3>

Tuple items can be accessed by referring the index, this is similar to Lists.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> tup = ('this', 'is', 'a', 'python', 'tuple')
>>> len(tup)
5
>>> tup[0]
'this'
>>> tup[0:3]
('this', 'is', 'a')
>>> tup[-2:]
('python', 'tuple')
>>> tup[2:4]
('a', 'python')
>>> tup[::2]
('this', 'a', 'tuple')


{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Basic Tuples Operations</h3>

Tuples can be concatenated and multiplied to create new tuples. Using the **in** condition items can be checked for existence.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> (1,2,3,4)+('a','b','c','d')
(1, 2, 3, 4, 'a', 'b', 'c', 'd')

>>> (1,'a',[1,2,3,4]) + ({'name':'John','age':23},)
(1, 'a', [1, 2, 3, 4], {'name': 'John', 'age': 23})

>>> (1,2,3,4,5)*2
(1, 2, 3, 4, 5, 1, 2, 3, 4, 5)
>>> (1,2,3,4,5)*3
(1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5)

>>> tup = ('this', 'is', 'a', 'python', 'tuple')
>>> 'python' in tup
True

{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Looping Tuple</h3>

**for** loop can be used to iterate through tuples easily

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> for i in tup:
...     print(i)
... 
this
is
a
python
tuple


>>> i=0
>>> while i < len(tup):
...     print(tup[i])
...     i+=1
... 
this
is
a
python
tuple


{% endhighlight %}
</div>
</div>