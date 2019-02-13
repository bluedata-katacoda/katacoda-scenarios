

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

Make sure you see following files unders appconfig folder:<br>
appjob,                      
logging.sh, 
<br>utils.sh,
<br>macros.sh,
<br>startscript,
<br>core-site.xml,      
spark-defaults.conf, 
<br>spark-master, 
<br>spark-slave,      
spark-env.sh,            
hadoop,                      
pam_mkhomedir.sh,  
systemd.service,
<br>jupyter,
<br>jupyterhub,
<br>jupyter_notebook_config.py,
<br>jupyter-server,
<br>jupyterhub_config.py,
<br>start_jupyterhub.sh,
<br>start_jupyter.sh,                       
p_kernel.json,     
total_vcores.sh,
<br>rstudio,
<br>rstudioserver,
<br>start_rstudioserver.sh,
<br>sq_kernel.json,                      
shinyserver,
<br>start_shinyserver.sh,
<br>shiro.ini 

<b>Start script</b> is a script file which contains code to start all service(s).<br>
<br><b>spark-slave</b> file is a service script to start/stop/get-status of the Spark-slave service<br>
<br><b>spark-master</b>  file is a service script to start/stop/get-status of the Spark-slave service.<br>
<br><b>spark-defaults.conf</b> is a default system properties included when running spark-submit.<br>
<br><b>spark-env.sh</b> is a file to setup the spark environment.<br>
<br><b>start_jupyterhub.sh</b> file is a service script to start/stop/get-status of the jupyterhub service.<br>
<br><b>start_jupyter.sh</b> file is a service script to start/stop/get-status of the jupyterhub service.<br>
<br><b> total_vcores.sh</b> file which is used to obtain the total number of virtual CPU cores assigned to the nodes.<br>
<br><b>Macros.sh</b> contains all the built in macros of BlueData that would be executed during image creation.<br>
<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle.<br> 
<br><b>Utils.sh</b> contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.<br>
<br><b>p_kernel.json</b> file provides interactive python development for Jupyter.<br>
<br><b> sq_kernel.json</b> file provides interactive SQL interpreter for Jupyter.<br>
<br><b>core-site.xml,hadoop</b> these files are used to setup Hadoop related configurations.<br>
<br><b>appjob</b> provides the information on the type of job to be launched and we can also add application specific jobs.<br>
<br><b>systemd.service</b> It is init system used to bootstrap the user space and to manage system processes after booting.<br>
<br><b>jupyter-server</b> is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text.<br>
<br><b>jupyterhub_config.py and jupyter_notebook_config.py</b> contains required configuration to setup jupyterhub and jupyter notebook.<br>
<br><b>jupyter and jupyterhub</b> contains all the required configuration to run jupyter and jupyterhub.<br>
<br><b>rstudio</b> is a free and open-source integrated development environment for R, a programming language for statistical computing and graphics.<br> 
<br><b>rstudioserver</b> is a Linux server application that provides a web browser based interface to the version of R running on the server.<br>
<br><b>start_rstudioserver.sh</b> file is a service script to start/stop/get-status of the rstudio service.<br>
<br><b>shinyserver</b> is a back end program, it builds a web server specifically designed to host Shiny apps.<br>
<br><b>start_shinyserver.sh</b> file is a service script to start/stop/get-status of the shiny service.<br>
<br><b>pam_mkhomedir.sh</b> will create a users home directory if it does not exist when the session begins.
  
Remove the zip file from the folder<br>
`rm -rf appconfig.zip`{{execute}}


