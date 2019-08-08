For upgrading the image, we will be using a bin file of the existing image already developed. Let us download a .bin file to the directory we have created in the earlier step. 
<br>

Before that, let us install wget package. For doing so, execute the following command
<br>
`yum install wget -y`{{execute}}<br>
<br>
Now, navigate to the source directory.
<br>
`cd ~/source/helloworld2`{{execute}}
<br>
<br>Download the bin file of Hello-world by executing the following command.
<br>
`wget https://www.dropbox.com/s/0tg7nn86xkucfb6/bdcatalog-centos7-bluedata-helloworld-10.0.bin`{{execute}}
<br><br>
Now, Make the .bin file executable by executing the following command<br>
`chmod +x bdcatalog-centos7-bluedata-helloworld-10.0.bin`{{execute}}

