Building the Bin File. <br>
In this step, we are ready to create our image using the BlueData Application Workbench.<br> The BIN file is used by the EPIC platform to install the image you created onto the platform for use. <br>

<b>.wb</b> file contains a series of App Workbench commands that control the creation of the Catalog Image<br>
Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)

To view the content of the file, execute the following<br>
`cat ~/HDP/hdp26-ambari26.wb`{{execute}}
<br>

Following configuration will be done in the .WB file :
<br>loading json file, generating scripts(loggin.sh, appjob etc..) inside ambari-26-setup directory and adding logo to the HDP Image
<br>creating the docker image with dockerfile under “image/centos”  and packaging docker image

<br>Execute the wb file to build the BIN file. To do so run the following command:
<br>`./hdp26-ambari26.wb`{{execute}}
<br>
<br>
This step will take some time to create the BIN file. 


