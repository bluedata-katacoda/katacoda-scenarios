Now, we will make changes in .wb file <br>

Plaese review this link before you proceed: [Link](http://docs.bluedata.com/awb34_updating-an-existing-image)<br>
<br>
For your reference, we have already created a ready .wb file in the ~/test directory. We will copy that file into the CDH directory using the following command:<br>
`cd ~/Source/CDH`{{execute}}<br>
<br>Delete the existing .wb file before you copy the new .wb file by executing the below command
<br>`rm -rf cdh5144.wb`{{execute}}<br>
<br>Copy the new .wb file into CDH directory using the following command:
<br>`cp ~/test/cdh515.wb ~/Source/CDH`{{execute}}

To view the content of .wb file, execute the following command:<br>
`cat ~/Source/CDH/cdh515.wb`{{execute}}

<br><strong>cdh515.wb file contain following section</strong>
<br>
<br><b>Section 1:</b> <br>
<br><b><li>The below line will Set the organization name</b>
<br>builder organization --name BlueData
<br>
<br><b><li>The below line will load the Metadata JSON file and set up files</b>
<br>catalog load --filepath cdh515:1.0 .json
<br>appconfig package --dir cdh-cm-setup
<br>
<br><b><li>The below line will add the logo file to the image</b>
<br>logo file --filepath Logo_Cloudera.png

<br><b>Section 2:</b> <br>
<br><b><li>Below section of the .wb file pulls all of the pieces together and builds the .bin file</b>
<br>image build --basedir image/centos --image-repotag bluedata/cdh515:1.0
<br>image package --image-repotag bluedata/cdh515:1.0 --os centos7
<br>catalog save --filepath staging/cdh.json --force
<br>sources package
<br>catalog package


