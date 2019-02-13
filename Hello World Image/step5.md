
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

  appconfig/appjob
  
  appconfig/logging.sh
  
  appconfig/macros.sh
  
  appconfig/startscript
  
  appconfig/utils.sh
 
  appconfig/index.html  
  
  image/
  
<br><b>appjob</b> provides the information on the type of job to be launched and we can also add application specific jobs.<br>
<br><b>Logging.sh</b> provides the logging facilities for a catalog configuration bundle.<br> 
<br><b>Macros.sh</b> contains all the built in macros of BlueData that would be executed during image creation.<br>
<br><b>Start script</b> is a script file which contains code to start all service(s).<br> 
<br><b>systemd.service</b> is used to bootstrap the user space and to manage system processes after booting.<br>
<br><b>index.html </b> is a web page that will be served by the HTTPD service in this example.<br>
<br><b>Utils.sh</b> contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.



<table border="0" width="100%">
  
  <tr>
    <td>appconfig/index.html</td>
    <td>appconfig/utils.sh</td> 
    <td>appconfig/startscript</td>
  </tr>
  <tr>
    <td>appconfig/macros.sh</td>
    <td>appconfig/logging.sh</td> 
    <td>appconfig/appjob</td>
  </tr>
<tr>
    <td>image/</td>
  </tr>
</table>
