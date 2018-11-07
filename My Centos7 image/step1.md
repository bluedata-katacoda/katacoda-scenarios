Let's build a centos7 image

Follow these steps To build a custom CentOS 7.x base image 

<h2>Step1</h2> 

Create a directory by executing the mkdir command, such as:
`mkdir -p ~/src/base_images`{{execute}}

<h2>Step2</h2> 
Switch to the directory you just created by executing the cd command, such as
`cd ~/src/base_images`{{execute}}

<h2>Step3</h2> 
Retrieve the BlueData base image for CentOS 7 by executing the following command
`bdwb --baseimg centos7`{{execute}}
This creates a directory called centos7 under your current directory.

<h2>Step4</h2> 
 Switch to the centos7 directory by executing the following command:
`cd centos7`{{execute}}

<h2>Step5</h2> 
`ls -a`{{execute}}

<h2>Step6</h2> 
You may override one or more of the following parameter(s) by executing the following command(s), as appropriate:

`export BASE_IMG_ORGNAME='enterprise'`{{execute}}, 
 `export BASE_IMG_VERSION='1.0'`{{execute}}, 
 `export CENTOS7_UPSTREAM='centos:centos7'`{{execute}},
 
 <h2>Step7</h2>   
 Make the new image by executing the following command:
`make centos7`{{execute}}

<h2>Step8</h2> 
Verify that the image has built successfully by executing the command
`docker images`{{execute}}



