
Clean up your source directory by removing the following items so that only the image directory remains:

<br>`rm payload.tar`{{execute}}
<br>`rm decompress.sh`{{execute}}
<br>`rm helloworld-logo.png`{{execute}}
<br>`rm -rf bdcatalog-centos7-bluedata-helloworld-10.0`{{execute}}

Add New logo to your BIN file

We already have a .png file in the ~/test directory. We will copy that file into the helloworld2 directory by using following command:<br>
`cp ~/test/helloworld2-logo.png ~/source/helloworld`{{execute}}

<b>Logo.png</b> file includes a logo file (400px x 200px .png) to visually identify each application in the App Store


