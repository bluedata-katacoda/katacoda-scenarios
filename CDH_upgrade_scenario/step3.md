In this step we will extract the contents of the .bin file.

<br>For this, execute the following command.<br>
`./bdcatalog-centos7-bluedata-cdh514_centos7x-1.7.bin --payload`{{execute}}
<br>
<br>
This will create two files in the directory. (to view the files execute the following command)<br>
`ls`{{execute}}
<br><br>Untar the payload.tar file by executing the following command
<br>`tar xvf payload.tar`{{execute}}<br>
<br><br>This will create new directories. (to view the files execute the following command)<br>
`ls`{{execute}}
<br><br>Delete the bin file to save space on the device<br>
`rm -rf bdcatalog-centos7-bluedata-cdh514_centos7x-1.7.bin`{{execute}}
<br><br>Navigate to the new directory, and untar the file by executing the following command
<br>`cd bdcatalog-centos7-bluedata-cdh514_centos7x-1.7`{{execute}}
<br>
`tar xvf bdcatalog-centos7-bluedata-cdh514_centos7x-1.7-src.tgz`{{execute}}
<br><br>Now navigate to the directory created after the above step
`cd bdcatalog-centos7-bluedata-cdh514_centos7x-1.7-src`{{execute}}
<br><br>
Copy the content of this directory to the directory you created initially<br>
`cp -R * ~/Source/CDH`{{execute}}
