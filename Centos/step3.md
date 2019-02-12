To add your organisation name to the build, run the following command:

Here we have used
Organization name as BlueData

`export BASE_IMG_ORGNAME='BlueData'`{{execute}}

To identify your build, you add a build version to image. To do so run the following command:

`export BASE_IMG_VERSION='1.0'`{{execute}}

By default, the upstream image source is centos:centos7

`export CENTOS7_UPSTREAM='centos:centos7'`{{execute}}

where <b>upstream</b> is the name of the upstream image source, such as artifactory.com/enterprise:centos7. The default upstream image source is centos:centos7.

