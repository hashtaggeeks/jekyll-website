---
title: Python Strings
description: Python String formatting, Python String Operations, Python String data type, Python String methods, Python String concatenation, python string f formats, padding, number formats, signed number, Python datetime formats, Python date formats, Python time formats
layout: content
date: 2019-08-20
categories: python
featured: false 
image-url: /images/python-strings.jpg
alt-img: Python String
short-description: Python Strings are Arrays. String literals in Python are surrounded by either single quotation marks, or double quotation marks. Python Strings are arrays of bytes representing unicode characters.
---

{%
include related-post.html
input = 
'python-conditions-loops.html,1. Python Conditions and Loops|
python-lists.html,2. Python Lists'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python Strings</h1>

Python Strings are Arrays of unicode characters. String literals in Python are surrounded by either single quotation marks, or double quotation marks. Strings data type belong to <class \'str\'>. Python does not have a character data type, a single character is simply a string with a length of 1.

{% highlight Javascript %}
>>> str = "This is a string"
>>> type(str)
<class 'str'>
{% endhighlight %}

<h3 style="padding-top: 60px; margin-top: -40px;">Creating Strings</h3>

There are multiple ways to create strings in Python. String can be created by concatenating other string's or using Lists etc.

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> str = 'hello' ' world' '..!'
>>> str
'hello world..!'

>>> str = 'Another' + ' ' + 'String'
>>> str
'Another String'

>>> lst =['This', ' is', ' a', ' Python', ' string']
>>> str = ''.join(lst)
>>> str
'This is a Python string'

>>> dic = {'first':'John','last':' Thomas'}
>>> ''.join(dic.values())
'John Thomas'
>>> 
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Python Multiline String</h3>

Create a multiline string three quotes.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> str = '''The string module contains a number of
... useful constants and classes, as well as 
... some deprecated legacy functions that 
... are also available as methods on strings.'''
>>> print(str)
The string module contains a number of
useful constants and classes, as well as 
some deprecated legacy functions that 
are also available as methods on strings.
>>> 


{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Python String Slicing</h3>

Python strings are unicode characters arrays of bytes. List operations can be performed in Strings using the [] square brackets

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> str = "Hello World .. !"
>>> str[0:5]
'Hello'
>>> str[6:11]
'World'

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Python String Formatting</h3>

Python String formatting can be done using **str.format()** method or using the formatted string literals **f-string**. Every **f-string** statement consists of two parts, one is character f or F, and the next one is a string to format. The string will be enclosed in single, double, or triple quotes


<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> f"Hello World"
'Hello World'

>>> f"Multiply 5*6 = {5*6}"
'Multiply 5*6 = 30'

{% endhighlight %}
</div>
</div>

<p><p>
f-strings are evaluated at runtime, it supports any valid Python expression or function call

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> name = "John"
>>> f"Upper case name is {name.upper()}"
'Upper case name is JOHN'


>>> def fn_get_fullname(first, last):
...     return first + ' ' + last
... 
>>> f"Full name is {fn_get_fullname('Joseph','John')}"
'Full name is Joseph John'

>>> empid = 1001
>>> name = 'John'
>>> age = 32
>>> sal = 2000
>>> 
>>> str = f'Employee id {empid} name is {name} and age is {age} and salary = {sal}' 
>>> str
'Employee id 1001 name is John and age is 32 and salary = 2000'

>>> emp = {'empid' : 1001,
... 'name' : 'John',
... 'age' : 32,
... 'sal' : 2000}
>>> 
>>> str = f'Employee id {emp["empid"]} name is {emp["name"]} and age is {emp["age"]} and salary = {emp["sal"]}' 
>>> str
'Employee id 1001 name is John and age is 32 and salary = 2000'

{% endhighlight %}
</div>
</div>
<p>


<h3 style="padding-top: 60px; margin-top: -40px;">Python String Padding </h3>


<table class="responsive">
  <tbody>
    <tr> 
      <td>'<' </td>
      <td>Forces the field to be left-aligned within the available space</td> 
    </tr>
    <tr> 
      <td>'>'</td>
      <td>Forces the field to be right-aligned within the available space</td> 
    </tr>
    <tr> 
      <td>'='</td>
      <td>Forces the padding to be placed after the sign (if any) but before the digits. This is used for printing fields in the form ‘+000000120’. This alignment option is only valid for numeric types. It becomes the default when ‘0’ immediately precedes the field width</td> 
    </tr>
    <tr> 
      <td>'^'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td>Forces the field to be centered within the available space.</td> 
    </tr>
  </tbody>
</table>

<br>

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> f'{"Hello World":<20}'
'Hello World         '
>>> f'{"Hello World":>20}'
'         Hello World'
>>> f'{"Hello World":^20}'
'    Hello World     '
>>> 

>>> i=0
>>> while i<20:
...     if i%2==1:
...         print(f'{"*"*i:^20}')
...     i+=1
... 
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


>>> i=0
>>> while i<20:
...     if i%2==0:
...         print(f'{" "*i:*^20}')
...     i+=1
... 
********************
*********  *********
********    ********
*******      *******
******        ******
*****          *****
****            ****
***              ***
**                **
*                  *

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">More String methods </h3>

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> "Hello World".upper()
'HELLO WORLD'

>>> "Hello World".lower()
'hello world'

>>> "this is a simple text".title()
'This Is A Simple Text'

>>> "Hello World".swapcase()
'hELLO wORLD'

>>> "www.hashtaggeeks.com".strip("wmoc.")
'hashtaggeeks'

>>> "   spaces    ".lstrip()
'spaces    '
>>> "   spaces    ".rstrip()
'   spaces'
>>> "   spaces    ".strip()
'spaces'

>>> "lets split this text to an array".split(" ")
['lets', 'split', 'this', 'text', 'to', 'an', 'array']

>>> "is" in "Lets see if is can be found here"
True
>>> "is" in "Lets see if 'IS' can be found here"
False
>>> "is" in "Lets see if 'is' can be found here"
True
>>> "was" in "Lets see if is can be found here"
False

>>> "122098443".isdigit()
True
>>> "12209a8443".isdigit()
False

{% endhighlight %}
</div>
</div>