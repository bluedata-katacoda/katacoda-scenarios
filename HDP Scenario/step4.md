Setup additional dependencies which are needed for HDP.
<br>
<br>
In this step, we will be showing you the additional steps needed to create a successful HDP image.<br> 
We have already referenced the files that are needed, all you would need to do is copy them into the appropriate location. <br>
<br>It is always good to check what version of HDP you are using to understand the dependencies you may need setup in your base image.


Task1: 
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

<br>Remove the zip file from the folder
<br>`rm -rf ambari-26-setup.zip`{{execute}}

Task2:
<br>When our image is ready to deploy in the EPIC Application Catalog, we need to include a picture that represents the image. For your reference, we have already created a .png file for your use.
<br>`cp ~/test/Logo_HortonWorks.png ~/HDP`{{execute}}<br>
<br><b>Logo.png file</b> includes a logo file (400px x 200px .png) to visually identify each application in the App Store

Task3:
<br>Copy the json file from test directory to HDP
<br>`cp ~/test/hdp26-ambari26.json ~/HDP`{{execute}}<br>




