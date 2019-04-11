
Lets begin using app workbench
We will be using the ready-made files you have cloned from github in order to complete building the image.

First we will create a working directory where we will be building your image binaries. 

`mkdir -p ~/src/catalog/helloworld`{{execute}}

`cd ~/src/catalog/helloworld`{{execute}}

You are in the directory

Next, we need to create a skeleton file structure. To do so execute the following command:

`bdwb --init`{{execute}}

 <b>bdwb --init</b> command will setup all the base directories and files you need in order to develop any app image
 
 Execute the below command to list all the files and folders created by bdwb command:

`ls -R`{{execute}}

Make sure the folllwing files and directories are present:

  <li>appconfig/appjob</li>
  
  <li>appconfig/logging.sh</li>
  
  <li>appconfig/macros.sh</li>
  
  <li>appconfig/startscript</li>
  
  <li>appconfig/utils.sh</li>
 
  <li>appconfig/index.html</li>  
  
  <li>image/</li>
  
<br><b><li>appjob:</li></b>provides the information on the type of job to be launched and we can also add application specific jobs.<br>
<br><b><li>Logging.sh:</li></b> provides the logging facilities for a catalog configuration bundle.<br> 
<br><b><li>Macros.sh:</li></b> contains all the built in macros of BlueData that would be executed during image creation.<br>
<br><b><li>Start script:</li></b> is a script file which contains code to start all service(s).<br> 
<br><b><li>systemd.service:</li></b> is used to bootstrap the user space and to manage system processes after booting.<br>
<br><b><li>index.html:</li></b> is a web page that will be served by the HTTPD service in this example.<br>
<br><b><li>Utils.sh:</li></b> contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.

