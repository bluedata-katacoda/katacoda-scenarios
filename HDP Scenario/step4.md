Setup additional dependencies which are needed for HDP.
<br>
<br>
In this step, we will be showing you the additional steps needed to create a successful HDP image.<br> 
We have already referenced the files that are needed, all you would need to do is copy them into the appropriate location. <br>
<br>It is always good to check what version of HDP you are using to understand the dependencies you may need setup in your base image.


<br>We need to add additional configuration files under the HDP directory. We have already made these files for you, to add them in, please execute the following commands:
Execute the below command
<br>`yum install wget -y`{{execute}}

Add the Configuration files using the below command(Due to space constraint in Katacoda we have uploaded the required appconfig files into dropbox)<br>
`wget wget https://www.dropbox.com/s/67atp94br8yct42/ambari-26-setup.zip`{{execute}}
<br>`yum install unzip -y`{{execute}}

<br>Unzip the file<br>
`unzip ambari-26-setup.zip`{{execute}}

<br>Check the files under ambari-26-setup directory
<br>`ls ambari-26-setup`{{execute}}

<b>Startscript</b> is a script file which contains code to start all service(s).<br>
<br><b>appjob</b> provides the information on the type of job to be launched and we can also add application specific jobs.<br>
<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle.<br> 
<br><b>Utils.sh</b> contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.<br>
<br>
<b>modify_host.py </b>While doing scaling up/down this code will get execute which will use modify_host.py file to scale up/down nodes for HDP cluster<br>
<br>
<b>setup_cluster.py</b> script is responsible for setting up CDH Cluster <br>
<br><b>add_remove_node.py</b>  scripts is responsible for scaling up/down the nodes in CDH cluster<br>
<br><b>Enable_Kerberos.py</b> script enable Kerberos in CDH cluster<br>

Let's Look in to Startscript<br>
<br>Startscript contain scripts like cluster creation metadata for HDP image 
<br>cluster config choice selections for HDP image
<br>Tenant Level settings  for HDP .

`cat /root/HDP/ambari-26-setup/startscript`{{execute}}
<br>
<br>The Start script will execute in each and very host. Once the host is created, the process for Ambari installation will occur. Ambari_server and agents will register in each host. Followed by Hive Oozie databases getting created.

<br>check the link  [Link] (https://docs.hortonworks.com/HDPDocuments/Ambari-2.7.3.0/administering-ambari/content/amb_install_the_ambari_agents_manually_on_rhel-centos-oracle_7.html) to know more about process of Ambari installation and setup

<br>Cluster creation metadata section :
<br>Here we are using bdvcli utility to create information regarding node role, node fqdn , node distro_id and node group id

<br>In blueprint templates section :
<br>Here HDP and HDP HA will generate the configuration structure for HDP cluster and HDP HA .

<br>The main script in files contain code for Cluster creation, Activating licence ,Deploying services


<br>Remove the zip file from the folder
<br>`rm -rf ambari-26-setup.zip`{{execute}}









