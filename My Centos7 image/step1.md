Let's build a centos7 image

1: To build a custom CentOS 7.x base image:

2:Create a directory by executing the mkdir command, such as:
`mkdir -p ~/src/base_images`{{execute}}

3.Switch to the directory you just created by executing the cd command, such as
`cd ~/src/base_images`{{execute}}

4.Retrieve the BlueData base image for CentOS 7 by executing the following command
`bdwb --baseimg centos7`{{execute}}

This creates a directory called centos7 under your current directory.
5.Switch to the centos7 directory by executing the following command:

`cd centos7`{{execute}}

`ls -a`{{execute}}
6.You may override one or more of the following parameter(s) by executing the following command(s), as appropriate:

`export BASE_IMG_ORGNAME='enterprise'`{{execute}}, where <orgname> is the name of your organization, such as enterprise. The default name is bluedata.
  
 7.`export BASE_IMG_VERSION='1.0'`{{execute}}, 
 
 where <version> is the image version number, such as 3.0. The default version is the EPIC_BASE_IMG_VERSION
  
8. `export CENTOS7_UPSTREAM='centos:centos7'`{{execute}},

where <upstream> is the name of the upstream image source, such as artifactory.com/enterprise:centos7. The default upstream image source is centos:centos7.
  
9.Modify the base image as needed. See HelloWorld Application Image Walkthrough for an example of creating a custom image.
  
10.Make the new image by executing the following command:
  
`make centos7`{{execute}}

11.Verify that the image has built successfully by executing the command

`docker images`{{execute}}



