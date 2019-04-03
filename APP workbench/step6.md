
To build a custom CentOS 6.x base image:

1.SSH into the system where App Workbench is installed.
2.Create a directory by executing the mkdir command, such as:
$> mkdir -p ~/src/base_images.
3.Switch to the directory you just created by executing the cd command, such as:
$> cd ~/src/base_images.
4.Retrieve the BlueData base image for CentOS 6 by executing the following command:
$> bdwb --baseimg centos6.

5.This creates a directory called centos6 under your current directory.
6.Switch to the centos6 directory by executing the following command:
$> cd centos6
$> ls -a

7.You may override one or more of the following parameter(s) by executing the following command(s), as appropriate:
$> export BASE_IMG_ORGNAME='<orgname>', where <orgname> is the name of your organization, such as enterprise. The default name is bluedata.
$> export BASE_IMG_VERSION
$> export CENTOS6_UPSTREAM='<upstream>', where <upstream> is the name of the upstream image source, such as artifactory.com/enterprise:centos6. The default upstream image source is centos:centos6.
8.Modify the base image as needed. See HelloWorld Application Image Walkthrough for an example of creating a custom image.
9.Make the new image by executing the following command:
$> make centos6
10.Verify that the image has built successfully by executing the command $> docker images.

