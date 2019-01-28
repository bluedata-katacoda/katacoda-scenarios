To begin the application development, we will first need to create a directory called “Spark” or any directory name of your choice. This directory will house all the files and components necessary to create the application image. 
To create a directory, execute the following command:
<br>

`mkdir ~/Spark`{{execute}}<br>

Change to the newly created directory:<br>

`cd ~/Spark`{{execute}}<br>

Once in the new directory, the first step is to create all the base file structures necessary to create the application image. To do so, execute the following command :<br>

`bdwb --init`{{execute}}

To view the files & directories created by this command, execute the following command.<br>

`ls -R`{{execute}}

You will see the following:
./appconfig:
appjob  logging.sh  macros.sh  startscript  utils.sh
./image:

<br><b>These are the files that are required for Spark Application Image.</b> Scripts run inside each container during cluster creation and are located in the appconfig folder<br>
Now, we will create a folder called “centos” inside the empty image directory. Execute the following command to do so :

`mkdir ~/Spark/image/centos`{{execute}}
