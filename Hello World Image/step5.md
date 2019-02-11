
Create a directory for the Hello World Application. This is where all the data will reside. Navigate to the directory after creating it.”

`mkdir -p ~/src/catalog/helloworld`{{execute}}

`cd ~/src/catalog/helloworld`{{execute}}

You are in the directory

Create a skeleton file structure with the appropriate directories for creating the application .bin file

`bdwb --init`{{execute}}

`ls -R`{{execute}}

Make sure the folllwing files and directories are present:

  appconfig/appjob
  
  appconfig/logging.sh
  
  appconfig/macros.sh
  
  appconfig/startscript
  
  appconfig/utils.sh
  
  image/
  
<br><b>appjob</b> Provides the information on the type job to be launched and we can also add application specific jobs.
<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle. 
<br><b>Macros.sh</b> It has all the built in macros of BlueData that would be executed during image creation.
<br><b>Start script</b> is a script file which contain code to start all service.
<br><b>systemd.service</b> It is init system used to bootstrap the user space and to manage system processes after booting.
<br><b>Utils.sh</b> It has utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.
