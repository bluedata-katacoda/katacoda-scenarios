Now, we will make changes in .wb file first.<br>
In wb file, we need to change the versions of the images we are downloading.
<br><br>
We already have a reference .wb file. We just need to replace the current .wb file with the reference one. For doing so, execute the following commands.<br>
`cd ~/Source/CDH`{{execute}}
<br>`rm -rf cdh514.wb`{{execute}}
<br>`cp ~/test/cdh515.wb ~/Source/CDH`{{execute}}

To view the content of the file, execute the following<br>
`cat ~/Source/CDH/cdh515.wb`{{execute}}

<br><strong>cdh515.wb file contain following section</strong>
<br>
<br><strong>Section 1: Image ID</strong>

The first section identifies the image and builds or loads the Metadata JSON file.
<br>
<br><b><i>This below line will Set the organization name.</i></b>
<br>builder organization --name BlueData
<br>
<br><b><i>This below line will loads the Metadata JSON file and set up files</i></b>
<br>catalog load --filepath cdh515:1.0 .json
<br>appconfig package --dir cdh-cm-setup
<br>
<br><b><i>This below line will loads the the logo for bin files</i></b>
<br>logo file --filepath Logo_Cloudera.png

<br><strong>Section 2: Build the Image .bin File</strong>
<br>
<br>The final section of the .wb file pulls all of the pieces together and builds the .bin file.

<br>This section creates docker tgz and bin file
<br>image build --basedir image/centos --image-repotag bluedata/cdh515:1.0

<br><b><i>Catalog the package for Centos</i><b>
<br>image package --image-repotag bluedata/cdh515:1.0 --os centos7
<br>catalog save --filepath staging/cdh.json --force
<br>sources package
<br>catalog package


