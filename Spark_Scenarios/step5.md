In this step we would be creating files to setup spark, hadoop and java configurations.
We already have reference files, we can just copy them to appropriate location.

Task 1:<br>
Copy the appjob utility file in to appconfig directory.
<br><b>appjob</b> provides the information on the type job to be launched and we can also add application specific jobs.
<br>`cp ~/test/appjob  ~/Spark/appconfig`{{execute}}
<br>
<br>To view the content of appjob file, execute the below command.
<br>`cat  ~/Spark/appconfig/appjob`{{execute}}

Task 2:<br>
Copy the configure java file in to centos directory
<br>`cp ~/test/configure_java8.sh ~/Spark/image/centos`{{execute}}
<br><br>
To view the content of configure_java8.sh  file, execute the below command.
<br>`cat ~/Spark/image/centos/configure_java8.sh`{{execute}}

Task 3:<br>
Copy the spark-slave file in to spark directory.
<br><b>spark-slave</b> file is a service script to start/stop/get-status of the Spark-slave service.
<br>`cp ~/test/spark-slave ~/Spark/appconfig/spark`{{execute}}
<br><br>
To view the content of spark-slave  file Please execute the below command.
<br>`cat ~/Spark/appconfig/spark/spark-slave`{{execute}}

Task 4:<br>
Copy the spark-master file in to spark directory.
<br><b>spark-master</b> file is a service script to start/stop/get-status of the Spark-slave service
<br>`cp ~/test/spark-master ~/Spark/appconfig/spark`{{execute}}
<br><br>
To view the content of spark-master  file Please execute the below command.
<br>`cat ~/Spark/appconfig/spark/spark-master`{{execute}}

Task 5:<br>
Copy the total_vcores.sh script file in to appconfig directory.
<br><b> total_vcores.sh</b> file which is used to obtain the total number of virtual CPU cores assigned to the nodes.
<br>`cp ~/test/total_vcores.sh ~/Spark/appconfig`{{execute}}
<br><br>
To view the content of total_vcores.sh file. Please execute the below command.
<br>`cat ~/Spark/appconfig/total_vcores.sh`{{execute}}

Task 6:<br>
Copy the core-site.xml file in to appconfig directory
<br><b>core-site.xml</b> files are used to setup Hadoop related configurations
<br>`cp ~/test/core-site.xml ~/Spark/appconfig`{{execute}}
<br><br>
To view the content of core-site.xml file Please execute the below command.
<br>`cat ~/Spark/appconfig/core-site.xml`{{execute}}

Task 7:<br>
Copy the spark-defaults.conf file in to appconfig directory.
</br><b>spark-defaults.conf file</b> is a default system properties included when running spark-submit . 
<br>`cp ~/test/spark-defaults.conf ~/Spark/appconfig/spark`{{execute}}
<br><br>
To view the content of spark-defaults.conf file Please execute the below command.
<br>`cat ~/Spark/appconfig/spark/spark-defaults.conf`{{execute}}

Task 8:<br>
Copy the hadoop file in to appconfig directory.
<br><b>hadoop</b> files are used to setup Hadoop related configurations
<br>`cp ~/test/hadoop ~/Spark/appconfig`{{execute}}
<br><br>
To view the content of hadoop file Please execute the below command.
<br>`cat ~/Spark/appconfig/hadoop`{{execute}}

Task 9:<br>
Copy the spark-env.sh file in to spark directory.
<br><b>spark-env.sh</b> file is used to setup the spark environment . 
<br>`cp ~/test/spark-env.sh ~/Spark/appconfig/spark`{{execute}}
<br><br>
To view the content of spark-env.sh file Please execute the below command.
<br>`cat ~/Spark/appconfig/spark/spark-env.sh`{{execute}}

Task 10:<br>
Copy the logo file in to Spark folder.
<br>To add a logo to your BIN file, copy the .png file to the following location. For this step, we will use an existing .png file. 
<br>Logo.png file</b> includes a logo file (400px x 200px .png) to visually identify each application in the App Store
<br>`cp ~/test/Logo_Spark.png ~/Spark`{{execute}}
