We need to add additional configuration files, We already have a reference configuration files, To add them follow the below steps

Remove the existing set-up folder from the HDP folder
`rm -rf ambari-24-setup`{{execute}}

Add the reference file using the below command from stored location(Due to space constraint in Katacoda we have uploaded the required files into dropbox)
`wget https://www.dropbox.com/s/67atp94br8yct42/ambari-26-setup.zip`{{execute}} 

`yum install unzip -y`{{execute}}

Unzip the file
`unzip ambari-26-setup.zip`{{execute}}

Delete Zip folder of set-up files to save a memory
`rm -rf ambari-26-setup.zip`{{execute}}

Check files under set up directory
`ls ambari-26-setup`{{execute}}

Make sure you see following files unders set-up folder:<br>

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

`cat /root/HDP/ambari-26-setup/startscript`{{execute}}

<br>Startscript contain scripts like cluster creation metadata for HDP image 
<br>cluster config choice selections for HDP image 
<br>Tenant Level settings  for HDP .
<br>
<br>Start script will execute in each and every host when all host get created 
<br>After creating the hosts, ambari_server and agent gets register in each host Then HiveOozie database gets deployed.
<br>Later setup Ambari server, register Ambari server with vagents and set up base url for HDP stack

<br>Cluster creation metadata section :
<br>Here we are using bdvcli utility to create information regarding node role, node fqdn , node distro_id and node group id<br>
<br>blueprint templates section :
<br>Here HDP and HDP HA will generate the configuration structure for HDP cluster and HDP HA .<br>
<br>The main script in files contain code for Cluster creation, Activating licence ,Deploying  services

