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

Check files under appconfig directory
`ls ambari-26-setup`{{execute}}

Make sure you see following files unders appconfig folder:<br>

<b>Startscript</b> is a script file which contains code to start all service(s).<br>
<br><b>appjob</b> provides the information on the type of job to be launched and we can also add application specific jobs.<br>
<br><b>Logging.sh</b> This provides the logging facilities for a catalog configuration bundle.<br> 
<br><b>Utils.sh</b> contains utility functions defined which provides information on docker id, cpu share, memory status and fqdn of the current container.<br>



