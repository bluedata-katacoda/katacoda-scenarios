In this step we will extract the contents of the .bin file.
<br>For this, execute the following command.<br>
`./bdcatalog-centos7-bluedata-helloworld-10.0.bin --payload`{{execute}}
<br>
<br>
This will create two files in the directory. 
<br>To view the files execute the following command<br>
`ls`{{execute}}
<br><br>This will generates some files in the source directory:
<br>payload.tar
<br>decompress.sh
<<br>Untar the payload.tar file by executing the following command
<br>`tar xvf payload.tar`{{execute}}<br>
<br> <br>This will creates a new directory, bdcatalog-centos7-bluedata-helloworld-10.0. 
<br>to view the files execute the following command<br>
`ls`{{execute}}
<br><br>Delete the bin file to save space on the device<br>
`rm -rf bdcatalog-centos7-bluedata-helloworld-10.0.bin`{{execute}}
<br><br>Navigate to the new directory, and untar the file by executing the following command
<br>`cd bdcatalog-centos7-bluedata-helloworld-10.0`{{execute}}
<br>
`tar xvf bdcatalog-centos7-bluedata-helloworld-10.0-src.tgz`{{execute}}
<br><br>Now navigate to the directory created after the above step
`cd bdcatalog-centos7-bluedata-helloworld-10.0-src`{{execute}}
<br><br>
Copy the content of this directory to the directory you created initially<br>
`cp -R * ~/source/helloworld2`{{execute}}
