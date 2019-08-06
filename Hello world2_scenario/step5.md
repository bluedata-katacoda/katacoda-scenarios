Now, we will make changes in .wb file <br>

Plaese review this link before you proceed: [Link](http://docs.bluedata.com/awb34_updating-an-existing-image)<br>
<br>
For your reference, we have already created a ready .wb file in the ~/test directory. We will copy that file into the helloworld2 directory using the following command:<br>
`cd ~/source/helloworld2`{{execute}}<br>
<br>Delete the existing .wb file before you copy the new .wb file by executing the below command
<br>`rm -rf helloworld-app.wb `{{execute}}<br>
<br>Copy the new .wb file into helloworld2 directory using the following command:
<br>`cp ~/test/helloworld2-app.wb  ~/source/helloworld2`{{execute}}

To view the content of .wb file, execute the following command:<br>
`cat ~/source/helloworld2/helloworld2-app.wb`{{execute}}

<br><strong>Helloworld2-app.wbfile contain following section</strong>
<br>
<br><b>Section 1:</b> <br>
<br><b><li>The below line will Set the organization name</b>
<br>builder organization --name BlueData
<br>
<br><b><li>The below line will load the set up files</b>
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


