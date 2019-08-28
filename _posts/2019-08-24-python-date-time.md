---
title: Python DateTime
description: Python Tuples, Python collection, Python data structure, python lists, tuples are immutable, indexing, slicing, concatenation
layout: content
date: 2019-08-24 01:01:20
categories: python
featured: false
image-url: /images/python-date-time.jpg
alt-img: Python Date Time
short-description: Python datetime module supplies classes for manipulating dates and times in both simple and complex ways. While date and time arithmetic is supported, the focus of the implementation is on efficient attribute extraction for output formatting and manipulation
---

{%
include related-post.html
input = 'python-tuples.html,1. Python Tuples'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Python DateTime</h1>

The datetime module supplies classes for manipulating dates and times in both simple and complex ways. While date and time arithmetic is supported, the focus of the implementation is on efficient attribute extraction for output formatting and manipulation

To work with datatime in Pyhton, datatime module needs to be imported

{% highlight JavaScript %}
>>> import datetime
>>> type(datetime)
<class 'module'>
{% endhighlight %}

<h3 style="padding-top: 60px; margin-top: -40px;"> Current Date and Time</h3>

Current date and time can be retrieved from datetime modules **date** class or **date** class or **datetime** class.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> import datetime
>>> varDate = datetime.date.today()
>>> varDateTime = datetime.datetime.today()
>>> 
>>> print(varDate)
2019-08-28
>>> print(varDateTime)
2019-08-28 10:07:35.630548

{% endhighlight %}
</div>
</div>
<br>
Print todays Year, Month, Day, Hour, Minute and Seconds.

<div class="card">
<div class="card-body">
{% highlight Javascript %}
>>> varDate.year
2019
>>> varDate.month
8
>>> varDate.day
28
>>> print(f'Year = {varDate.year} Month = {varDate.month} Day = {varDate.day}')
Year = 2019 Month = 8 Day = 28

>>> varDateTime.hour
10 
>>> varDateTime.minute
7
>>> varDateTime.second
35
>>> print(f'''Year = {varDateTime.year} \
... Month = {varDateTime.month} \
... Day = {varDateTime.day} \
... Hour = {varDateTime.hour} \
... Minute= {varDateTime.minute} \
... Second = {varDateTime.second}''')
Year = 2019 Month = 8 Day = 28 Hour = 10 Minute= 7 Second = 35

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;"> Create Date object </h3>

Date objects can be instantiated from the date class. **datetime.date(year, month, day)**

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> import datetime
>>> varDt = datetime.date(2019, 8, 28)
>>> print(varDt)
2019-08-28

>>> from datetime import date
>>> varDt = datetime.date(2019, 8, 28)
>>> print(varDt)
2019-08-28

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;"> Create Date object from timestamp</h3>

Date object can also be created from timestamp. Timestamp in linux is the elapsed seconds between 2019-Jan-01 UTC. In shell to find the timestamp use the below code.

{% highlight Python %}
krish:$ date +%s
1567002907
{% endhighlight %}

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> varDt = datetime.date.fromtimestamp(1567002907)
>>> print(varDt)
2019-08-28
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;"> Create Time object</h3>

Time object can be created from the time class in datatime module. **datetime.time(hour, minute, second, microsecond)**

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> varTime = datetime.time(10,51,20)
>>> print(varTime)
10:51:20

>>> varTime = datetime.time(21,51,20,348756)
>>> print(varTime)
21:51:20.348756

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;"> Create DateTime object</h3>

Datetime object can be created from the datetime class in datatime module. **datetime.datetime(year, month, day, hour, minute, second, microsecond)**

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> varDatetime = datetime.datetime(2019, 8, 28, 10, 15, 20, 76375)
>>> print(varDateTime)
2019-08-28 10:07:35.630548

{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;"> Timedelta</h3>

Python timedelta is class available in the datetime module. It is used for expressing the difference between two date, time, or datetime instances to microsecond resolution.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> from datetime import date
>>> from datetime import timedelta
>>> print( date.today() )
2019-08-28
>>> print( date.today() + timedelta(days=1) )
2019-08-29
>>> print( date.today() + timedelta(days=365) )
2020-08-27

>>> from datetime import datetime
>>> print( datetime(2019,8,28,16,38) + timedelta(hours=1) )
2019-08-28 17:38:00

{% endhighlight %}
</div>
</div>
<br>
Timedelta can be used to calculate the total seconds of a specif duration. Time delta's can be added, subtracted, multiplied and divided.

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> varTDelta = timedelta(hours=10)
>>> print(varTDelta.total_seconds())
36000.0

>>> varTDelta = timedelta(days=5, hours=10, minutes=20)
>>> print(varTDelta)
5 days, 10:20:00

>>> varTDelta = varTDelta / 2
>>> print(varTDelta)
2 days, 17:10:00

>>> varTDelta = varTDelta * 2
>>> print(varTDelta)
5 days, 10:20:00

>>> varTD1 = timedelta(days=5, hours=10, minutes=20)
>>> varTD2 = timedelta(days=12, hours=5, minutes=20)
>>> print(varTD1)
5 days, 10:20:00
>>> print(varTD2)
12 days, 5:20:00
>>> print(varTD1 + varTD2)
17 days, 15:40:00

>>> varT1 = timedelta(seconds = 55)
>>> varT2 = timedelta(seconds = 10)
>>> print(varT1 - varT2)
0:00:45
>>> print(varT2 - varT1)
-1 day, 23:59:15

{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;"> Python format datetime </h3>

Python has **strftime()** methods to format date and time. The **strptime()** method creates a datetime object from a given string (representing date and time).

<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> curDate= datetime.today()
>>> curDate
datetime.datetime(2019, 8, 28, 17, 38, 59, 825268)
>>> 
>>> print(curDate.strftime(f'''
... ShortYear     = %y 
... LongYear      = %Y 
... Month         = %m
... ShortMonth    = %b
... LongMonth     = %B
... WeekDayOfYear = %W
... WeekDayofWeek = %w
... DayOfYear     = %j
... DayOfMonth    = %d
... Minutes       = %M
... Hour          = %H
... Seconds       = %S
... Microseconds  = %f
... AM/PM         = %p
... '''))

ShortYear     = 19 
LongYear      = 2019 
Month         = 08
ShortMonth    = Aug
LongMonth     = August
WeekDayOfYear = 34
WeekDayofWeek = 3
DayOfYear     = 240
DayOfMonth    = 28
Minutes       = 38
Hour          = 17
Seconds       = 59
Microseconds  = 825268
AM/PM         = PM

{% endhighlight %}
</div>
</div>
<br>

Create datatime object using **strptime()**


<div class="card">
<div class="card-body">
{% highlight Javascript %}

>>> strDate = "240 August, 2019"
>>> curDate = datetime.strptime(strDate,'%j %B, %Y')
>>> 
>>> print(curDate)
2019-08-28 00:00:00


{% endhighlight %}
</div>
</div>