For upgrading the image, we will be using a bin file of the existing image already developed. Let us download a .bin file to the directory we have created in the earlier step. 
<br>

Before that, let us install wget package. For doing so, execute the following command
<br>
`yum install wget -y`{{execute}}<br>
<br>
Now, navigate to the Source directory.
<br>
`cd ~/Source`{{execute}}
<br>
<br>
Download the bin file by executing the following command.
<br>
`https://s3.amazonaws.com/bluedata-catalog/bundles/catalog/external/docker/EPIC-3.7/bdcatalog-centos7-bluedata-cdh5144multi-1.3.bin`{{execute}}
<br><br>
Now, Make the .bin file executable by executing the following command<br>
`chmod +x bdcatalog-centos7-bluedata-cdh5144multi-1.3.bin`{{execute}}

