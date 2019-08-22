---
title: Python Conditions and Loops
description: Python, conditional execution, if then elif, boolean expressions, logical operator, guardian pattern, nested conditions, while statement, while loop, infinite loop,continue, for loop, guardian pattern, counter
layout: content
date: 2019-08-17
categories: python
featured: false 
image-url: /images/conditions-loops.jpg
alt-img: Python Conditions and Loops
short-description: Python is a minimalistic programming language. Python is open source and is available in almost all platforms. Python is an interpreted language, python code can execute directly from the source code. Python supports procedure-oriented programming as well as object-oriented programming. Python libraries helps in developing database applications, web applications and many more.
---

{%
include related-post.html
input = 
'python-basics-hello-world.html,1. Python Basics Hello World|
python-string-operation-formatting,2. Python Strings'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python Conditions and Loops</h1>

Python conditional statement **if elif else** statement provides the ability to check conditions and change the behavior of the program. Conditions in Python can be chained and nested to create different behaviors. 

Python has three logical operators: **and, or, and not**. Python evaluates logical expression from left to right, each expression is evaluated to True or False before proceeding to the next. When Python detects that there is nothing to be gained by evaluating the rest
of a logical expression, it stops its evaluation and does not do the computations in the rest of the logical expression. When the evaluation of a logical expression stops because the overall value is already known, it is called short-circuiting the evaluation

Iterations are used to perform repeated task. Python provides iterations in the form of **while** statement and **for** statement. For statement is used when we have a known set of items to loop, while is an indefinite loop, it loops till the condition becomes false or encounters a **break** statement.

<h3 style="padding-top: 60px; margin-top: -40px;">Python Boolean</h3>
A boolean in Python is either **True** or **False**. True and False are special values that belong to the class bool; they are not strings.

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> type(True)
<class 'bool'>
>>> type(False)
<class 'bool'>

>>> var1 = True
>>> type(var1)
<class 'bool'>

>>> "john" == "John"
False

>>> "john" is not "John"
True

>>> 10 >= 8
True

{% endhighlight %}
</div>
</div>

<br>
Python Comparison operators

<table class="responsive">
  <tbody>
    <tr> 
      <td>x != y</td>
      <td>x is not equal to y</td> 
    </tr>
    <tr> 
      <td>x > y</td>
      <td>x is greater than y</td> 
    </tr>
    <tr> 
      <td>x < y</td>
      <td>x is less than y</td> 
    </tr>
    <tr> 
      <td>x >= y</td>
      <td>x is greater than or equal to y</td> 
    </tr>
    <tr> 
      <td>x <= y</td>
      <td>x is less than or equal to y</td> 
    </tr>
    <tr> 
      <td>x is y</td>
      <td>x is the same as y</td> 
    </tr>
    <tr> 
      <td>x is not y &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td>x is not the same as y</td> 
    </tr>
  </tbody>
</table>



<h3 style="padding-top: 60px; margin-top: -40px;">Logical operators</h3>

The three logical operators available in Python are **and, or, and not**. The meaning of the operators are similar to their English meaning. not operator negates a boolean expression


<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> True and True
True
>>> True and False
False
>>> False and False
False
>>> True or True
True
>>> True or False
True
>>> False or False
False
>>> 100 > 50 and 100 < 150
True
>>> 100 > 50 or 100 > 150
True
>>> not 100 > 150
True
>>> 100 > 50 and not 100 > 150
True
>>> True and not False
True
>>> 'John' and 33 and True
True
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Conditional execution</h3>

Conditions gives program the ability to change the behavior of the code execution. 

If the logical condition is true, then the indented statement gets executed. If the logical condition is false, the indented statement is skipped. if statements have the same structure as function definitions or for loops. 

The statement consists of a header line that ends with the colon character (:) followed by an indented block. Statements like this are called compound statements because they stretch across more than one line. There is no limit on the number of statements that can appear in the body, but there must be at least one


<div class="card">
<div class="card-body">
{% highlight Javascript %}

result = <expression 1> if <condition> else <expression 2>

or

if <condition>:
    <expression>
else:
    <expression>
{% endhighlight %}
</div>
</div>

<br>

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> x = 100
>>> if x%2 == 0:
...    print("x is even") 
...
x is even

>>> if x%2 == 0:
...     print("x is even")
... else:
...     print("x is odd") 
...
x is odd


{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Chained and Nested execution</h3>

To handle multiple conditions Python provides **elif**. There is no limit on the number of elif statements. If there is an else clause, it
has to be at the end. In Python else is not mandatory. 
Python does not have switch statement, nesting and chaining of if-else-if blocks are the solution in Python.


Each condition is checked in order. If the first is false, the next is checked, and so on. If one of them is true, the corresponding branch executes, and the statement execution ends. Even if more than one condition is true, only the first true branch executed.

<div class="card">
<div class="card-body">
{% highlight shell %}

# Chained Condition
if condition1:
    Statement1
elif condition2:
    Statement2
else:
    Statement3


# Nested Condition
if condition1:
    if condition11:
        Statement11
elif condition2:
    if condition21:
        Statement21
    else:
        Stetement22
else:
    Statement3

{% endhighlight %}
</div>
</div>

<br>

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> color="red"
>>> if color == "blue":
...     print("Blue color")
... elif color == "green":
...     print("Green color")
... elif color == "red":
...     print("Red color")
... else:
...     print("No color")
...
Red color

>>> drink="coffee"
>>> sugar=True
>>> if drink == "coffee":
...     if sugar:
...         print("sweet coffee")
...     else:
...         print("black coffee")
... elif drink == "tea":
...     if sugar:
...         print("sweet tea")
...     else:
...         print("black tea")
... 
sweet coffee


{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Python Short-circuit evaluation</h3>

Short-circuiting is where an expression is stopped being evaluated as soon as its outcome is determined. When Python detects that there is nothing to be gained by evaluating the rest of a logical expression, it stops its evaluation and does not do the computations in the rest of the logical expression.

In case of **or** conditions when in True condition is encountered, the rest of condition evaluation is ignored since the expression outcome has been determined. 

In case of **and** statement when in False condition is encountered, the rest of condition evaluation is ignored since the expression outcome has been determined.


<div class="card">
<div class="card-body">
{% highlight shell %}

>>> 10 > 20 and 20 < 40
False
>>> 10 > 20 and 0/0
False
>>> # python ignored the division by zero since the first condition is False


>>> 10 < 20 and 0/0
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ZeroDivisionError: division by zero
>>>
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Python while loop</h3>

While loop evaluates a condition and then execute the code block. The code block continues to execute until the condition evaluates to False or break statement is encountered in the code block.

{% highlight python %}
while <condition>:
    <code block>
{% endhighlight %}

The code block should change the value of the condition so that it becomes **False** and the loop will terminate. The loop will become infinite if the condition never becomes **False** 

<div class="card">
<div class="card-body">
{% highlight shell %}

>>> i = 0
>>> while i < 5:
...     print(i)
...     i+=1
...
0
1
2
3
4
>>> i = 0
>>> while True:
...     print(i)
...     i+=1
...     if i > 5: 
...         break 
...
0
1
2
3
4
5
>>> letsLoop = True 
>>> total = 0 
>>> i=0
>>> while letsLoop:
...     i = int(input('Enter numbers to sum, negative number ends list:'))
...     letsLoop = i>0
...     if i >= 0:
...         total += i 
... 
Enter numbers to sum, negative number ends list:10
Enter numbers to sum, negative number ends list:20
Enter numbers to sum, negative number ends list:30
Enter numbers to sum, negative number ends list:-1
>>> print("Total =", total)
Total = 60


{% endhighlight %}
</div>
</div>

<br>
Use **continue** to skip the current iteration and move to the next iteration. 

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> i=0
>>> while i < 10:
...     if i%2==0:
...         i+=1
...         continue
...     
...     print(i)
...     i+=1
... 
1
3
5
7
9
>>> 
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Python for loop</h3>

Python for statement iterates over the members of a sequence in order, executing the block each time. Examples of iterable are String, List, Dictionary etc. 

<div class="card">
<div class="card-body">
{% highlight shell %}
>>> string = "Hello World"
>>> for x in string:
...     print (x)
... 
H
e
l
l
o
 
W
o
r
l
d
>>> 
>>> for x in range(3):
...     print (x)
... 
0
1
2
>>>
>>> list_of_lists = [ [1, 2, 3], [4, 5, 6], [7, 8, 9]]
>>> for list in list_of_lists:
...     for x in list:
...         print (x)
... 
1
2
3
4
5
6
7
8
9

{% endhighlight %}
</div>
</div>