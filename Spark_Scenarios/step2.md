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
<br>appconfig/
appjob  logging.sh  macros.sh  startscript  utils.sh
<br>image/


These are the files that are required for Spark Application Image.<br>
Here <b>Start script</b> is a script file which contain code to start all service .
<br><b>Macros.sh</b> It has all the built in macros of BlueData that would be executed during image creation.
<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle. 
<br><b>Utils.sh</b> It has utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.
<br><b>appjob</b> Provides the information on the type job to be launched and we can also add application specific jobs.

Now, we will create a folder called “centos” inside the empty image directory. Execute the following command to do so :

`mkdir ~/Spark/image/centos`{{execute}}
