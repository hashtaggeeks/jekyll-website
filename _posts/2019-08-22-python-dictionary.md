---
title: Python Dictionary
description: Python Dictionary, Python collection, Python data structure, python unordered collection, python collection, python key value, loop dictionary, dictionary methods
layout: content
date: 2019-08-22
categories: python
featured: false 
image-url: /images/python-dictionary.jpg
alt-img: Python Dictionary
short-description: Python Dictionaries are associative array or hash table that contains objects indexed by keys. Most common type of keys are Strings, many other Python objects, including numbers and tuples can be used as keys.
---

{%
include related-post.html
input = 'python-lists.html,1. Python Lists|python-tuples.html,2. Python Tuples'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python Dictionary</h1>

Python Dictionaries are associative array or hash table that contains objects indexed by keys. Most common type of keys are Strings, many other Python objects, including numbers and tuples can be used as keys. Dictionaries are also used as a container for performing fast lookups on unordered data.

Dictionaries are mutable, dictionary elements can be added or removed as needed. Python dictionary can contain another dictionary. The main difference between list and dictionary is lists are ordered sets of objects, whereas dictionaries are unordered sets.

Keys of a Dictionary must be unique and of immutable data type such as Strings, Integers and tuples, but the key-values can be repeated and be of any type.

{% highlight Javascript %}

>>> emp = {}
>>> type(emp)
<class 'dict'>

>>> emp=dict()
>>> type(emp)
<class 'dict'>

{% endhighlight %}

<h3 style="padding-top: 60px; margin-top: -40px;">Creating Dictionary</h3>

Creating dictionary with values, this can be one by enclosing the values in **{}**

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp = {'name':'John', 'age':23, 'sal':2000, 'comm': 2.3}
>>> emp
{'name': 'John', 'age': 23, 'sal': 2000, 'comm': 2.3}

>>> emp = dict({'name':'John', 'age':23, 'sal':2000, 'comm': 2.3})
>>> emp
{'name': 'John', 'age': 23, 'sal': 2000, 'comm': 2.3}

>>> emp = dict([('name','John'), ('age',23), ('sal',2000), ('comm', 2.3)])
>>> emp
{'name': 'John', 'age': 23, 'sal': 2000, 'comm': 2.3}

>>> emp = dict(name='John', age=23, sal=2000, comm= 2.3)
>>> emp
{'name': 'John', 'age': 23, 'sal': 2000, 'comm': 2.3}

>>> emp ={}
>>> emp['name'] = 'John'
>>> emp['age'] = 23
>>> emp['sal'] = 2000
>>> emp['comm'] = 2.3
>>> emp
{'name': 'John', 'age': 23, 'sal': 2000, 'comm': 2.3}


{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Accessing Items</h3>

Key-indexing operator is used to access the dictionary values. Referring to its key name, inside square brackets values can be retrieved. The .get() method can also be used to access the dictionary elements.


<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp={
...     'name':'John',
...     'age':23,
...     'sal':2000,
...     'comm':2.3,
...     'address':[
...         {
...             'address-1':'5037 Diam Rd.',        
...             'address-2':'Daly City Ohio 90255'
...         },
...         {
...             'address-1':'666-4366 Lacinia Avenue',        
...             'address-2':'Idaho Falls Ohio 19253'            
...         }
...     ]
... }

>>> emp.get('name')
'John'

>>> emp['name']
'John'

{% endhighlight %}
</div>
</div>
<br>
To access list items inside a dictionary, use the list index.

<div class="card">
<div class="card-body">
{% highlight Javascript %}


>>> emp['address'][0]['address-1']
'5037 Diam Rd.'
>>> emp['address'][0]['address-2']
'Daly City Ohio 90255'


{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Adding Items</h3>

Adding a new element to Python dictionary can be done by defining a value along with new key. While adding a value, if the key value already exists, the value gets updated otherwise a new Key with the value is added to the Dictionary

Multiple elements can be added using the **.update()** method


<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp['dept'] = 30

>>> emp.update({'deptno':30,'mgr':1145})
>>> emp
{'name': 'John',
 'age': 23,
 'sal': 2000,
 'comm': 2.3,
 'address': [{'address-1': '5037 Diam Rd.',
   'address-2': 'Daly City Ohio 90255'},
  {'address-1': '666-4366 Lacinia Avenue',
   'address-2': 'Idaho Falls Ohio 19253'}],
 'deptno': 30,
 'mgr': 1145}

{% endhighlight %}
</div>
</div>
<br>

Adding new address to the list inside the emp dictionary using the **.append()** list method.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> new_address={'address-1':'935-1670 Neque. St.', 'address-2':'Centennial Delaware 48432'}
>>> emp['address'].append(new_address)
>>> emp
{'name': 'John',
 'age': 23,
 'sal': 2000,
 'comm': 2.3,
 'address': [{'address-1': '5037 Diam Rd.',
   'address-2': 'Daly City Ohio 90255'},
  {'address-1': '666-4366 Lacinia Avenue',
   'address-2': 'Idaho Falls Ohio 19253'},
  {'address-1': '935-1670 Neque. St.',
   'address-2': 'Centennial Delaware 48432'}],
 'deptno': 30,
 'mgr': 1145}

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Modifying Items</h3>

Python dictionary values can be modifies by assigning new values to the key. Dictionary method **.update()** can also be used to modify multiple values.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp['name'] = 'George'
>>> emp.update({'sal':3500,'mgr':4263})
>>> emp
{'name': 'George',
 'age': 23,
 'sal': 3500,
 'comm': 2.3,
 'address': [{'address-1': '5037 Diam Rd.',
   'address-2': 'Daly City Ohio 90255'},
  {'address-1': '666-4366 Lacinia Avenue',
   'address-2': 'Idaho Falls Ohio 19253'},
  {'address-1': '935-1670 Neque. St.',
   'address-2': 'Centennial Delaware 48432'}],
 'deptno': 40,
 'mgr': 4263}

{% endhighlight %}
</div>
</div>
<br>

Modify the list item inside dictionary

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp['address'][2]['address-1'] = '414-7533 Non Rd.'
>>> emp['address'][2]['address-2'] = 'Miami Beach North Dakota 58563'

or

>>> emp['address'][2] = {'address-1':'414-7533 Non Rd.', 'address-2':'Miami Beach North Dakota 58563'}
>>> emp
{'name': 'George',
 'age': 23,
 'sal': 3500,
 'comm': 2.3,
 'address': [{'address-1': '5037 Diam Rd.',
   'address-2': 'Daly City Ohio 90255'},
  {'address-1': '666-4366 Lacinia Avenue',
   'address-2': 'Idaho Falls Ohio 19253'},
  {'address-1': '414-7533 Non Rd.',
   'address-2': 'Miami Beach North Dakota 58563'}],
 'deptno': 30,
 'mgr': 4263}


{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Deleting Items</h3>

Python dictionary deletion can be done in multiple ways. Using **del** keyword, specific values from a dictionary or the whole dictionary can be deleted. Dictionary methods **.pop()** or **.popitems()**.

All the items from a dictionary can be deleted at once by using **.clear()** method


<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp = {'name': 'George',
...  'age': 23,
...  'sal': 3500,
...  'comm': 2.3,
...  'address': [{'address-1': '5037 Diam Rd.',
...    'address-2': 'Daly City Ohio 90255'},
...   {'address-1': '666-4366 Lacinia Avenue',
...    'address-2': 'Idaho Falls Ohio 19253'},
...   {'address-1': '935-1670 Neque. St.',
...    'address-2': 'Centennial Delaware 48432'}],
...  'deptno': 30,
...  'mgr': 4263}
>>> del emp['sal']
>>> emp.pop('age')
23
>>> emp.popitem()
('mgr', 4263)
>>> emp
{'name': 'George',
 'comm': 2.3,
 'address': [{'address-1': '5037 Diam Rd.',
   'address-2': 'Daly City Ohio 90255'},
  {'address-1': '666-4366 Lacinia Avenue',
   'address-2': 'Idaho Falls Ohio 19253'},
  {'address-1': '935-1670 Neque. St.',
   'address-2': 'Centennial Delaware 48432'}],
 'deptno': 30}

{% endhighlight %}
</div>
</div>
<br>

Delete the nested dictionary list item keys.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> del emp['address'][2]['address-2']
>>> emp
{'name': 'George',
 'comm': 2.3,
 'address': [{'address-1': '5037 Diam Rd.',
   'address-2': 'Daly City Ohio 90255'},
  {'address-1': '666-4366 Lacinia Avenue',
   'address-2': 'Idaho Falls Ohio 19253'},
  {'address-1': '935-1670 Neque. St.'}],
 'deptno': 30}

>>> del emp['address'][2]
>>> emp
{'name': 'George',
 'comm': 2.3,
 'address': [{'address-1': '5037 Diam Rd.',
   'address-2': 'Daly City Ohio 90255'},
  {'address-1': '666-4366 Lacinia Avenue',
   'address-2': 'Idaho Falls Ohio 19253'}],
 'deptno': 30}

{% endhighlight %}
</div>
</div>
<br>

Deleting all elements of the dictionary

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp.clear()
>>> emp
{}
>>> type(emp)
<class 'dict'>
>>> len(emp)
0
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Loop Dictionary</h3>

Using the for loop Python dictionary keys and values can be access. Inside for loop Python dictionary returns the keys.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp = {'name': 'George',
...  'age': 23,
...  'sal': 3500,
...  'comm': 2.3,
...  'deptno': 30,
...  'mgr': 4263}

>>> for i in emp:
...     print(f'{i} \t {emp[i]}')
... 
name     George
age      23
sal      3500
comm     2.3
deptno   30
mgr      4263

{% endhighlight %}
</div>
</div>
<br>
Using the .items() method keys dictionary will return the keys and values

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp = {'name': 'George',
...  'age': 23,
...  'sal': 3500,
...  'comm': 2.3,
...  'deptno': 30,
...  'mgr': 4263}

>>> for (key,val) in emp.items():
...     print(f'{key} \t {val}')
... 
name     George
age      23
sal      3500
comm     2.3
deptno   30
mgr      4263

{% endhighlight %}
</div>
</div>
<br>

Using the **.keys()** and **.values()** method dictionary will return list of keys and values. This can be used to loop the dictionary.


<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp = {'name': 'George',
...  'age': 23,
...  'sal': 3500,
...  'comm': 2.3,
...  'deptno': 30,
...  'mgr': 4263}
>>> 
>>> for k in emp.keys():
...     print(f'{k}')
... 
name
age
sal
comm
deptno
mgr

>>> emp = {'name': 'George',
...  'age': 23,
...  'sal': 3500,
...  'comm': 2.3,
...  'deptno': 30,
...  'mgr': 4263}
>>> 
>>> for k in emp.values():
...     print(f'{k}')
... 
George
23
3500
2.3
30
4263


{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Dictionary Methods</h3>

Use the **len** method to count the elements in the dictionary. The **in** condition can be used to check if a key exists in the dictionary.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> emp = {'name': 'George',
...  'age': 23,
...  'sal': 3500,
...  'comm': 2.3,
...  'deptno': 30,
...  'mgr': 4263}

>>> len(emp)
6

>>> if 'age' in emp:
...     print('Key age exists in dictionary emp')
... else:
...     print('Key age exists in dictionary emp')
... 
Key age exists in dictionary emp
>>> 
>>> if 'address' in emp:
...     print('Key address exists in dictionary emp')
... else:
...     print('Key address does not exists in dictionary emp')
... 
Key address does not exists in dictionary emp


{% endhighlight %}
</div>
</div>