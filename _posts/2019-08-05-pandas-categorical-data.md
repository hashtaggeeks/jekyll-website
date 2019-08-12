---
title: Pandas Categorical Data
description: What is pandas categorical data, how to create categories in pandas, Categorical Datatype, CategoricalDtype, Working with pandas categories, Renaming categories, add new categories
layout: content
categories: pandas
featured: true 
image-url: /images/categorical-data.jpg
alt-img: Pandas dataframe index
short-description: "Categoricals are a pandas data type corresponding to categorical variables in statistics. A categorical variable takes on a limited, and usually fixed, number of possible value. Examples are gender, continent, direction"
---

{%
include related-post.html
input = 
'how-to-create-pandas-dataframe.html,1. How to create pandas dataframe|
pandas-dataframe-index.html,2. Pandas dataframe Index'
%}


<h1 style="padding-top: 60px; margin-top: -40px;">Pandas Categorical Datatype </h1>

Categoricals are a pandas data type corresponding to categorical variables in statistics. A categorical variable takes on a limited, and usually fixed, number of possible values.

All values of categorical data are either in categories or np.nan. Order is defined by the order of categories, not lexical order of the values. Internally, the data structure consists of a categories array and an integer array of codes which point to the real value in the categories array.

<h3 style="padding-top: 60px; margin-top: -40px;">Create Categorical column</h3>

Simple method is to specify dtype="category" when constructing a series

{% 
include jupyter-text.html 
input="sr = pd.Series([\"east\", \"west\", \"north\", \"east\", \"south\", \"west\"], dtype=\"category\")
sr"
output="0     east
1     west
2    north
3     east
4    south
5     west
dtype: category
Categories (4, object): [east, north, south, west]"
%}

Converting an existing Series or column to a category datatype

{% 
include jupyter-text.html 
input="
df = pd.DataFrame({'name': ['Alice','Allen','Ward','Jones'], 
                   'gender':['Female','Male','Male','Male']})
df[\"gender\"] = df[\"gender\"].astype(\"category\")
df.dtypes"
output="
name        object
gender    category
dtype: object"
%}

By passing a **pandas.Categorical** object to a Series or assigning it to a DataFrame.

{% 
include jupyter-text.html 
input="l_cat = pd.Categorical([\"Female\",\"Male\",\"Male\",\"Male\"])

df = pd.DataFrame({'name': ['Alice','Allen','Ward','Jones'], 
                   'gender':['Female','Male','Male','Male']})
df[\"gender\"] = l_cat
df.dtypes"
output="
name        object
gender    category
dtype: object"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Pandas CategoricalDType</h3>

Create a CategoricalDtype and assign that to column datatype.

{% 
include jupyter-text.html 
input="from pandas.api.types import CategoricalDtype
cat_type = CategoricalDtype(categories=['Male','Female'],ordered=True)

df = pd.DataFrame({'name': ['Alice','Allen','Ward','Jones'], 
                   'gender':['Female','Male','Male','Male']})
df['gender'] = df['gender'].astype(cat_type)

df['gender']"
output="0    Female
1      Male
2      Male
3      Male
Name: gender, dtype: category
Categories (2, object): [Male < Female]"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Remanimg Categories</h3>

Renaming categories is done by assigning new values to the Series.cat.categories property or by using the rename_categories() method: 

{% 
include jupyter-text.html 
input="# create daframe and change gender column to category type 
df = pd.DataFrame({'name': ['Alice','Allen','Ward','Jones'], 
                   'gender':['Female','Male','Male','Male']})
df['gender'] = df['gender'].astype('category')
df.dtypes"
output="0    Female
1      Male
2      Male
3      Male
Name: gender, dtype: category
Categories (2, object): [Male < Female]"
%}

{% 
include jupyter-text.html 
input="# Check the values in the categories
df['gender'].cat.categories"
output="Index(['Female', 'Male'], dtype='object')"
%}


Method 1 :: Assign new value to the category, here we will assign it to M and F

{% 
include jupyter-text.html 
input="df['gender'].cat.categories = [s[0] for s in df['gender'].cat.categories]
df['gender'].cat.categories"
output="Index(['F', 'M'], dtype='object')"
%}

Method 2 :: Using the rename_categories() method will assign M and F

{% 
include jupyter-text.html 
input="df['gender'] = df['gender'].cat.rename_categories(['F', 'M'])
df['gender'].dtypes"
output="CategoricalDtype(categories=['F', 'M'], ordered=False)"
%}

Method 3 :: Pass a dict-object to map the renaming

{% 
include jupyter-text.html 
input="df['gender'] = df['gender'].cat.rename_categories({'Female':'Fe', 'Male':'Ma'})
df['gender'].dtypes"
output="CategoricalDtype(categories=['Fe', 'Ma'], ordered=False)"
%}


<h3 style="padding-top: 60px; margin-top: -40px;">Adding new categories</h3>
Using add_categories() method new categories can be added

{% 
include jupyter-text.html 
input="df['gender'] = df['gender'].cat.add_categories(['Cat1','Cat2'])
df['gender'].dtypes"
output="CategoricalDtype(categories=['Fe', 'Ma', 'Cat1', 'Cat2'], ordered=False)"
%}

<h3 style="padding-top: 60px; margin-top: -40px;">Removing categories, unused category items</h3>
Using remove_categories() method remove specific categories or use remove_unused_categories() to remove unused items

{% 
include jupyter-text.html 
input="df['gender'] = df['gender'].cat.remove_categories(['Cat1','Cat2'])
df['gender'].dtypes"
output="CategoricalDtype(categories=['Fe', 'Ma'], ordered=False)"
%}

{% 
include jupyter-text.html 
input="df['gender'] = df['gender'].cat.remove_categories(['Ma'])
df"
output="CategoricalDtype(categories=['Fe', 'Ma'], ordered=False)"
%}

If an used category is removed the data will become NaN

{% 
include jupyter-html.html 
input="df['gender'] = df['gender'].cat.remove_categories(['Ma'])
df"
output="<table border=\"1\" class=\"dataframe\">
  <thead>
    <tr style=\"text-align: right;\">
      <th></th>
      <th>name</th>
      <th>gender</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Alice</td>
      <td>Fe</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Allen</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Ward</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Jones</td>
      <td>NaN</td>
    </tr>
  </tbody>
</table>"
%}