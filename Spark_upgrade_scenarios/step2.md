For upgrading the image, we will be using a bin file of the existing image already developed. Let us download a .bin file to the directory we have created.

<br>Before that, let us install wget package. For doing so, execute the following command
<br>`yum install wget -y`{{execute}}

<br>
Now, navigate to the Source directory and download the bin file by executing the following command(Due to space constraint in Katacoda we have uploaded the required files into dropbox)
<br>`cd ~/Source`{{execute}}<br>
`wget https://www.dropbox.com/s/r4m3bba2qtueu5q/bdcatalog-centos7-bluedata-spark221-1.0.bin.tar`{{execute}}<br>
<br><br>
Extract the content of the tar file by executing the following command
<br>`tar xvf bdcatalog-centos7-bluedata-spark221-1.0.bin.tar`{{execute}}

<br><br>
Now, Make the .bin file executable by executing the following command<br>
`chmod +x bdcatalog-centos7-bluedata-spark221-1.0.bin`{{execute}}

