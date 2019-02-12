Now, we will make changes in .wb file first.<br>

Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)
<br><br>
For your reference, we have already created a ready .wb file in the ~/test directory. We will copy that file into the Spark directory using the following command:<br>
`cd ~/Source/Spark`{{execute}}<br>

Delete the old .wb file and json file before you copy the new .wb file by executing the below command 
<br>`rm -rf spark221.wb spark221e1.json`{{execute}}

Copy the new .wb file into Spark directory using the following command:
<br>`cp ~/test/spark_notebook.wb ~/Source/Spark`{{execute}}

To view the content of the file, execute the following<br>
`cat ~/Source/Spark/spark_notebook.wb`{{execute}}
<br>
