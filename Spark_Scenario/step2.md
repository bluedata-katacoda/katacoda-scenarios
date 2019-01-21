To begin creating the Spark Application Image follow the steps mentioned below:<br>
Create a directory on the system named as Spark.
This directory will house all the files and components for the Spark Application Image.<br>To do this, execute the following command:<br>

`mkdir ~/Spark`{{execute}}<br>

Change to your new source directory:<br>

`cd ~/Spark`{{execute}}<br>

Use the bdwb command to create a skeleton file structure with the appropriate directories for creating the Application .bin file:<br>

`bdwb --init`{{execute}}

Click on the below command to view the files and directories created in Spark folder.<br>

`ls -R`{{execute}}

Create a folder named Centos and a sub folder spark inside the image directory. To do that, execute the following command:

`mkdir ~/Spark/image/centos`{{execute}}

`mkdir ~/Spark/image/centos/spark`{{execute}}
