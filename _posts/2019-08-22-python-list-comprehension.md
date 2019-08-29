---
title: Python List Comprehension
description: Python List Comprehension, Python list, Python collection, Python Arrays, Python functions, python lambda
layout: content
date: 2019-08-21
categories: python
featured: false 
image-url: /images/python-list-comprehension.jpg
alt-img: Python List Comprehension
short-description: Python lists comprehension is an operation of applying a function to all of the items of a list, creating a new list with the results. During this transformation, elements can be conditionally included in the new list and each element can be transformed as needed.
---

{%
include related-post.html
input = 
'python-lists.html,1. Python Lists|python-dictionary.html, 2. Python Dictionary'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python List Comprehension</h1>

Python lists comprehension is an operation of applying a function to all of the items of a list, creating a new list with the results. During this transformation, elements can be conditionally included in the new list and each element can be transformed as needed. Python list comprehension faster than normal functions and loops for creating list. Every list comprehension can be rewritten in for loop, but every for loop can’t be rewritten in the form of list comprehension.

Basic Syntax

{% highlight Javascript %}
[expression for item1 in iterable1 if condition1 
            for item2 in iterable2 if condition2 
            ...
            for itemN in iterableN if conditionN ]
{% endhighlight %}


<h3 style="padding-top: 60px; margin-top: -40px;">Creating List using comprehension</h3>

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> x = [i for i in range(5)]
>>> x
[0, 1, 2, 3, 4]

{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">List Comprehension</h3>

Finding cube of items in a list using for loop

<div class="card">
<div class="card-body">

{% highlight Javascript %}

>>> x = [print(f'{"*"*i:^20}') for i in range(20) if i%2==1]
         *          
        ***         
       *****        
      *******       
     *********      
    ***********     
   *************    
  ***************   
 *****************  
******************* 

>>> def fn_cube(x):
...     return x*x*x
... 
>>> my_list = [1,2,3,4,5,6,7,8,9]
>>> my_list_square =list()
>>> 
>>> for i in my_list:
...     my_list_square.append(fn_cube(i))
... 
>>> print(my_list_square)
[1, 8, 27, 64, 125, 216, 343, 512, 729]

{% endhighlight %}
</div>
</div>
<br>
Finding cube of items in a list using comprehension

<div class="card">
<div class="card-body">

{% highlight Javascript %}

>>> my_list_square = [fn_cube(i) for i in my_list]
>>> print(my_list_square)
[1, 8, 27, 64, 125, 216, 343, 512, 729]

{% endhighlight %}
</div>
</div>
<br>
Removing string elements from list

<div class="card">
<div class="card-body">

{% highlight Javascript %}

>>> my_list = [1,200,23.00,'Hello',50, "world", 3.14]
>>> [i for i in my_list if type(i) != str]
[1, 200, 23.0, 50, 3.14]

{% endhighlight %}
</div>
</div>
<br>
Reversing names of scientists list using comprehension

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> scientists = ["Isaac Newton", "Albert Einstein", "Niels Bohr", 
...               "Marie Curie","Charles Darwin", "Louis Pasteur", 
...               "Galileo Galilei", "Margaret Mead"]
>>> 
['Isaac Newton',
 'Albert Einstein',
 'Niels Bohr',
 'Marie Curie',
 'Charles Darwin',
 'Louis Pasteur',
 'Galileo Galilei',
 'Margaret Mead']

>>> reversed_names = [f'{s.split(" ")[1]}, {s.split(" ")[0]}' for s in scientists]
>>> reversed_names
['Newton, Isaac',
 'Einstein, Albert',
 'Bohr, Niels',
 'Curie, Marie',
 'Darwin, Charles',
 'Pasteur, Louis',
 'Galilei, Galileo',
 'Mead, Margaret']

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Using conditions in list comprehension</h3> 

<div class="card">
<div class="card-body">

{% highlight Javascript %}

>>> my_list = [1,2,3,4,5,6,7,8,9,0]
>>> my_even = [i for i in my_list if i%2==0]
>>> my_even
[2, 4, 6, 8, 0]

>>> my_even_odd = [f'{i} is even' if i%2==0 else f'{i} is odd' for i in my_list ]
>>> my_even_odd
['1 is odd',
 '2 is even',
 '3 is odd',
 '4 is even',
 '5 is odd',
 '6 is even',
 '7 is odd',
 '8 is even',
 '9 is odd',
 '0 is even']

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Nested Comprehensions</h3>

<div class="card">
<div class="card-body">

{% highlight Javascript %}
>>> [x+y for x in [10,30,50] for y in [20,40,60]]
[30, 50, 70, 50, 70, 90, 70, 90, 110]
>>> [[x,y,z] for x in [1,2,3] for y in [4,5] for z in [6,7]]
[[1, 4, 6],
 [1, 4, 7],
 [1, 5, 6],
 [1, 5, 7],
 [2, 4, 6],
 [2, 4, 7],
 [2, 5, 6],
 [2, 5, 7],
 [3, 4, 6],
 [3, 4, 7],
 [3, 5, 6],
 [3, 5, 7]]

{% endhighlight %}

</div>
</div>
<br>
Prime numbers using list comprehension
<div class="card">
<div class="card-body">

{% highlight Javascript %}

>>> my_list = [x for x in range(50)]
>>> [x for x in my_list if x>1 and x not in [i for i in my_list for x in range(2,i) if i%x==0]]
[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
>>> 
{% endhighlight %}

</div>
</div>