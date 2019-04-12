
Let's build a CentOS 7 base image.

Create a directory for base images and navigate to it
<br>`mkdir -p ~/src/base_images.`{{execute}}
<br>`cd ~/src/base_images.`{{execute}}

You are in the base image directory.

Please review the link before proceeding: [Link](http://docs.bluedata.com/awb34_bdwb-shell-commands)

Retrieve the BlueData base image for CentOS 7 using bdwb command
<br>`bdwb --baseimg centos7`{{execute}}

A CentOS 7 directory will be created in the current directory. Navigate to it.
<br>`cd centos7`{{execute}}

To list the contents inside centos7 directory execute the below command
<br>`ls -a`{{execute}}

Make sure following files/directories are present:
<li>Build.sh
<li>Makefile
<li>Template 

<br><b><li>Build.sh:</b> It is a file that contains a build script to build the centos7 image<br>
<br>
<b><li>Makefile:</b> It is a program building tool which runs on Unix or Linux<br>
<br>
<b><li>Template:</b> It is a directory that houses the Dockerfile.template and limits-90-nproc.conf files<br>

To add your organisation name to the build, run the following command.
Here we have used Organization name as BlueData
<br>`export BASE_IMG_ORGNAME='bluedata'`{{execute}}

To identify your build, you add a build version to image. To do so run the following command:
<br>`export BASE_IMG_VERSION='1.0'`{{execute}}

By default, the upstream image source is centos:centos7
<br>`export CENTOS7_UPSTREAM='centos:centos7'`{{execute}}

where <b>upstream</b> is the name of the upstream image source, such as artifactory.com/enterprise:centos7. The default upstream image source is centos:centos7.

Make the new centos7 image by executing the following command
<br>`make centos7`{{execute}}


