To begin creating the Mysql application:<br>
Create a directory on the system named as Mysql.<br>This directory will house all the files and components for the Mysql application.<br>To do this, execute the following command:<br>
`mkdir ~/Mysql`{{execute}}<br>

Change to your new source directory by executing the following command:<br>
`cd ~/Mysql`{{execute}}<br>

Use the bdwb command to create a skeleton file structure with the appropriate directories for creating the application .bin file by executing the following commands:<br>
`bdwb --init`{{execute}}

Followings are the files and folders created in Mysql folder.<br>
`ls -R`{{execute}}

<br><b>appjob</b> Provides the information on the type job to be launched and we can also add application specific jobs.
<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle. 
<br><b>Macros.sh</b> It has all the built in macros of BlueData that would be executed during image creation.
<br><b>Start script</b> is a script file which contain code to start all service.
<br><b>systemd.service</b> It is init system used to bootstrap the user space and to manage system processes after booting.
<br><b>Utils.sh</b> It has utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.
