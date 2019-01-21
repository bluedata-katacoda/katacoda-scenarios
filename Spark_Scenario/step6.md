In this step we will be creating the bin using BlueData App Workbench by executing the following commands.

## Task 1:
Go inside the Spark folder.
<br>`cd ~/Spark`{{execute}}

## Task 2:
Go to Bluedata Workbench.
<br>`bdwb`{{execute}}

## Task 3:
Setting the organization name.
<br>`builder organization --name BlueData`{{execute}}

## Task 4:
Adding a new Catalog Entry.

<br>`catalog new --distroid spark221 --name "Spark 2.2.1 on centos7x" --desc "Spark 2.2.1" --categories Spark --version 1.0`{{execute}}

## Task 5:
Define all node roles for the virtual cluster.<br>
<br>`role add controller 1`{{execute}}
<br>`role add worker 0+`{{execute}}


## Task 6:
Define all services that are available in the virtual cluster.

<br>`service add --srvcid spark --name "Spark master" --scheme "http" --port 8080 --path "/" --display --onroles controller`{{execute}}
<br><br>`service add --srvcid spark_master --name "Spark master" --scheme "spark" --port 7077 --export_as "spark" --sysctl spark-master --onroles controller`{{execute}}
<br><br>`service add --srvcid spark_worker --name "Spark worker" --scheme "http" --port 8081 --path "/" --display --sysctl spark-slave --onroles controller worker`{{execute}}

## Task 7:
Appconfiguration autogenenration.

`appconfig autogen --new --configapi 7`{{execute}}
<br><br>`appconfig autogen --pkgfile spark/spark-defaults.conf --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-defaults.conf --pkgfile spark/spark-env.sh --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-env.sh --pkgfile spark/spark-master --dest /etc/init.d/ --pkgfile spark/spark-slave --dest /etc/init.d/ --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --pkgfile core-site.xml --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/core-site.xml --pkgfile hadoop --dest /usr/bin/hadoop --pkgfile appjob --dest /opt/bluedata/vagent/guestconfig/appconfig/appjob --onroles controller worker`{{execute}}

## Task 8:
Replacing Pattern from Some files.

`appconfig autogen --execute total_vcores.sh --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-defaults.conf --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller" --pattern @@@@SPARK_MAX_CORES@@@@ --macro "GET_TOTAL_VCORES" --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-env.sh --pattern @@@@MASTER_HOST@@@@ --macro "GET_FQDN_LIST controller" --pattern @@@@MEMORY@@@@ --macro "echo $(GET_TOTAL_VMEMORY_MB)m" --pattern @@@@CORES@@@@ --macro "GET_TOTAL_VCORES" --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --replace /etc/init.d/spark-slave --pattern @@@@FQDN@@@@ --macro GET_NODE_FQDN --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --pattern @@@@SPARK_MASTER@@@@  --macro "GET_SERVICE_URL spark_master controller" --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --replace /etc/init.d/spark-master --pattern @@@@FQDN@@@@ --macro GET_FQDN_LIST controller --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" --onroles controller worker`{{execute}}
<br><br>`appconfig autogen --generate`{{execute}}
<br><br>`appconfig package`{{execute}}

## Task 9:
Setting the logo for bin.
<br>`logo file --filepath Logo_Spark.png`{{execute}}

## Task 10:
Catalog the package for Centos

`image build --basedir image/centos/spark --image-repotag bluedata/sparkbase:2.0`{{execute}}
<br><br>`image package --image-repotag bluedata/sparkbase:2.0 --os centos7  --roles controller worker`{{execute}}
<br><br>`catalog save --filepath staging/spark221e1.json --force`{{execute}}
<br><br>`sources package`{{execute}}
<br><br>`catalog package`{{execute}}
