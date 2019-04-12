In this step we will be creating the bin using BlueData App Workbench by executing the following commands.

Task 1:
<br>Navigate to Spark folder.
<br>`cd ~/Spark`{{execute}}

<b>.wb</b> file contains a series of App Workbench commands that control the creation of the Catalog Image
<br>Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)

Task 2:
<br>Go to Bluedata Workbench.
<br>`bdwb`{{execute}}

Task 3:
<br>Setting the organization name.
<br>`builder organization --name BlueData`{{execute}}

Task 4:
<br>Adding a new Catalog Entry.
<br>`catalog new --distroid spark221 --name "Spark 2.2.1 on centos7x" --desc "Spark 2.2.1" --categories Spark --version 1.0`{{execute}}

Task 5:
<br>This is to define node roles for the virtual cluster
<br>`role add controller 1`{{execute}}
<br>`role add worker 0+`{{execute}}


Task 6:
<br>This section define one or more services that are mapped on a per-role basis
<br>`service add --srvcid spark --name "Spark master" --scheme "http" --port 8080 --path "/" --display --onroles controller`{{execute}}
<br><br>`service add --srvcid spark_master --name "Spark master" --scheme "spark" --port 7077 --export_as "spark" --sysctl spark-master --onroles controller`{{execute}}
<br><br>`service add --srvcid spark_worker --name "Spark worker" --scheme "http" --port 8081 --path "/" --display --sysctl spark-slave --onroles controller worker`{{execute}}

Task 7:
<br>Appconfiguration autogenenration
<br>`appconfig autogen --new --configapi 7`{{execute}}
<br><br>`appconfig autogen --pkgfile spark/spark-defaults.conf --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-defaults.conf --pkgfile spark/spark-env.sh --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-env.sh --pkgfile spark/spark-master --dest /etc/init.d/ --pkgfile spark/spark-slave --dest /etc/init.d/ --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --pkgfile core-site.xml --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/core-site.xml --pkgfile hadoop --dest /usr/bin/hadoop --pkgfile appjob --dest /opt/bluedata/vagent/guestconfig/appconfig/appjob --onroles controller worker`{{execute}}

Task 8:
<br>Replacing Pattern
<br>`appconfig autogen --execute total_vcores.sh --onroles controller worker`{{execute}}

<br>`appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-defaults.conf --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller" --pattern @@@@SPARK_MAX_CORES@@@@ --macro "GET_TOTAL_VCORES" --onroles controller worker`{{execute}}

<br>`appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-env.sh --pattern @@@@MASTER_HOST@@@@ --macro "GET_FQDN_LIST controller" --pattern @@@@MEMORY@@@@ --macro "echo $(GET_TOTAL_VMEMORY_MB)m" --pattern @@@@CORES@@@@ --macro "GET_TOTAL_VCORES" --onroles controller worker`{{execute}}

<br>`appconfig autogen --replace /etc/init.d/spark-slave --pattern @@@@FQDN@@@@ --macro GET_NODE_FQDN --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --pattern @@@@SPARK_MASTER@@@@  --macro "GET_SERVICE_URL spark_master controller" --onroles controller worker`{{execute}}

<br>`appconfig autogen --replace /etc/init.d/spark-master --pattern @@@@FQDN@@@@ --macro GET_FQDN_LIST controller --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --onroles controller worker`{{execute}}

<br>`appconfig autogen --generate`{{execute}}
<br>`appconfig package`{{execute}}

Task 9:
<br>Setting the logo for image
<br>`logo file --filepath Logo_Spark.png`{{execute}}

Task 10:
<br>Catalog the package for image
<br>`image build --basedir image/centos --image-repotag bluedata/sparkbase:2.0`{{execute}}
<br>`image package --image-repotag bluedata/sparkbase:2.0 --os centos7  --roles controller worker`{{execute}}
<br>`catalog save --filepath staging/spark221e1.json --force`{{execute}}
<br>`sources package`{{execute}}
<br>`catalog package`{{execute}}
