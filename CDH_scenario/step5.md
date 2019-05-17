Lets see the content of .wb file <br>

Plaese review this link before you proceed: [Link](http://docs.bluedata.com/awb34_updating-an-existing-image)<br>
<br>
Move to CDH directory by the using the following command:<br>
`cd ~/Source/CDH`{{execute}}<br>

Following configuration will be done in the .WB file :
loading json file, generating scripts(loggin.sh, appjob etc..) inside cdh5-cm-setup directory and adding logo to the cdh Image
creating the docker image with dockerfile under “image/centos”  and packaging docker image

To view the content of .wb file, execute the following command:<br>
`cat ~/Source/CDH/cdh514.wb`{{execute}}

<br><strong>cdh514.wb file contain following section</strong>
<br>
<br><b>Section 1:</b> <br>
<br><b>The below line will Set the organization name.</b>
<br>builder organization --name BlueData
<br>
<br><b>The below line will load the Metadata JSON file and set up files</b>
<br>catalog load --filepath cdh514.json
<br>appconfig package --dir cdh5-cm-setup

<br>
<br><b>The below line will add the logo file to the image</b>
<br>logo file --filepath Logo_Cloudera.png

<br><b>Section 2:</b> <br>
<br><b>Below section of the .wb file pulls all of the pieces together and builds the .bin file.</b>
<br>image build --basedir image/centos --image-repotag bluedata/cdh514
<br>image package --image-repotag bluedata/cdh514 --os centos7
<br>catalog save --filepath staging/cdh514.json --force
<br>sources package
<br>catalog package


