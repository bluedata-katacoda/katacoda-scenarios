
Clean up your source directory by removing the following items so that only the image directory remains:

<br>`rm payload.tar`{{execute}}
<br>`rm decompress.sh`{{execute}}
<br>`rm helloworld-logo.png`{{execute}}
<br>`rm -rf bdcatalog-centos7-bluedata-helloworld-10.0`{{execute}}

Create the .wb file

Please review this link before you proceed: [Link](http://docs.bluedata.com/awb34_helloworld-application-build-walkthrough$wb_section_2)

<b>.wb</b> file contains a series of App Workbench commands that control the creation of the Catalog Image

In this step, instead of creating your own .wb file, we will be utilizing the .wb file from the github clone from earlier. 

To use the existing .wb file, please run the following command. 

`cp /tmp/samples/solutions/ImageSamples/helloWorld-auto/helloworld-app.wb ~/src/catalog/helloworld`{{execute}}

To view the content of the .wb file, execute the below command

`cat -n ~/src/catalog/helloworld/helloworld-app.wb`{{execute}}



