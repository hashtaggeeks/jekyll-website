---
title: Python Lists
description: Python Lists, Python list, Python collection, Python Arrays, Python collection data types, list add, list remove, list pop(), delete list, Python copy list, list methods 
layout: content
date: 2019-08-21
categories: python
featured: false 
image-url: /images/python-lists.jpg
alt-img: Python Lists
short-description: Python lists are object that represents an ordered set of objects. A list can hold any Python object, the elements of a list do not all have to be of the same type. Python list is similar to a string, except a string can hold only characters
---

{%
include related-post.html
input = 
'python-string-operation-formatting.html,1. Python Strings|python-dictionary.html, 2. Python Dictionary'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python Lists</h1>

Python lists are object that represents an ordered set of objects. A list can hold any Python object, the elements of a list do not all have to be of the same type. Python list is similar to a string, except a string can hold only characters.


{% highlight Javascript %}

>>> lst = []
>>> type(lst)
<class 'list'>

{% endhighlight %}

<h3 style="padding-top: 60px; margin-top: -40px;">Creating Lists</h3>

There are multiple ways to create Lists in Python.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> lst = []
>>> 
>>> lst.append("hello")
>>> lst.append("Python")
>>> lst.append(100.25)
>>> lst.append([1,2,3,4])
>>> 
>>> lst
['hello', 'Python', 100.25, [1, 2, 3, 4]]

>>> lst = "hello from python lists".split(' ')
>>> lst
['hello', 'from', 'python', 'lists']


>>> emp = {'first':'John','last':' Thomas', 'age':30, 'sal':2000, 'job':'Developer'}
>>> keyList = list(emp.keys())
>>> valList = list(emp.values())
>>> keyList
['first', 'last', 'age', 'sal', 'job']
>>> valList
['John', ' Thomas', 30, 2000, 'Developer']

>>> lst = [x for x in range(0,1000,100)]
>>> lst
[0, 100, 200, 300, 400, 500, 600, 700, 800, 900]

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Slicing Lists</h3>

Lists are indexed by integers, starting with zero. Use the index we can access and modify the items in a list. List index start from 0. So if there are n elements in a list then index will be 0 to (n-1).

<div class="card">
<div class="card-body">
{% highlight python %}

>>> lst = [100, 200, 300, 400, 500, 600, 700, 800, 900]

Access all items
>>> lst[:]
[100, 200, 300, 400, 500, 600, 700, 800, 900]

Access 5th items
>>> lst[4]
[500]

Slice first 3 items
>>> lst[0:3]
[100, 200, 300]
>>> lst[:3]
[100, 200, 300]

Slice last 3 items
>>> lst[-3:]
[700, 800, 900]

Slice every 2nd items
>>> lst[::2]
[100, 300, 500, 700, 900]

Slice every 4th items
>>> lst[::4]
[100, 500, 900]

Slice every 3rd items starting from 1
>>> lst[1::3]
[200, 500, 800]

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Insert Lists Items</h3>

Lists in Python are mutable. It is possible to insert new items to an existing list.

<div class="card">
<div class="card-body">
{% highlight python %}

Append new items to the end of the list. Append adds new items to the end, use Insert to add new items at a specific index
>>> lst = [1,2,3,4,5]
>>> lst.append(6)
>>> lst
[1, 2, 3, 4, 5, 6]

Add 2 lists to create a new list
>>> lst = lst + [7,8,9]
>>> lst
[1, 2, 3, 4, 5, 6, 7, 8, 9]

Multiply lists.
>>> lst = lst * 2
>>> lst
[1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 6, 7, 8, 9]

Insert a new item at specific index position
>>> lst = [1,2,3,4,5]
>>> lst.insert(3,100)
>>> lst
[1, 2, 3, 100, 4, 5]

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Update Lists Items</h3>

After defining a list, it is possible to update the individual items in a list.

<div class="card">
<div class="card-body">
{% highlight python %}

>>> lst = [100,200,300,400,500]
>>> lst
[100, 200, 300, 400, 500]
>>> lst[0] = 1000
>>> lst
[1000, 200, 300, 400, 500]

>>> lst[2:4] = [3000,4000,5000]
>>> lst
[1000, 200, 3000, 4000, 5000, 500]


Check the index of a list item and change its value. If the item is not found then ValueError will be raised
>>> lst.index(3000)
2
>>> lst[lst.index(3000)] = 6000
>>> lst
[1000, 200, 6000, 4000, 5000, 500]


{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Delete Lists Items</h3>

The pop method removes an item at the index provide. This method will also return the item removed from the list. If an index is not provided, it will by default remove the item at the last index.

<div class="card">
<div class="card-body">
{% highlight python %}

>>> lst = [100,200,300,400,500]
>>> valDeleted = lst.pop()
>>> lst
[100, 200, 300, 400]
>>> valDeleted
500

>>> valDeleted = lst.pop(2)
>>> lst
[100, 200, 400]
>>> valDeleted
300

Remove all items from the list
>>> lst.clear()
>>> lst
[]


{% endhighlight %}
</div>
</div>



<h3 style="padding-top: 60px; margin-top: -40px;">Sort, Reverse and Count List</h3>

The sort method sorts and alters the original list in place. The count method counts the number of times a value occurs in a .

<div class="card">
<div class="card-body">
{% highlight python %}

>>> lst = [100,20,50,10,500,40,1000]
>>> lst
[100, 20, 50, 10, 500, 40, 1000]
>>> lst.sort()
>>> lst
[10, 20, 40, 50, 100, 500, 1000]


>>> lst.sort(reverse=True)
>>> lst
[1000, 500, 100, 50, 40, 20, 10]

>>> lst.reverse()
>>> lst
[10, 20, 40, 50, 100, 500, 1000]

>>> lst = [100,20,50,10,500,40,10,20,200,400,300]
>>> lst.count(10)
2

{% endhighlight %}
</div>
</div>