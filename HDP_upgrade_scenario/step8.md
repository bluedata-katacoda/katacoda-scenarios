We need to add additional configuration files, We already have a reference configuration files, To add them follow the below steps

Remove the existing set-up folder from the HDP folder
`rm -rf ambari-24-setup`{{execute}}

Add the reference file using the below command from stored location(Due to space constraint in Katacoda we have uploaded the required files into dropbox)
`wget https://www.dropbox.com/s/kqgcjxit57995rp/ambari-26-set.tgz`{{execute}} 

Untar the file
`tar -xvf ambari-26-set.tgz`{{execute}}

Delete Zip folder of set-up files to save a memory
`rm -rf ambari-26-set.tgz`{{execute}}

Check files under set up directory
`ls ambari-25-setup`{{execute}}

Make sure you see following files unders set-up folder:<br>

<b>Startscript</b> is a script file which contains code to start all service(s).<br>
<br><b>appjob</b> provides the information on the type of job to be launched and we can also add application specific jobs.<br>
<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle.<br> 
<br><b>Utils.sh</b> contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.<br>
<br>
<b>modify_host.py </b>While doing scaling up/down this code will get execute which will use modify_host.py file to scale up/down nodes for HDP cluster<br>
<br>
<b>setup_cluster.py</b> script is responsible for setting up HDP Cluster <br>
<br><b>add_remove_node.py</b>  scripts is responsible for scaling up/down the nodes in HDP cluster<br>
<br><b>Enable_Kerberos.py</b> script enable Kerberos in HDP cluster<br>

Let's Look in to Startscript<br>

`cat /root/Source/HDP/ambari-25-setup/startscript`{{execute}}

<br>Startscript contain scripts like cluster creation metadata for HDP image 
<br>cluster config choice selections for HDP image 
<br>Tenant Level settings  for HDP .
<br>
<br>The Start script will execute in each and very host. Once the host is created, the process for Ambari installation will occur. Ambari_server and agents will register in each host. Followed by Hive Oozie databases getting created.

<br>check the [Link](https://docs.hortonworks.com/HDPDocuments/Ambari-2.7.3.0/administering-ambari/content/amb_install_the_ambari_agents_manually_on_rhel-centos-oracle_7.html) to know more about process of Ambari installation and setup

<br>Cluster creation metadata section :
<br>Here we are using bdvcli utility to create information regarding node role, node fqdn , node distro_id and node group id<br>
<br>blueprint templates section :
<br>Here HDP and HDP HA will generate the configuration structure for HDP cluster and HDP HA .<br>
<br>The main script in files contain code for Cluster creation, Activating licence ,Deploying  services

