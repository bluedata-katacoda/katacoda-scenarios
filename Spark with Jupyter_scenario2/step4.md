Setup additional dependencies which are needed for Spark.
<br>
<br>
In this step, we will be showing you the additional steps needed to create a successful Spark image.<br> 
We have already referenced the files that are needed, all you would need to do is copy them into the appropriate location. <br>
<br>The dependencies that need to be configured is Jupyter, which we will provide a shell script , and configuring the correct version of Java for Spark. <br>
<br>It is always good to check what version of Spark you are using to understand the dependencies you may need setup in your base image.


<b>Task1:</b>
<br>Copy the pre-made jupyter script to the centos folder:<br>
`cp ~/test/configure_jupyter.sh ~/Spark/image/centos`{{execute}}

Feel free to run the following command to see what is being executed in the shell script:<br>
`cat ~/Spark/image/centos/configure_jupyter.sh`{{execute}}

You will see the steps required to setup jupyter listed.

Next, copy over the java script:.<br>
`cp ~/test/configure_java8.sh ~/Spark/image/centos`{{execute}}

<b>Task2:</b> 
<br>We need to add additional configuration files under the appconfig directory. We have already made these files for you, to add them in, please execute the following commands:
<br>Remove the appconfig folder from the Spark folder<br>
`rm -rf appconfig`{{execute}}
<br>`yum install wget -y`{{execute}}

Add the appconfig reference files using the below command(Due to space constraint in Katacoda we have uploaded the required appconfig files into dropbox)<br>
`wget https://www.dropbox.com/s/wbnr83q26przbs6/appconfig.zip`{{execute}}
<br>`yum install unzip -y`{{execute}}

<br>Unzip the file<br>
`unzip appconfig.zip`{{execute}}

<br>Check the files under appconfig directory
<br>`ls appconfig`{{execute}}

Make sure you see following files unders appconfig folder:<br>
<b><li>Startscript:</b> It is a script file which contains code to start all service(s).
<br>
<br><b><li>spark-slave:</b> It is a service script to start/stop/get-status of the Spark-slave service.
<br>
<br><b><li>spark-master:</b> It is a service script to start/stop/get-status of the Spark-slave service.
<br>
<br><b><li>spark-defaults.conf:</b> It is a default system properties included when running spark-submit.<br>
<br><b><li>spark-env.sh:</b> It is a file to setup the spark environment.<br>
<br><b><li>start_jupyterhub.sh:</b> It is used for bringing up and down the jupyterhub service.
<br>
<br><b><li>start_jupyter.sh:</b> It is used for bringing up and down the jupyter service.
<br>
<br><b><li>total_vcores.sh:</b> It is used to obtain the total number of virtual CPU cores assigned to the nodes.
<br>
<br><b><li>Macros.sh:</b> Contains all the built in macros of BlueData that would be executed during image creation.
<br>
<br><b><li>Logging.sh:</b> Provides the logging facilities for a catalog configuration bundle. 
<br>
<br><b><li>Utils.sh:</b> Contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.
<br>
<br><b><li>p_kernel.json:</b> Provides interactive python development for Jupyter.
<br>
<br><b><li>sq_kernel.json:</b> Provides interactive SQL interpreter for Jupyter.
<br>
<br><b><li>core-site.xml,hadoop:</b> These files are used to setup Hadoop related configurations
<br>
<br><b><li>Appjob:</b> Provides the information on the type of job to be launched and we can also add application specific jobs.
<br>
<br><b><li>Systemd.service:</b> It is used to bootstrap the user space and to manage system processes after booting.
<br>
<br><b><li>jupyter and jupyterhub:</b> Contains all the required configuration to run jupyter and jupyterhub.
<br>
<br><b><li>p_kernel.json:</b> Provides interactive python development for Jupyter.<br>
<br>Remove the zip file from the folder
<br>`rm -rf appconfig.zip`{{execute}}

<b>Task3:</b>
<br>When our image is ready to deploy in the EPIC Application Catalog, we need to include a picture that represents the image. For your reference, we have already created a .png file for your use.
<br>`cp ~/test/Logo_Spark.png ~/Spark`{{execute}}<br>
<br><b>Logo.png file</b> includes a logo file (400px x 200px .png) to visually identify each application in the App Store





