In this step we will be creating the bin using BlueData App Workbench by executing the following commands.

<b>.wb</b> file contains a series of App Workbench commands that control the creation of the Catalog Image<br>
Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)

 Task 1:
For your reference, we have already created a ready .wb file in the ~/test directory. We will copy that file into the HDP directory using the following command:
`cp ~/test/hdp26-ambari26.wb  ~/HDP`{{execute}}

To check the files in HDP folder<br>
`ls`{{execute}}

Task 2:

To view the content of the file, execute the following<br>
`cat ~/HDP/hdp26-ambari26.wb`{{execute}}
<br>

Following configuration will be done in the .WB file :
<br>loading json file, generating scripts(loggin.sh, appjob etc..) inside ambari-26-setup directory and adding logo to the HDP Image
<br>creating the docker image with dockerfile under “image/centos”  and packaging docker image

 Task 3:
Execute the wb file<br>
`./hdp26-ambari26.wb`{{execute}}

After executing the above command wait for sometime until bin gets created!!
