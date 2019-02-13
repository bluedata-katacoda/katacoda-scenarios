

We need to add additional configuration fils under appconfig directory, We already have a reference configuration files, To add them follow the below steps<br>

Remove the old appconfig folder from the Spark folder<br>
`rm -rf appconfig`{{execute}}

Add the appconfig reference file using the below command from stored location(Due to space constraint in Katacoda we have uploaded the required files into dropbox)<br>
`wget https://www.dropbox.com/s/f8cjkwzz6qdov0d/appconfig.zip`{{execute}}
<br>`yum install unzip -y`{{execute}}

Unzip the file<br>
`unzip appconfig.zip`{{execute}}

Check files under appconfig directory<br>
`ls appconfig`{{execute}}

Make sure you see following files unders appconfig folder:
appjob,        
jupyterhub_config.py,  
sq_kernel.json,        
total_vcores.sh, 
core-site.xml,  
logging.sh,          
start_jupyterhub.sh,  
utils.sh,
hadoop,         
macros.sh,            
start_jupyter.sh,
spark-slave,<br> 
<br>jupyter,       
p_kernel.json,        
startscript, 
jupyterhub,    
spark,             
systemd.service

<b>Start script</b> is a script file which contains code to start all service(s).<br>

<br><b>spark-slave</b> file is a service script to start/stop/get-status of the Spark-slave service

<br><b>spark-master</b>  file is a service script to start/stop/get-status of the Spark-slave service.

<br><b>start_jupyterhub.sh</b> file which is used for bringing up and down the jupyterhub service.

<br><b>start_jupyter.sh</b> file which is used for bringing up and down the jupyter service.

<br><b> total_vcores.sh</b> file which is used to obtain the total number of virtual CPU cores assigned to the nodes.

<br><b>Macros.sh</b> contains all the built in macros of BlueData that would be executed during image creation.

<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle. 

<br><b>Utils.sh</b> contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.

<br><b>p_kernel.json</b> file provides interactive python development for Jupyter.

<br><b> sq_kernel.json</b> file provides interactive SQL interpreter for Jupyter.

<br><b>core-site.xml,hadoop</b> these files are used to setup Hadoop related configurations

<br><b>appjob</b> provides the information on the type of job to be launched and we can also add application specific jobs.<br>

<br><b>systemd.service</b> It is init system used to bootstrap the user space and to manage system processes after booting.

<br><b>jupyter and jupyterhub</b> contains all the required configuration to run jupyter and jupyterhub.
  
Remove the zip file from the folder<br>
`rm -rf appconfig.zip`{{execute}}

