To begin the application development, we will first need to create a directory called “Spark” or any directory name of your choice. This directory will house all the files and components necessary to create the application image. 

To create a directory, execute the following command:
<br>

`mkdir ~/Spark`{{execute}}<br>

Change to your new source directory:<br>

`cd ~/Spark`{{execute}}<br>

Use the bdwb command to create a skeleton file structure with the appropriate directories for creating the Application .bin file:<br>

`bdwb --init`{{execute}}

Click on the below command to view the files and directories created in Spark folder.<br>

`ls -R`{{execute}}

You will see the following:
./appconfig:
appjob  logging.sh  macros.sh  startscript  utils.sh
./image:

Now, we will create a folder called “centos” inside the empty image directory. Execute the following command to do so :

`mkdir ~/Spark/image/centos`{{execute}}
