---
title: Python Basics - Hello World
description: Python basics, datatype, variables, expressions,version, history, comments, docstring, keywords, lexical conventions, PEP8 standards
layout: content
date: 2019-08-17
categories: python
featured: false 
image-url: /images/python-hello-world.jpg
alt-img: Python Hello World
short-description: Python is a minimalistic programming language. Python is open source and is available in almost all platforms. Python is an interpreted language, python code can execute directly from the source code. Python supports procedure-oriented programming as well as object-oriented programming. Python libraries helps in developing database applications, web applications and many more.
---

{%
include related-post.html
input = 
'how-to-install-anaconda-python.html,1. How to install anaconda python|
python-conditions-loops.html, 2. Python Conditions and Loops'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python basics - Hello World</h1>

Python is a minimalistic programming language. Python is open source and is available in almost all platforms. Python is an interpreted language, python code can execute directly from the source code. Python supports procedure-oriented programming as well as object-oriented programming. Python libraries helps in developing database applications, web applications and many more. Python is a case-sensitive language. X and x are two different identifiers.

<h3 style="padding-top: 60px; margin-top: -40px;">History of Python</h3>
Python language was started by <a href="https://en.wikipedia.org/wiki/Guido_van_Rossum" target="_blank">Guido Van Rossum</a> in Netherlands in the year 1989. The name Python is based on the 1970's popular British comedy tv show called Monty Python’s Fly Circus and Van Rossum happened to be the big fan of that show. So when Python was developed, Rossum named the project ‘Python’.

The first version of Python was introduced in 1991. Since its inception and introduction of Version 1, the evolution of Python has reached up to Version 3.x.
<ul>
    <li>Python 1.0 - Jan 1994</li>
    <li>Python 2.0 - Oct 2000</li>
    <li>Python 3.0 - Dec 2008</li>
</ul>


<h3 style="padding-top: 60px; margin-top: -40px;">Python "hello world"</h3>
Python interpreter is started by typing python in the command shell.

<div class="card">
<div class="card-body">
{% highlight shell %}
krish:$ python
Python 3.7.3 (default, Mar 27 2019, 22:11:17) 
[GCC 7.3.0] :: Anaconda, Inc. on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> print("hello world")
hello world
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Python Interactive Shell</h3>

Python interactive shell is a very powerful tool. In the shell, we can type any valid statement or sequence of statements and immediately view the result. When you use Python interactively,the special variable "\_\" holds the result of the last statement or operation. We can use the result of the last statement in subsequent statements. This is a feature available in the shell when working interactively.

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> 100+200.35
300.35
>>> _ + 300
600.35
>>> _ + (300/10)
630.35
{% endhighlight %}
</div>
</div>

<br>
Python source files are ordinary text files and normally have a ".py" suffix.The #character denotes single line comment. Create a file helloworld.py and add the below lines of code. Execute the Python file using the command **python helloworld.py**

<div class="card">
<div class="card-body">
{% highlight shell %}

krish:$ cat helloworld.py 
# helloworld.py
print("Hello World")

krish:$ python helloworld.py 
Hello World

{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Python Variables and Expressions</h3>

Python being a dynamically typed language where variable are bound to different values,of varying data types,during program execution.The assignment operator simply creates an association between a name and a value. The values is associated with a data type like string, integer, float but the variable name can be changed to refer to different type during execution. This is different from other programming languages, where the variable points to a specific type, size and memory location.

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> var1 = 100
>>> type(var1)
<class 'int'>
>>> var1 = var1*1.1
>>> type(var1)
<class 'float'>
>>> var1="".join([var1,"abcd"])
>>> type(var1)
<class 'str'>
{% endhighlight %}
</div>
</div>

<br>
Newline terminates each statement. Using a semicolon we can separate statements on the same line. Long statements/expressions can be split into 
multiple lines by using the line-continuation character (**\\**).

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> varInt = 100; varStr = "hello world"; varFloat = 10.09; 
>>>
>>> 100 + (200*2) + (300*3) \
... + (400*4) + (500*5) \
... + (600*6) + (700*7)
14000
{% endhighlight %}
</div>
</div>

<br>
Multiple variables can be declared using single line. The assignment will be based on the position of the values.

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> var1, var2, var3 = 100,"hello world",10.09
>>> var1
100
>>> var2
'hello world'
>>> var3
10.09
>>> 
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Python Lexical Conventions Syntax (PEP8 Standard)</h3>

Python interpreter treats python code as sequence of expressions. They are executed sequentially one at a time until the program comes to an end. All expressions are equal.

**Line Structure** <br>
Each statement of code is terminated with a newline. Long statements/expressions can be split into multiple lines by using the line-continuation character (**\\**), except a triple-quoted string, list, tuple, or dictionary which spans multiple lines. eg:- enclosed in parentheses (...), brackets [...], braces {...}, or triple quotes """ can span multiple lines without use of the line-continuation character (**\\**) because they clearly have a start and end.

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> var1 = 100 + (200*2) + (300*3) \
... + (400*4) + (500*5) \
... + (600*6) + (700*7)

>>> var2 = [1,2,3,5
... ,6,7,8,9]

>>> var3 = {"name":"John",
... "age":22,
... "sal":2000
... }

>>> var1="""My name is john
... age is 22 and
... salaty is 2000"""

{% endhighlight %}
</div>
</div>

<br>
**Indentation**<br>
Python is designed to be a readable language. The main difference between Python and other programming languages is that Python does not use any brackets to indicate blocks of code. Python uses indentation to indicate code blocks.

Indentation is used to denote different blocks of code, such as functions, conditionals, loops, classes etc.The amount of indentation used for the first statement of a block is arbitrary, but the indentation of the entire block must be consistent. **By PEP8 standard 4 spaces** (not tab) **are recommended for the indentation.**

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> name="John"
>>> if name=="John":
...     print("name is John")
... elif name=="Smith":
...     print("name is Smith")
... elif name=="Jane":
...     print("name is Jane")
... 
name is John
>>>
>>> if name=="John":
...     print("name is John")
...   elif name=="Smith":
  File "<stdin>", line 3
    elif name=="Smith":
                      ^
IndentationError: unindent does not match any outer indentation level


{% endhighlight %}
</div>
</div>

<br>
**Identifiers and Reserved Words**<br>
An identifier is a name used to identify variables, functions, classes, modules, and other objects. Identifiers can include letters, numbers, and the underscore character (\_) but must start with an underscore or with letter (uppercase or lowercase). Letters are currently confined to the
characters A–Z and a–z in the ISO–Latin character set. 

Identifiers are case sensitive, hence Xyz is different from xyz. Special symbols such as $, %, and @ are not allowed in identifiers. Also reserved words and cannot be used as identifiers. 

Here is the list of reserved words that cannot be used as identifiers:

and, as, assert, break, class, continue,def, del, elif, else, except, exec, finally, for, from, global, if, import, in, is, lambda, nonlocal, not, or, pass, print, raise, return, try, while, with, yield.


<div class="card">
<div class="card-body">
{% highlight shell %}
>>> _name ="John"
>>> name ="John"
>>> name123 ="John"
>>> name_first ="John"
>>> name_ ="John"
>>> _name_ ="John"

>>> 123Name = "Smith"
  File "<stdin>", line 1
    123Name = "Smith"
          ^
SyntaxError: invalid syntax

>>> yield="John"
  File "<stdin>", line 1
    yield="John"
         ^
SyntaxError: invalid syntax

{% endhighlight %}
</div>
</div>