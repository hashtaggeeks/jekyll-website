---
title: Concatenate Dataframes in Pandas 
description: The concat() function (in the main pandas namespace) does all of the heavy lifting of performing concatenation operations along an axis while performing optional set logic (union or intersection) of the indexes (if any) on the other axes. Note that I say “if any” because there is only a single possible axis of concatenation for Series.
layout: content
date: 2019-08-11
categories: pandas
featured: true 
image-url: /images/pandas-joins.png
alt-img: Pandas dataframe index
short-description: The concat() function (in the main pandas namespace) does all of the heavy lifting of performing concatenation operations along an axis while performing optional set logic (union or intersection) of the indexes (if any) on the other axes. Note that I say “if any” because there is only a single possible axis of concatenation for Series.
---

{%
include related-post.html
input = 
'how-to-create-pandas-dataframe.html,1. How to create pandas dataframe|
pandas-dataframe-index.html,2. Pandas dataframe Index'
%}

<h1 style="padding-top: 60px; margin-top: -40px;">Concatenate Pandas Dataframes </h1>

The concat() function performs concatenation operations along an axis while performing optional set logic (union or intersection) of the indexes (if any) on the other axes. 

There is only one single possible axis of concatenation for Series.

<h3 style="padding-top: 60px; margin-top: -40px;">Concatenate Pandas Dataframes</h3>

Concatenate multiple dataframes to create a single dataframe. This is similar to UNION ALL statement in sql. Concatenation can be done across index or columns.

{% 
include jupyter-text.html 
input="import pandas as pd

dept_1 ={
    'deptno':[10,20],
    'name':['ACCOUNTING','RESEARCH'],
    'location':['NEW YORK','DALLAS']
}

dept_2 ={
    'deptno':[30,40],
    'name':['SALES','OPERATIONS'],
    'location':['CHICAGO','BOSTON']
}


dfDept_1 = pd.DataFrame(dept_1)
dfDept_2 = pd.DataFrame(dept_2)

print(dfDept_1, '\n\n\n' ,dfDept_2)"
output="   deptno        name  location
0      10  ACCOUNTING  NEW YORK
1      20    RESEARCH    DALLAS 


    deptno        name location
0      30       SALES  CHICAGO
1      40  OPERATIONS   BOSTON"
%}

Concatenation across index,similar to UNION ALL statement in sql.

{% 
include jupyter-html.html 
input="dfCon = pd.concat([dfDept_1,dfDept_2])
dfCon"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>deptno</th>
      <th>name</th>
      <th>location</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>10</td>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>1</th>
      <td>20</td>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>0</th>
      <td>30</td>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>1</th>
      <td>40</td>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
  </tbody>
</table>"
%}

Use ignore_index=True to concatenate and re-index the resulting dataframe.

{% 
include jupyter-html.html 
input="dfCon = pd.concat([dfDept_1,dfDept_2],ignore_index=True)
dfCon"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>deptno</th>
      <th>name</th>
      <th>location</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>10</td>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>1</th>
      <td>20</td>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>2</th>
      <td>30</td>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>3</th>
      <td>40</td>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
  </tbody>
</table>"
%}

Concatenate and add a new hierarchical index to the resulting dataframe. Use the **keys** argument to pass new level. Pass tuple if multiple levels are needed. 

{% 
include jupyter-html.html 
input="dfCon = pd.concat([dfDept_1,dfDept_2],keys=['dept_1','dept_2'])
dfCon"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th></th>
      <th>deptno</th>
      <th>name</th>
      <th>location</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th rowspan=\"2\" valign=\"top\">dept_1</th>
      <th>0</th>
      <td>10</td>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>1</th>
      <td>20</td>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th rowspan=\"2\" valign=\"top\">dept_2</th>
      <th>0</th>
      <td>30</td>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>1</th>
      <td>40</td>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
  </tbody>
</table>"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Inner and Outer joins</h3>

Concatenating dataframe returns all the columns which are intersecting and non-intersecting  into the resulting dataframe. Columns that are not intersecting will have 'NaN' values.

{% 
include jupyter-text.html 
input="dept_1 ={
    'deptno':[10,20],
    'name':['ACCOUNTING','RESEARCH'],
    'location':['NEW YORK','DALLAS'],
    'mgrno': ['000010','000030']    
}

dept_2 ={
    'deptno':[30,40],
    'name':['SALES','OPERATIONS'],
    'location':['CHICAGO','BOSTON'],
    'admrdept': ['A00','D10']
}


dfDept_1 = pd.DataFrame(dept_1)
dfDept_2 = pd.DataFrame(dept_2) 
print(dfDept_1, '\n\n\n' ,dfDept_2)"
output="   deptno        name  location   mgrno
0      10  ACCOUNTING  NEW YORK  000010
1      20    RESEARCH    DALLAS  000030 


    deptno        name location admrdept
0      30       SALES  CHICAGO      A00
1      40  OPERATIONS   BOSTON      D10"
%}

Default join behavior is 'outer', which retains all the columns.

{% 
include jupyter-html.html 
input="dfCon = pd.concat([dfDept_1,dfDept_2],sort=False)
dfCon"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>deptno</th>
      <th>name</th>
      <th>location</th>
      <th>mgrno</th>
      <th>admrdept</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>10</td>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
      <td>000010</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>1</th>
      <td>20</td>
      <td>RESEARCH</td>
      <td>DALLAS</td>
      <td>000030</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>0</th>
      <td>30</td>
      <td>SALES</td>
      <td>CHICAGO</td>
      <td>NaN</td>
      <td>A00</td>
    </tr>
    <tr>
      <th>1</th>
      <td>40</td>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
      <td>NaN</td>
      <td>D10</td>
    </tr>
  </tbody>
</table>"
%}

Join 'inner' will retain only the intersecting columns.

{% 
include jupyter-html.html 
input="dfCon = pd.concat([dfDept_1,dfDept_2], join='inner' ,sort=False)
dfCon"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>deptno</th>
      <th>name</th>
      <th>location</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>10</td>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>1</th>
      <td>20</td>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>0</th>
      <td>30</td>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>1</th>
      <td>40</td>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
  </tbody>
</table>"
%}


<h3 style="padding-top: 60px; margin-top: -40px;">Concatenate along column</h3>

Pandas contact has the axis parameter {0/’index’, 1/’columns’}, default 0. This can be used to concatenate dataframes across columns. 


{% 
include jupyter-html.html 
input="pop_index = ['population','growth_rate_%','growth']
pop_1 = {
1980: [3008032,'1.66%',237960],
1985: [3355459,'2.21%',347427],
1990: [3806957,'2.56%',451498],
1995: [4197157,'1.97%',390200],
}

dfPop_1 = pd.DataFrame(pop_1, index=pop_index)
dfPop_1"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>1980</th>
      <th>1985</th>
      <th>1990</th>
      <th>1995</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>population</th>
      <td>3008032</td>
      <td>3355459</td>
      <td>3806957</td>
      <td>4197157</td>
    </tr>
    <tr>
      <th>growth_rate_%</th>
      <td>1.66%</td>
      <td>2.21%</td>
      <td>2.56%</td>
      <td>1.97%</td>
    </tr>
    <tr>
      <th>growth</th>
      <td>237960</td>
      <td>347427</td>
      <td>451498</td>
      <td>390200</td>
    </tr>
  </tbody>
</table>"
%}


{% 
include jupyter-html.html 
input="pop_index = ['population','growth_rate_%','growth']
pop_2 = {
2000: [4607142,'1.88%',409985],
2005: [5035232,'1.79%',428090],
2010: [5499233,'1.78%',464001],
}

dfPop_2 = pd.DataFrame(pop_2, index=pop_index)
dfPop_2"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>2000</th>
      <th>2005</th>
      <th>2010</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>population</th>
      <td>4607142</td>
      <td>5035232</td>
      <td>5499233</td>
    </tr>
    <tr>
      <th>growth_rate_%</th>
      <td>1.88%</td>
      <td>1.79%</td>
      <td>1.78%</td>
    </tr>
    <tr>
      <th>growth</th>
      <td>409985</td>
      <td>428090</td>
      <td>464001</td>
    </tr>
  </tbody>
</table>"
%}


To concatenate dataframes across columns use the axis =1 parameter

{% 
include jupyter-html.html 
input="pdCon = pd.concat([dfPop_1,dfPop_2], axis=1)
pdCon"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>1980</th>
      <th>1985</th>
      <th>1990</th>
      <th>1995</th>
      <th>2000</th>
      <th>2005</th>
      <th>2010</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>population</th>
      <td>3008032</td>
      <td>3355459</td>
      <td>3806957</td>
      <td>4197157</td>
      <td>4607142</td>
      <td>5035232</td>
      <td>5499233</td>
    </tr>
    <tr>
      <th>growth_rate_%</th>
      <td>1.66%</td>
      <td>2.21%</td>
      <td>2.56%</td>
      <td>1.97%</td>
      <td>1.88%</td>
      <td>1.79%</td>
      <td>1.78%</td>
    </tr>
    <tr>
      <th>growth</th>
      <td>237960</td>
      <td>347427</td>
      <td>451498</td>
      <td>390200</td>
      <td>409985</td>
      <td>428090</td>
      <td>464001</td>
    </tr>
  </tbody>
</table>"
%}
