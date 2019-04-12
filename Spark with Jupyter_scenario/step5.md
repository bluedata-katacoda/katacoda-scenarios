In this step we will be creating the bin using BlueData App Workbench by executing the following commands.

<b>.wb</b> file contains a series of App Workbench commands that control the creation of the Catalog Image<br>
Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)

 Task 1:
<br>For your reference, we have already created a ready .wb file in the ~/test directory. We will copy that file into the Spark directory using the following command:
`cp ~/test/Spark.wb  ~/Spark`{{execute}}

To check the files in Spark folder<br>
`ls`{{execute}}

Task 2:
<br>To view the content of the file, execute the following<br>
`cat ~/Spark/Spark.wb`{{execute}}
<br>

 Task 3:
<br>Execute the .wb file<br>
`./Spark.wb`{{execute}}

After executing the above command wait for sometime until bin gets created!!
