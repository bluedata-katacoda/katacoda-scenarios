In this step we would be creating some more files that are required for Spark Application Image.
We already have reference files, we can just copy them to appropriate location.

Task 1:
Copy the appjob utility file.<br>
<br><b>appjob</b> Provides the information on the type job to be launched and we can also add application specific jobs.
`cp ~/test/appjob  ~/Spark/appconfig`{{execute}}
<br><br>
To view the content of appjob file, execute the below command.<br>
`cat  ~/Spark/appconfig/appjob`{{execute}}

Task 2:
Copy the configure java file.<br>
`cp ~/test/configure_java8.sh ~/Spark/image/centos`{{execute}}
<br><br>
To view the content of configure_java8.sh  file, execute the below command.<br>
`cat ~/Spark/image/centos/configure_java8.sh`{{execute}}

Task 3:
Copy the spark-slave file which is used for bringing up and down the spark slave service.<br>
`cp ~/test/spark-slave ~/Spark/appconfig/spark`{{execute}}
<br><br>
To view the content of spark-slave  file.<br>Please execute the below command.<br>
`cat ~/Spark/appconfig/spark/spark-slave`{{execute}}

Task 4:
Copy the spark-master file which is used for bringing up and down the spark master service.<br>
`cp ~/test/spark-master ~/Spark/appconfig/spark`{{execute}}
<br><br>
To view the content of spark-master  file.<br>Please execute the below command.<br>
`cat ~/Spark/appconfig/spark/spark-master`{{execute}}

Task 5:
Copy the total_vcores.sh script.<br>
<br><b> total_vcores.sh</b> file which is used to obtain the total number of virtual CPU cores assigned to the nodes.
`cp ~/test/total_vcores.sh ~/Spark/appconfig`{{execute}}
<br><br>
To view the content of total_vcores.sh file.<br> Please execute the below command.<br>
`cat ~/Spark/appconfig/total_vcores.sh`{{execute}}

Task 6:
Copy the core-site.xml file.<br>
<br><b>core-site.xml,hadoop</b> these files are used to setup Hadoop related configurations
`cp ~/test/core-site.xml ~/Spark/appconfig`{{execute}}
<br><br>
To view the content of core-site.xml file.<br>Please execute the below command.
<br>`cat ~/Spark/appconfig/core-site.xml`{{execute}}

Task 7:
Copy the spark-defaults.conf file.<br>
`cp ~/test/spark-defaults.conf ~/Spark/appconfig/spark`{{execute}}
<br><br>
To view the content of spark-defaults.conf file.<br>Please execute the below command.<br>
`cat ~/Spark/appconfig/spark/spark-defaults.conf`{{execute}}

Task 8:
Copy the hadoop file.<br>
`cp ~/test/hadoop ~/Spark/appconfig`{{execute}}
<br><br>
To view the content of hadoop file.<br>Please execute the below command.<br>
`cat ~/Spark/appconfig/hadoop`{{execute}}

Task 9:
Copy the spark-env.sh file.<br>
`cp ~/test/spark-env.sh ~/Spark/appconfig/spark`{{execute}}
<br><br>
To view the content of spark-env.sh file.<br>Please execute the below command.<br>
`cat ~/Spark/appconfig/spark/spark-env.sh`{{execute}}

Task 10:
Copy the logo file.<br>
`cp ~/test/Logo_Spark.png ~/Spark`{{execute}}
