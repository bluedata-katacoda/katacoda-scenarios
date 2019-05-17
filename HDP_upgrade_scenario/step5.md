Now, we will make changes in .wb file <br>

<b>.wb</b> file contains a series of App Workbench commands that control the creation of the Catalog Image<br>
Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)

Plaese review this link before you proceed: [Link](http://docs.bluedata.com/awb34_updating-an-existing-image)<br>
<br>
For your reference, we have already created a ready .wb file in the ~/test directory. We will copy that file into the HDP directory using the following command:<br>
`cd ~/Source/HDP`{{execute}}<br>
<br>Delete the existing .wb file before you copy the new .wb file by executing the below command
<br>`rm -rf  hdp25-ambari24.wb`{{execute}}<br>
<br>Copy the new .wb file into HDP directory using the following command:
<br>`cp ~/test/hdp26-ambari26.wb ~/Source/HDP`{{execute}}

Following configuration will be done in the .WB file :
<br>loading json file, generating scripts(loggin.sh, appjob etc..) inside ambari-26-setup directory and adding logo to the HDP Image
<br>creating the docker image with dockerfile under “image/centos”  and packaging docker image

To view the content of .wb file, execute the following command:<br>
`cat ~/Source/HDP/hdp26-ambari26.wb`{{execute}}

<br><strong>hdp26-ambari26.wb file contain following section</strong>
<br>
<br><b>Section 1:</b> <br>
<br><b>The below line will Set the organization name.</b>
<br>builder organization --name BlueData
<br>
<br><b>The below line will load the Metadata JSON file and set up files</b>
<br>catalog load --filepath hdp26-ambari26.json
<br>appconfig package --dir ambari-26-setup
<br>
<br><b>The below line will add the logo file to the image</b>
<br>logo file --filepath Logo_HortonWorks.png

<br><b>Section 2:</b> <br>
<br><b>Below section of the .wb file pulls all of the pieces together and builds the .bin file.</b>
<br>image build --basedir image/centos --image-repotag bluedata/hdp26-ambari26
<br>image package --image-repotag bluedata/hdp26-ambari26 --os centos7
<br>catalog save --filepath staging/hdp26ambari26-centos.json --force
<br>sources package
<br>catalog package


