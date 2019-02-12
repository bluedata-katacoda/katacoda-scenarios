
Lets begin using app workbench
We will be using the ready-made files you have cloned from github in order to complete building the image.

First we will create a working directory where we will be building your image binaries. 

`mkdir -p ~/src/catalog/helloworld`{{execute}}

`cd ~/src/catalog/helloworld`{{execute}}

You are in the directory

Next, we need to create a skeleton file structure. To do so execute the following command:

`bdwb --init`{{execute}}

 <b>bdwb --init</b> command will setup all the base directories and files you need in order to develop any app image

`ls -R`{{execute}}

Make sure the folllwing files and directories are present:

  appconfig/appjob
  
  appconfig/logging.sh
  
  appconfig/macros.sh
  
  appconfig/startscript
  
  appconfig/utils.sh
 
  appconfig/index.html  
  
  image/
  
<br><b>appjob</b> Provides the information on the type job to be launched and we can also add application specific jobs.
<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle. 
<br><b>Macros.sh</b> It has all the built in macros of BlueData that would be executed during image creation.
<br><b>Start script</b> is a script file which contain code to start all service.
<br><b>systemd.service</b> It is init system used to bootstrap the user space and to manage system processes after booting.
<br><b>index.html </b>This is the web page that will be served by the HTTPD service in this example
<br><b>Utils.sh</b> It has utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.
