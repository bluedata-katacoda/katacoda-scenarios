To begin creating the Mysql application:<br>
Create a directory on the system named as Mysql.<br>This directory will house all the files and components for the Mysql application.<br>To do this, execute the following command:<br>
`mkdir ~/Mysql`{{execute}}<br>

Navigate to your new source directory by executing the following command:<br>
`cd ~/Mysql`{{execute}}<br>

Next, we need to create a skeleton file structure. To do so execute the following command:<br>
`bdwb --init`{{execute}}

<b>bdwb --init</b> command will setup all the base directories and files you need in order to develop any app image

To list all the files and folders created by the bdwb command, execute the following :<br>
`ls -R`{{execute}}

Make sure that you see the following files or directories:
<br>appconfig/<br>
<li>appjob</li>
<li>logging.sh</li>  
<li>macros.sh</li>  
<li>startscript</li>  
<li>utils.sh</li>
<li>systemd.service</li>
<li>image/</li>

<br><b><li>appjob:</li></b> provides the information on the type of job to be launched and we can also add application specific jobs.
<br>
<br><b><li>Logging.sh:</li></b> provides the logging facilities for a catalog configuration bundle.
<br> 
<br><b><li>Macros.sh:</li></b> contains all the built in macros of BlueData that would be executed during image creation.
<br>
<br><b><li>Startscript:</li></b> is a script file which contains code to start all service(s).
<br> 
<br><b><li>Systemd.service:</li></b> is used to bootstrap the user space and to manage system processes after booting.
<br>
<br><b><li>Utils.sh:</li></b> contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.

