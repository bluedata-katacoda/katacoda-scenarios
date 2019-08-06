For upgrading the image, we will be using a bin file of the existing image already developed. Let us download a .bin file to the directory we have created in the earlier step. 
<br>

Before that, let us install wget package. For doing so, execute the following command
<br>
`yum install wget -y`{{execute}}<br>
<br> Create a new directory to house the image you are going to create called
<br>mkdir -p /source/helloworld2
<br>
Now, navigate to the Source directory.
<br>
`cd ~/source/helloworld2`{{execute}}
<br>
Download the bin file by executing the following command.
<br>
`wget https://www.dropbox.com/s/0tg7nn86xkucfb6/bdcatalog-centos7-bluedata-helloworld-10.0.bin`{{execute}}
<br><br>
Extract the content of the tar file by executing the following command
<br>`tar xvf bdcatalog-centos7-bluedata-cdh514_centos7x-1.7.tar`{{execute}}
<br><br>
Now, Make the .bin file executable by executing the following command<br>
`chmod +x bdcatalog-centos7-bluedata-helloworld-10.0.bin`{{execute}}

