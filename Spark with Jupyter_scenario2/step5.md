In this step we will be creating the bin using BlueData App Workbench by executing the following commands.

<b>.wb</b> file contains a series of App Workbench commands that control the creation of the Catalog Image<br>
Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)

 <b>Task 1:</b>
<br>For your reference, we have already created a ready .wb file in the ~/test directory. We will copy that file into the Spark directory using the following command:<br>
`cp ~/test/Spark.wb  ~/Spark`{{execute}}

To check the files in Spark folder<br>
`ls`{{execute}}

<b>Task 2:</b>
<br>To view the content of the file, execute the following<br>
`cat ~/Spark/Spark.wb`{{execute}}
<br>

 <b>Task 3:</b>
<br>Execute the .wb file<br>
`./Spark.wb`{{execute}}

After executing the above command wait for sometime until bin gets created!!
