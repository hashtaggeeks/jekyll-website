---
title: How To Install Anaconda Python
description: download anaconda, install anaconda python in linux machines. anaconda installer, run jupyter notebook, verify anaconda installation.
layout: content
categories: python pandas
featured: true 
image-url: /images/anaconda.jpg
alt-img: anaconda-python
short-description: "Designed for data science and machine learning workflows, <a href='https://www.anaconda.com' target='_blank'>Anaconda</a> is an open-source package manager, environment manager, and distribution of the <a href='https://www.python.org/' target='_blank'>Python</a> and <a href='https://www.r-project.org/' target='_blank'>R</a> programming languages."
---

<h3 style="padding-top: 60px; margin-top: -40px;">How To Install Anaconda on Linux</h3>

<a href="https://www.anaconda.com/" target="_blank">Anaconda</a> is an open-source package manager, environment manager, it is designed for data science and machine learning workflows. Anaconda offers collection of packages designed for normal programming to large scale data science and statistical analysis projects.

Anaconda comes with a desktop graphical user interface (GUI) program called **<a href="https://docs.anaconda.com/anaconda/navigator/" target="_blank">Anaconda Navigator</a>**, which links all the applications included with the distribution like <a href="https://www.rstudio.com/" target="_blank">RStudio</a>, <a href="https://ipython.org/" target="_blank">iPython</a>, <a href="http://jupyter.org/" target="_blank">Jupyter Notebook</a>, <a href="https://blog.jupyter.org/jupyterlab-is-ready-for-users-5a6f039b8906" target="_blank">JupyterLab</a>, <a href="https://spyder-ide.github.io/" target="_blank">Spyder</a>, <a href="http://glueviz.org/" target="_blank">Glue</a>, and <a href="https://orange.biolab.si/" target="_blank">Orange</a>.

Anaconda distribution includes <a href="https://conda.io/" target="_blank">Conda</a> package manager, which helps to search and install 1000's of packages with ease.

Below is the step by step guide to insatall Anaconda in Linux.

<h3 style="padding-top: 60px; margin-top: -40px;">Prerequisites</h3>
Machine should have a non-root user with sudo privileges set up before proceeding with the steps below.

<div class="card">
<div class="card-body ">
{% highlight shell %}
$ grep '^sudo:.*$' /etc/group | cut -d: -f4
krish

$ getent group sudo | cut -d: -f4
krish
{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Check the Latest Version of Anaconda</h3>

Head over to <a href="https://www.anaconda.com/distribution/" target="_blank"> https://www.anaconda.com/distribution/</a>, once you are there, click on **Linux** and select the Python version of your preferece to **/temp** folder. or use curl or wget to download the verision from <a href="https://repo.anaconda.com/archive/" target="_blank">https://repo.anaconda.com/archive/

<div class="card">
<div class="card-body ">
{% highlight shell %}
$ cd /tmp
$ curl -O https://repo.anaconda.com/archive/Anaconda2-2019.07-Linux-x86_64.sh
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Verify the Integrity of the Installer</h3>
Once download is complete verify the integrity of the installer by generating the SHA-256 checksum. Use the sha256sum or md5sum command along with the filename to generate the checksum and match with the values in the site <a href="https://docs.anaconda.com/anaconda/install/hashes/" target="_blank"> https://docs.anaconda.com/anaconda/install/hashes/


<div class="card">
<div class="card-body ">
{% highlight shell %}
$ sha256sum Anaconda3-2019.07-Linux-x86_64.sh
69581cf739365ec7fb95608eef694ba959d7d33b36eb961953f2b82cb25bdf5a  Anaconda3-2019.07-Linux-x86_64.sh
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Run the Anaconda Script</h3>

Accpet the license agreement by entering [yes], you will be prompted to choose the location of the installation. Press ENTER to accept the default location, or specify a different location.

<div class="card">
<div class="card-body ">
{% highlight shell %}
$ bash Anaconda3-2019.07-Linux-x86_64.sh

Welcome to Anaconda3 2019.07

In order to continue the installation process, please review the license
agreement.
Please, press ENTER to continue
>>>
===================================
Anaconda End User License Agreement
===================================

Copyright 2015, Anaconda, Inc.

All rights reserved under the 3-clause BSD License:

Redistribution and use in source and binary forms, with or without modification, are permitte
d provided that the following conditions are met:

Do you accept the license terms? [yes|no]
[no] >>> yes

Anaconda3 will now be installed into this location:
/home/krish/anaconda3

  - Press ENTER to confirm the location
  - Press CTRL-C to abort the installation
  - Or specify a different location below

[/home/krish/anaconda3] >>>

{% endhighlight %}
</div>
</div>


<h3 style="padding-top: 60px; margin-top: -40px;">Finish the installlation process</h3>

Installation will take time, wait for the insttlation process to finish.

<div class="card">
<div class="card-body ">
{% highlight shell %}
Output
Anaconda3 will now be installed into this location:
/home/kris/anaconda3

  - Press ENTER to confirm the location
  - Press CTRL-C to abort the installation
  - Or specify a different location below

[/home/krish/anaconda3] >>>

installation finished.
Do you wish the installer to prepend the Anaconda3 install location
to PATH in your /home/krish/.bashrc ? [yes|no]
[no] >>>

{% endhighlight %}
</div>
</div>
<br>
Type yes to use the **conda** command. This is recommmended

<h3 style="padding-top: 60px; margin-top: -40px;">Validate the installation</h3>

<div class="card">
<div class="card-body ">
{% highlight shell %}
$ source ~/.bashrc
$ conda -V
conda 4.7.10
{% endhighlight %}
</div>
</div>

<h3 style="padding-top: 60px; margin-top: -40px;">Launch Anaconda-Navigator</h3>
<div class="card">
<div class="card-body ">
{% highlight shell %}
$ anaconda-navigator
{% endhighlight %}
</div>
</div>
<br>

<img src="{{'/images/anaconda-navigator.png' | prepend: site.baseurl}}" class="img-fluid" alt="anaconda-navigator">
