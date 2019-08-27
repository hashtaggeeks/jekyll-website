---
title: Python Sets
description: Python Sets, unordered collection, no index, python data structures, python loops, set loops, set union, set intersect, symmetric_difference(), symmetric_difference_update(),isdisjoint(), issubset()
layout: content
date: 2019-08-23 00:01:20
categories: python
featured: false 
image-url: /images/python-sets.jpg
alt-img: Python Sets
short-description: Python Sets is used to contain an unordered collection of objects. You cannot access items in a set by referring to an index, since sets are unordered the items has no index. 
---

{%
include related-post.html
input = 'python-dictionary.html,1. Python Dictionary|python-tuples.html,2. Python Tuples'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python Sets</h1>

Python Sets is used to contain an unordered collection of objects. You cannot access items in a set by referring to an index, since sets are unordered the items has no index. Elements of a set are never duplicated

{% highlight Javascript %}
>>> s = set()
>>> type(s)
<class 'set'>
{% endhighlight %}

<h3 style="padding-top: 60px; margin-top: -40px;">Creating Sets</h3>

Sets are created using the **set()** class or enclosing items inside **{}**. Elements of a set are never duplicated

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s = {'this', 'is', 'a', 'python', 'set'}
>>> s
{'this', 'is', 'python', 'a', 'set'}

# Note that 'l' appears only once. 
>>> s1  = set('hello world')
>>> s1
{'d', 'w', ' ', 'h', 'r', 'e', 'l', 'o'}


{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Access Items</h3>

Since sets are unordered and non indexed, items cannot be accessed using the index. Loop can be used to access Python set items.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> for i in s:
...     print(i)
... 
this
is
python
a
set

>>> 'python' in s
True

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Adding Items</h3>

Python set **.add()** method can be used to add new items.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s.add('hello')
>>> s
{'this', 'is', 'python', 'a', 'hello', 'set'}
>>> s.add('python')
>>> s
{'this', 'is', 'python', 'a', 'hello', 'set'}

{% endhighlight %}
</div>
</div>
<br>
To add more than one item to a set **.update()** method can be used

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s.update(['adding','multiple', 'items', 'to','python', 'set'])
>>> s
{'this', 'adding', 'to', 'is', 'multiple', 'items', 'python', 'a', 'hello', 'set'}

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Deleting Items</h3>

Python Set items can be removed using **.remove()**  or **.discard()** methods. The difference is that if the item is not found **.remove()** will raise exception.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s
{'this', 'adding', 'to', 'is', 'multiple', 'items', 'python', 'a', 'hello', 'set'}

>>> s.remove('this')
>>> s
{'adding', 'to', 'is', 'multiple', 'items', 'python', 'a', 'hello', 'set'}
>>> s.remove('this')
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
KeyError: 'this'

>>> s.discard('python')
>>> s
{'adding', 'to', 'is', 'multiple', 'items', 'a', 'hello', 'set'}
>>> s.discard('python')
>>>

{% endhighlight %}
</div>
</div>
<br>
**.clear()** method will remove all items from the set and empty set will remain.

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> s.clear()
>>> s
set()

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Union Sets</h3>

Python set **.union()** method can be used to union 2 or more sets

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s1 = set('12345')
>>> s2 = set('1234567890')
>>> s3 = set('1234hello')
>>> s1.union(s2,s3)
{'7', '8', 'h', '1', '2', 'e', '3', '4', '6', '9', '0', 'l', 'o', '5'}

>>> set('123456').union(set('1234567890'))
{'8', '2', '3', '4', '6', '0', '7', '1', '9', '5'}
>>> set('123456').union(set('1234567890'), set('hello123456'))
{'8', '2', '3', '4', '6', '0', '7', 'h', '1', 'e', '9', 'l', 'o', '5'}

{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Intersect Sets</h3>

Python set **.intersection()** method can be used to intersect 2 or more sets

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s1 = set('12345')
>>> s2 = set('1234567890')
>>> s3 = set('1234hello')
>>> s1.intersection(s2,s3)
{'3', '1', '4', '2'}

>>> set('123456').union(set('1234567890'))
{'8', '2', '3', '4', '6', '0', '7', '1', '9', '5'}
>>> set('123456').union(set('1234567890'), set('hello123456'))
{'8', '2', '3', '4', '6', '0', '7', 'h', '1', 'e', '9', 'l', 'o', '5'}

{% endhighlight %}
</div>
</div>
<br>
Python set **.intersection_update()** method can be used to intersect 2 or more sets and remove the items in the set that are not present in the set.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s1
{'1', '2', '3', '4', '5'}
>>> s2
{'7', '8', '1', '2', '3', '4', '6', '9', '0', '5'}
>>> s2.intersection_update(s1)
>>> s2
{'1', '2', '3', '4', '5'}

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Difference Sets</h3>

Python set **.difference()** method can be used to find difference between 2 or more sets

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s1 = set('12345')
>>> s2 = set('1234567890')
>>> s3 = set('1234hello')
>>> 
>>> s2.difference(s1)
{'7', '8', '6', '9', '0'}
>>> s3.difference(s2)
{'e', 'h', 'l', 'o'}
>>> 

{% endhighlight %}
</div>
</div>
<br>
Python set **.difference_update()** method can be used to removes the items in this set that are also included in another, specified set

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s1 = set('12345')
>>> s2 = set('1234567890')
>>> s3 = set('1234hello')
>>> 
>>> s2
{'7', '8', '1', '2', '3', '4', '6', '9', '0', '5'}
>>> s2.difference_update(s1)
>>> s2
{'7', '8', '6', '9', '0'}

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Symmetric Difference Sets</h3>

Python set **.symmetric_difference()** method can be used to find symmetric difference between 2 sets

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> s1={'red','blue'}
>>> s2={'red','green','orange'}
>>> s3={'green','black','white'}
>>> 
>>> s1.symmetric_difference(s2)
{'green', 'orange', 'blue'}
>>> s2.symmetric_difference(s3)
{'orange', 'red', 'black', 'white'}

{% endhighlight %}
</div>
</div>