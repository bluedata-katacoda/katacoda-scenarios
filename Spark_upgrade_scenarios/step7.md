

We need to add additional configuration files under appconfig directory, We already have a reference configuration files, To add them follow the below steps<br>

Remove the existing appconfig folder from the Spark folder<br>
`rm -rf appconfig`{{execute}}

Add the appconfig reference file using the below command from stored location(Due to space constraint in Katacoda we have uploaded the required files into dropbox)<br>
`wget https://www.dropbox.com/s/f8cjkwzz6qdov0d/appconfig.zip`{{execute}}
<br>`yum install unzip -y`{{execute}}

Unzip the file<br>
`unzip appconfig.zip`{{execute}}

Check files under appconfig directory<br>
`ls appconfig`{{execute}}

Make sure you see following files unders appconfig folder:<br>

<b><li>Startscript:</b> It is a script file which contains code to start all service(s).<br>
<br><b><li>Spark-slave:</b> It is a service script to start/stop/get-status of the Spark-slave service<br>
<br><b><li>Spark-master:</b>  It is a service script to start/stop/get-status of the Spark-slave service.<br>
<br><b><li>Spark-defaults.conf:</b> It is a default system properties included when running spark-submit.<br>
<br><b><li>Spark-env.sh:</b> It is a file to setup the spark environment.<br>
<br><b><li>Start_jupyterhub.sh:</b> It is a service script to start/stop/get-status of the jupyterhub service.<br>
<br><b><li>Start_jupyter.sh:</b> It is a service script to start/stop/get-status of the jupyterhub service.<br>
<br><b><li>Total_vcores.sh:</b> It is used to obtain the total number of virtual CPU cores assigned to the nodes.<br>
<br><b><li>Macros.sh:</b> Contains all the built in macros of BlueData that would be executed during image creation.<br>
<br><b><li>Logging.sh:</b> This provides the logging facilities for a catalog configuration bundle.<br> 
<br><b><li>Utils.sh:</b> Contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.<br>
<br><b><li>p_kernel.json:</b> Provides interactive python development for Jupyter.<br>
<br><b><li>Sq_kernel.json:</b> Provides interactive SQL interpreter for Jupyter.<br>
<br><b><li>Core-site.xml, Hadoop:</b> These files are used to setup Hadoop related configurations.<br>
<br><b><li>Appjob:</b> Provides the information on the type of job to be launched and we can also add application specific jobs.<br>
<br><b><li>Systemd.service:</b> It is a init system used to bootstrap the user space and to manage system processes after booting.<br>
<br><b><li>Jupyter-server:</b> It is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text.<br>
<br><b><li>Jupyterhub_config.py and Jupyter_notebook_config.py:</b> Contains required configuration to setup jupyterhub and jupyter notebook.<br>
<br><b><li>Jupyter and Jupyterhub:</b> Contains all the required configuration to run jupyter and jupyterhub.<br>
<br><b><li>Rstudio:</b> It is a free and open-source integrated development environment for R, a programming language for statistical computing and graphics.<br> 
<br><b><li>Rstudioserver:</b> It is a Linux server application that provides a web browser based interface to the version of R running on the server.<br>
<br><b><li>Start_rstudioserver.sh:</b> It is a service script to start/stop/get-status of the rstudio service.<br>
<br><b><li>Shinyserver:</b> It is a back end program, it builds a web server specifically designed to host Shiny apps.<br>
<br><b><li>Start_shinyserver.sh:</b> It is a service script to start/stop/get-status of the shiny service.<br>
<br><b><li>Pam_mkhomedir.sh:</b> It will create a users home directory if it does not exist when the session begins.<br>
<br><b><li>Shiro.ini:</b> It is a config file which defines the user credentials that are recognized by the SecurityManager.
  
Remove the zip file from the folder<br>
`rm -rf appconfig.zip`{{execute}}


