In this step we will be creating the bin using BlueData App Workbench by executing the following commands.

Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)

Task 1:
Go inside the Spark folder.
<br>`cd ~/Spark`{{execute}}

Task 2:
Go to Bluedata Workbench.
<br>`bdwb`{{execute}}

Task 3:
Setting the organization name.
<br>`builder organization --name BlueData`{{execute}}

Task 4:
Adding a new Catalog Entry.

<br>`catalog new --distroid spark221 --name "Spark 2.2.1 on centos7x" --desc "Spark 2.2.1" --categories Spark --version 1.0`{{execute}}

Task 5:
<b>This is to define node roles for the virtual cluster</b>
<br>`role add controller 1`{{execute}}
<br>`role add worker 0+`{{execute}}


Task 6:
<b>This section define one or more services that are mapped on a per-role basis</b>

<br>`service add --srvcid spark --name "Spark master" --scheme "http" --port 8080 --path "/" --display --onroles controller`{{execute}}
<br><br>`service add --srvcid spark_master --name "Spark master" --scheme "spark" --port 7077 --export_as "spark" --sysctl spark-master --onroles controller`{{execute}}
<br><br>`service add --srvcid spark_worker --name "Spark worker" --scheme "http" --port 8081 --path "/" --display --sysctl spark-slave --onroles controller worker`{{execute}}

Task 7:
<b>Appconfiguration autogenenration</b>

<b>This perticular image use EPIC api version 7 for automated application configuration </b>
`appconfig autogen --new --configapi 7`{{execute}}

<b>configure Spark on the Controller node and any Worker node(s) that may be spun up during cluster creation</b>
<br><br>`appconfig autogen --pkgfile spark/spark-defaults.conf --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-defaults.conf --pkgfile spark/spark-env.sh --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-env.sh --pkgfile spark/spark-master --dest /etc/init.d/ --pkgfile spark/spark-slave --dest /etc/init.d/ --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --pkgfile core-site.xml --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/core-site.xml --pkgfile hadoop --dest /usr/bin/hadoop --pkgfile appjob --dest /opt/bluedata/vagent/guestconfig/appconfig/appjob --onroles controller worker`{{execute}}

Task 8:
Replacing Pattern from Some files.

<b>To obtain the total number of virtual CPU cores assigned to the Controller node and any Worker node(s) in the cluster</b>
`appconfig autogen --execute total_vcores.sh --onroles controller worker`{{execute}}

<b>To obtain both the URL of the Spark Master service running on the Controller/worker node and the total number of virtual CPU cores assigned to the virtual cluster</b>
<br><br>`appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-defaults.conf --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller" --pattern @@@@SPARK_MAX_CORES@@@@ --macro "GET_TOTAL_VCORES" --onroles controller worker`{{execute}}

<b>To obtain FQDNs of all of the virtual nodes, total amount of VRAM, in MB, total number of virtual CPU cores</b>
<br><br>`appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-env.sh --pattern @@@@MASTER_HOST@@@@ --macro "GET_FQDN_LIST controller" --pattern @@@@MEMORY@@@@ --macro "echo $(GET_TOTAL_VMEMORY_MB)m" --pattern @@@@CORES@@@@ --macro "GET_TOTAL_VCORES" --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --replace /etc/init.d/spark-slave --pattern @@@@FQDN@@@@ --macro GET_NODE_FQDN --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --pattern @@@@SPARK_MASTER@@@@  --macro "GET_SERVICE_URL spark_master controller" --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --replace /etc/init.d/spark-master --pattern @@@@FQDN@@@@ --macro GET_FQDN_LIST controller --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --onroles controller worker`{{execute}}

<b>Generate the final application package and execute the startscripts when a virtual cluster is created using this application</b>
<br><br>`appconfig autogen --generate`{{execute}}
<br><br>`appconfig package`{{execute}}

Task 9:
<b>Setting the logo for image</b>
<br>`logo file --filepath Logo_Spark.png`{{execute}}

Task 10:
<br>Catalog the package for image</br>
<br><b>Pulls all of the pieces together and builds the .bin file</b>
`image build --basedir image/centos --image-repotag bluedata/sparkbase:2.0`{{execute}}
<br><br>`image package --image-repotag bluedata/sparkbase:2.0 --os centos7  --roles controller worker`{{execute}}
<br><br>`catalog save --filepath staging/spark221e1.json --force`{{execute}}
<br><br>`sources package`{{execute}}
<br><br>`catalog package`{{execute}}
