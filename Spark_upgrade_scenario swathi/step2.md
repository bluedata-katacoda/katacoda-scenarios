For upgrading the image, we will be using a bin file of the older image already developed. Let us download a .bin file to the directory we have created. Before that, let us install wget package. For doing so, execute the following command
<br>
<br>
`yum install wget -y`{{execute}}
<br>
Now, navigate to the Source directory and download the bin file by executing the following command
<br>
`cd ~/Source`{{execute}}<br>
`wget https://www.dropbox.com/s/ayopnt4at6c91xd/bdcatalog-centos7-bluedata-spark221-1.0.bin.tar`{{execute}}
<br><br>
Extract the content of the tar file by executing the following command
<br>`tar xvf bdcatalog-centos7-bluedata-spark221-1.0.bin.tar`{{execute}}
<br><br>
Now, Make the .bin file executable by executing the following command<br>
`chmod +x bdcatalog-centos7-bluedata-spark221-1.0.bin`{{execute}}

