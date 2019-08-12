
Here we are cleaning up our source directory by removing the following items so that only the image directory remains
<br>Execute the below commands to remove the directory which are not required
<br>`rm -rf payload.tar`{{execute}}
<br>`rm -rf decompress.sh`{{execute}}
<br>`rm -rf helloworld-logo.png`{{execute}}
<br>`rm -rf bdcatalog-centos7-bluedata-helloworld-10.0`{{execute}}

Add New logo to your BIN file

We already have a .png file in the ~/test directory. We will copy that file into the helloworld2 directory by using following command:<br>
`cp ~/test/helloworld2-logo.png ~/source/helloworld2`{{execute}}

Logo file (400px x 200px .png) to visually identify each application in the App Store


