---
title: Create Pandas dataframe
description: How to create python pandas dataframe, create pandas dataframe from list, create pandas dataframe from dict, create pandas dataframe from Numpy, create dataframe from csv, create dataframe from excel
layout: content
categories: pandas
featured: false 
image-url: /images/pandas.jpg
alt-img: Pandas dataframe
short-description: "Pandas dataframe is a 2D size-mutable, potentially heterogeneous tabular data structure with labeled axes (rows and columns). 
Arithmetic operations align on both row and column labels. Can be thought of as a dict-like container for Series objects. A pandas DataFrame can be created using various inputs like List, dict, Series, Numpy ndarray or another dataframe"
---
<h3 style="padding-top: 60px; margin-top: -40px;">How to create Pandas Dataframe</h3>

Pandas dataframe is a 2D size-mutable, potentially heterogeneous tabular data structure with labeled axes (rows and columns). Arithmetic operations align on both row and column labels. Can be thought of as a dict-like container for Series objects. 

It is much like tables in SQL or Excel, it supports operations like aggregation, filtering, and pivoting. DataFrame operations are fast, even over large datasets.

A pandas DataFrame can be created using various inputs like List, dict, Series, Numpy ndarray or another dataframe"

<h3 style="padding-top: 60px; margin-top: -40px;">Create a DataFrame from List</h3>
The DataFrame can be created using a python list.

{%
include jupyter-html.html
input="import pandas as pd
data = [1,2,3,4,5]
df = pd.DataFrame(data)
df"
output="
<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>0</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
    </tr>
  </tbody>
</table>"
%}


<h3 style="padding-top: 60px; margin-top: -40px;">Create a DataFrame from List of Lists</h3>
The DataFrame can be created using a python list of python lists.

{%
include jupyter-html.html
input="import pandas as pd
data = [[10,'ACCOUNTING'],[20,'RESEARCH'],[30,'SALES']]
df = pd.DataFrame(data,columns=['deptno','name'])
df"
output="
<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>deptno</th>
      <th>name</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>10</td>
      <td>ACCOUNTING</td>
    </tr>
    <tr>
      <th>1</th>
      <td>20</td>
      <td>RESEARCH</td>
    </tr>
    <tr>
      <th>2</th>
      <td>30</td>
      <td>SALES</td>
    </tr>
  </tbody>
</table>"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Create a DataFrame from Dictionaries</h3>
The DataFrame can be created using a list of python dictionaries. Column names will be the dictionary key and values will be list items. 

{% include jupyter-html.html
input="dept={
    \"deptno\":[10,20,30,40],
    \"name\":['ACCOUNTING','RESEARCH','SALES','OPERATIONS'],
    \"location\":['NEW YORK','DALLAS','CHICAGO','BOSTON']
}
dfDept = pd.DataFrame(dept)
dfDept"
output="
<table border=\"1\" class=\"dataframe\">
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


<h3 style="padding-top: 60px; margin-top: -40px;">Create a DataFrame from Numpy array</h3>
The DataFrame can be created using numpy arrays. 

{% include jupyter-html.html 
input="np_array_cols = np.array(['Sun', 'Mon', 'Tue', 'Wed', 'Thu','Fri','Sat'])
np_array_vals = np.array([
    [1,2,3,4,5,6,7],
    [8,9,10,11,12,13,14],
    [15,16,17,18,19,20,21],
    [22,23,24,25,26,27,28],
    [29,30,np.nan,np.nan,np.nan,np.nan,np.nan]
])

df = pd.DataFrame(np_array_vals, columns=np_array_cols, dtype=\"object\")
df"
output="
<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>Sun</th>
      <th>Mon</th>
      <th>Tue</th>
      <th>Wed</th>
      <th>Thu</th>
      <th>Fri</th>
      <th>Sat</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
      <td>5</td>
      <td>6</td>
      <td>7</td>
    </tr>
    <tr>
      <th>1</th>
      <td>8</td>
      <td>9</td>
      <td>10</td>
      <td>11</td>
      <td>12</td>
      <td>13</td>
      <td>14</td>
    </tr>
    <tr>
      <th>2</th>
      <td>15</td>
      <td>16</td>
      <td>17</td>
      <td>18</td>
      <td>19</td>
      <td>20</td>
      <td>21</td>
    </tr>
    <tr>
      <th>3</th>
      <td>22</td>
      <td>23</td>
      <td>24</td>
      <td>25</td>
      <td>26</td>
      <td>27</td>
      <td>28</td>
    </tr>
    <tr>
      <th>4</th>
      <td>29</td>
      <td>30</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
  </tbody>
</table>"
%}
