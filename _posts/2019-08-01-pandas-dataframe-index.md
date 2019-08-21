---
title: Pandas Dataframe Index
description: Pandas Dataframe Index, how to index pandas dataframe.
layout: content
categories: pandas
featured: false 
image-url: /images/dataframe-index.jpg
alt-img: Pandas dataframe index
short-description: "Dataframe index is the address to access rows. The default index created by the dataframe is RangeIndex of int64.
Index can be set during the dataframe creation or can be changed later using set_index or reset_index methods"
---

{%
include related-post.html
input = 
'how-to-create-pandas-dataframe.html,1. How to create pandas dataframe'
%}


<h1 style="padding-top: 60px; margin-top: -40px;">Pandas Dataframe Index</h1>

Dataframe index is the address to access rows. The default index created by the dataframe is RangeIndex of int64.

Index can be set during the dataframe creation or can be changed later using set_index or reset_index methods


<h3 style="padding-top: 60px; margin-top: -40px;">Create dataframe with default index</h3>

A Data frame is a two-dimensional data structure, i.e data is arranged in rows and columns. Index is like pointer across the dataseries in columns and thats how data is accessed.

{% 
include jupyter-html.html 
input="columns = [\"empno\",\"name\",\"job\",\"mgr\",\"hiredate\",\"sal\",\"comm\",\"deptno\"]
emp={
    \"empno\":[7369,7499,7521,7566,7698,7782,7788,7839,7844,7876,7900,7934,7902,7654],
    \"name\":['SMITH','ALLEN','WARD','JONES','BLAKE','CLARK','SCOTT','KING','TURNER',
            'ADAMS','JAMES','MILLER','FORD','MARTIN'],
    \"job\":['CLERK','SALESMAN','SALESMAN','MANAGER','MANAGER','MANAGER','ANALYST',
           'PRESIDENT','SALESMAN','CLERK','CLERK','CLERK','ANALYST','SALESMAN'],
    \"mgr\":[7902,7698,7698,7839,7839,7839,7566,np.NaN,7698,7788,7698,7782,7566,7698],
    \"hiredate\":['1993-06-13','1998-08-15','1996-03-26','1995-10-31','1992-06-11',
                '1993-05-14','1996-03-05','1990-06-09','1995-06-04','1999-06-04',
                '2000-06-23','2000-01-21','1997-12-05','1998-12-05'],
    \"sal\":[800,1600,1250,2975,2850,2450,3000,5000,1500,1100,950,1300,3000,1250],
    \"comm\":[0,300,500,np.NaN,np.NaN,np.NaN,np.NaN,0,0,np.NaN,np.NaN,np.NaN,np.NaN,1400,],
    \"deptno\":[20,30,30,20,30,10,20,10,30,20,30,10,20,30,]
}

dfEmp=pd.DataFrame(emp, columns=columns)

dfEmp.head()"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>empno</th>
      <th>name</th>
      <th>job</th>
      <th>mgr</th>
      <th>hiredate</th>
      <th>sal</th>
      <th>comm</th>
      <th>deptno</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>7369</td>
      <td>SMITH</td>
      <td>CLERK</td>
      <td>7902.0</td>
      <td>1993-06-13</td>
      <td>800</td>
      <td>0.0</td>
      <td>20</td>
    </tr>
    <tr>
      <th>1</th>
      <td>7499</td>
      <td>ALLEN</td>
      <td>SALESMAN</td>
      <td>7698.0</td>
      <td>1998-08-15</td>
      <td>1600</td>
      <td>300.0</td>
      <td>30</td>
    </tr>
    <tr>
      <th>2</th>
      <td>7521</td>
      <td>WARD</td>
      <td>SALESMAN</td>
      <td>7698.0</td>
      <td>1996-03-26</td>
      <td>1250</td>
      <td>500.0</td>
      <td>30</td>
    </tr>
    <tr>
      <th>3</th>
      <td>7566</td>
      <td>JONES</td>
      <td>MANAGER</td>
      <td>7839.0</td>
      <td>1995-10-31</td>
      <td>2975</td>
      <td>NaN</td>
      <td>20</td>
    </tr>
    <tr>
      <th>4</th>
      <td>7698</td>
      <td>BLAKE</td>
      <td>MANAGER</td>
      <td>7839.0</td>
      <td>1992-06-11</td>
      <td>2850</td>
      <td>NaN</td>
      <td>30</td>
    </tr>
  </tbody>
</table>"
%}


<h3 style="padding-top: 60px; margin-top: -40px;">Create dataframe with custom index</h3>

During the dataframe creation the argument "index" can be used to pass a new index values. The dataframe will be created with the passed index value.


{% 
include jupyter-html.html 
input="columns = [\"name\",\"job\",\"mgr\",\"hiredate\",\"sal\",\"comm\",\"deptno\"]

index = {\"empno\":[7369,7499,7521,7566,7698,7782,7788,7839,7844,7876,7900,7934,7902,7654]}

emp={
    \"name\":['SMITH','ALLEN','WARD','JONES','BLAKE','CLARK','SCOTT','KING','TURNER',
            'ADAMS','JAMES','MILLER','FORD','MARTIN'],
    \"job\":['CLERK','SALESMAN','SALESMAN','MANAGER','MANAGER','MANAGER','ANALYST',
           'PRESIDENT','SALESMAN','CLERK','CLERK','CLERK','ANALYST','SALESMAN'],
    \"mgr\":[7902,7698,7698,7839,7839,7839,7566,np.NaN,7698,7788,7698,7782,7566,7698],
    \"hiredate\":['1993-06-13','1998-08-15','1996-03-26','1995-10-31','1992-06-11',
                '1993-05-14','1996-03-05','1990-06-09','1995-06-04','1999-06-04',
                '2000-06-23','2000-01-21','1997-12-05','1998-12-05'],
    \"sal\":[800,1600,1250,2975,2850,2450,3000,5000,1500,1100,950,1300,3000,1250],
    \"comm\":[0,300,500,np.NaN,np.NaN,np.NaN,np.NaN,0,0,np.NaN,np.NaN,np.NaN,np.NaN,1400,],
    \"deptno\":[20,30,30,20,30,10,20,10,30,20,30,10,20,30,]
}

dfEmp=pd.DataFrame(emp, columns=columns, index= index[\"empno\"])

dfEmp.index.name = \"empno\"

dfEmp.head()"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>name</th>
      <th>job</th>
      <th>mgr</th>
      <th>hiredate</th>
      <th>sal</th>
      <th>comm</th>
      <th>deptno</th>
    </tr>   
  </thead>
  <tbody>
    <tr>
      <th>7369</th>
      <td>SMITH</td>
      <td>CLERK</td>
      <td>7902.0</td>
      <td>1993-06-13</td>
      <td>800</td>
      <td>0.0</td>
      <td>20</td>
    </tr>
    <tr>
      <th>7499</th>
      <td>ALLEN</td>
      <td>SALESMAN</td>
      <td>7698.0</td>
      <td>1998-08-15</td>
      <td>1600</td>
      <td>300.0</td>
      <td>30</td>
    </tr>
    <tr>
      <th>7521</th>
      <td>WARD</td>
      <td>SALESMAN</td>
      <td>7698.0</td>
      <td>1996-03-26</td>
      <td>1250</td>
      <td>500.0</td>
      <td>30</td>
    </tr>
    <tr>
      <th>7566</th>
      <td>JONES</td>
      <td>MANAGER</td>
      <td>7839.0</td>
      <td>1995-10-31</td>
      <td>2975</td>
      <td>NaN</td>
      <td>20</td>
    </tr>
    <tr>
      <th>7698</th>
      <td>BLAKE</td>
      <td>MANAGER</td>
      <td>7839.0</td>
      <td>1992-06-11</td>
      <td>2850</td>
      <td>NaN</td>
      <td>30</td>
    </tr>
  </tbody>
</table>"
%}

{% 
include jupyter-text.html 
input="dfEmp.index" 
output="Int64Index([7369, 7499, 7521, 7566, 7698, 7782, 7788, 7839, 7844, 7876, 7900,
            7934, 7902, 7654],
           dtype='int64')"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Check Dataframe index attributes</h3>

Use the dataframe index method to check the attributes of index. We will also change the column name of the index.
 
{% 
include jupyter-text.html 
input="dfEmp.index" 
output="RangeIndex(start=0, stop=14, step=1)"
%}


{% 
include jupyter-text.html 
input="dfEmp.index.dtype" 
output="dtype('int64')"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Rename dataframe index column</h3>

Name the default index column

{% 
include jupyter-text.html 
input="dfEmp.index.name=\"rownum\""
output="RangeIndex(start=0, stop=14, step=1, name='rownum')"
%}

{% 
include jupyter-html.html 
input="dfEmp.head()" 
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>empno</th>
      <th>name</th>
      <th>job</th>
      <th>mgr</th>
      <th>hiredate</th>
      <th>sal</th>
      <th>comm</th>
      <th>deptno</th>
    </tr>
    <tr>
      <th>rownum</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>7369</td>
      <td>SMITH</td>
      <td>CLERK</td>
      <td>7902.0</td>
      <td>1993-06-13</td>
      <td>800</td>
      <td>0.0</td>
      <td>20</td>
    </tr>
    <tr>
      <th>1</th>
      <td>7499</td>
      <td>ALLEN</td>
      <td>SALESMAN</td>
      <td>7698.0</td>
      <td>1998-08-15</td>
      <td>1600</td>
      <td>300.0</td>
      <td>30</td>
    </tr>
    <tr>
      <th>2</th>
      <td>7521</td>
      <td>WARD</td>
      <td>SALESMAN</td>
      <td>7698.0</td>
      <td>1996-03-26</td>
      <td>1250</td>
      <td>500.0</td>
      <td>30</td>
    </tr>
    <tr>
      <th>3</th>
      <td>7566</td>
      <td>JONES</td>
      <td>MANAGER</td>
      <td>7839.0</td>
      <td>1995-10-31</td>
      <td>2975</td>
      <td>NaN</td>
      <td>20</td>
    </tr>
    <tr>
      <th>4</th>
      <td>7698</td>
      <td>BLAKE</td>
      <td>MANAGER</td>
      <td>7839.0</td>
      <td>1992-06-11</td>
      <td>2850</td>
      <td>NaN</td>
      <td>30</td>
    </tr>
  </tbody>
</table>"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Set pandas dataframe index</h3>

Change the index of dataframe using the columns available in the frame. By default it will yield and new dataframe. **inplace** parameter can be used to modify the dataframe in place to avoid creating new dataframe.

{% include jupyter-html.html
input="dept={
    \"deptno\":[10,20,30,40],
    \"name\":['ACCOUNTING','RESEARCH','SALES','OPERATIONS'],
    \"location\":['NEW YORK','DALLAS','CHICAGO','BOSTON']
}
dfDept = pd.DataFrame(dept,)
dfDept.set_index(\"deptno\",inplace=True)
dfDept"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>name</th>
      <th>location</th>
    </tr>
    <tr>
      <th>deptno</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>10</th>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>20</th>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>30</th>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>40</th>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
  </tbody>
</table>"
%}

{% include jupyter-html.html
input="
# Index using non existing column
dept={
    \"deptno\":[10,20,30,40],
    \"name\":['ACCOUNTING','RESEARCH','SALES','OPERATIONS'],
    \"location\":['NEW YORK','DALLAS','CHICAGO','BOSTON']
}
dfDept = pd.DataFrame(dept,)
dfDept.set_index([[1000,2000,3000,4000]],inplace=True)
dfDept"
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
      <th>1000</th>
      <td>10</td>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>2000</th>
      <td>20</td>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>3000</th>
      <td>30</td>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>4000</th>
      <td>40</td>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
  </tbody>
</table>"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Reindex pandas dataframe</h3>

Re-indexing (**pandas.DataFrame.reindex**) will change the DataFrame row and column labels. To reindex means to conform the data to match a given set of labels along a particular axis.

Re-indexing conform DataFrame to new index with optional filling logic, placing NA/NaN in locations having no value in the previous index. A new object is produced unless the new index is equivalent to the current one and copy=False

{% include jupyter-html.html
input="index = [10,20,30,40]
dept={
    \"name\":['ACCOUNTING','RESEARCH','SALES','OPERATIONS'],
    \"location\":['NEW YORK','DALLAS','CHICAGO','BOSTON']
}
dfDept = pd.DataFrame(dept, index=index)
dfDept"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>name</th>
      <th>location</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>10</th>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>20</th>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>30</th>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>40</th>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
  </tbody>
</table>"
%}

{% include jupyter-html.html
input="dfDept = dfDept.reindex(index=[40,10,20,30,50,60])
dfDept"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>name</th>
      <th>location</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>40</th>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
    <tr>
      <th>10</th>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>20</th>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>30</th>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>50</th>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>60</th>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
  </tbody>
</table>"
%}

{% include jupyter-html.html
input="df = dfDept.reindex(index=[40,10,20,30,50,60], fill_value=\"New Dept\")
df"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>name</th>
      <th>location</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>40</th>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
    <tr>
      <th>10</th>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>20</th>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>30</th>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>50</th>
      <td>New Dept</td>
      <td>New Dept</td>
    </tr>
    <tr>
      <th>60</th>
      <td>New Dept</td>
      <td>New Dept</td>
    </tr>
  </tbody>
</table>"
%}


{% include jupyter-html.html
input="newindex=[i for i in range(0,70,10)]
df = dfDept.reindex(index=newindex, fill_value=\"New Dept\")
df"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>name</th>
      <th>location</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>New Dept</td>
      <td>New Dept</td>
    </tr>
    <tr>
      <th>10</th>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
    </tr>
    <tr>
      <th>20</th>
      <td>RESEARCH</td>
      <td>DALLAS</td>
    </tr>
    <tr>
      <th>30</th>
      <td>SALES</td>
      <td>CHICAGO</td>
    </tr>
    <tr>
      <th>40</th>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
    </tr>
    <tr>
      <th>50</th>
      <td>New Dept</td>
      <td>New Dept</td>
    </tr>
    <tr>
      <th>60</th>
      <td>New Dept</td>
      <td>New Dept</td>
    </tr>
  </tbody>
</table>"
%}


{% include jupyter-html.html
input="newindex=[i for i in range(0,70,10)]  # new index 10,20,30..70
df = dfDept.reindex(index=newindex, 
                    columns=[\"name\",\"location\",\"zip\"], # add a new column zip to dataframe 
                    fill_value=\"n.a\") # Fill nulls witn n.a
df"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>name</th>
      <th>location</th>
      <th>zip</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>n.a</td>
      <td>n.a</td>
      <td>n.a</td>
    </tr>
    <tr>
      <th>10</th>
      <td>ACCOUNTING</td>
      <td>NEW YORK</td>
      <td>n.a</td>
    </tr>
    <tr>
      <th>20</th>
      <td>RESEARCH</td>
      <td>DALLAS</td>
      <td>n.a</td>
    </tr>
    <tr>
      <th>30</th>
      <td>SALES</td>
      <td>CHICAGO</td>
      <td>n.a</td>
    </tr>
    <tr>
      <th>40</th>
      <td>OPERATIONS</td>
      <td>BOSTON</td>
      <td>n.a</td>
    </tr>
    <tr>
      <th>50</th>
      <td>n.a</td>
      <td>n.a</td>
      <td>n.a</td>
    </tr>
    <tr>
      <th>60</th>
      <td>n.a</td>
      <td>n.a</td>
      <td>n.a</td>
    </tr>
  </tbody>
</table>"
%}