In this step we will be creating the bin using BlueData App Workbench by executing the following commands.


 Task 1:
Copy the wb file<br>
`cp ~/test/Spark.wb  ~/Spark`{{execute}}

To check the files in Spark folder<br>
`ls`{{execute}}

Task 2:

To view the content of the file, execute the following<br>
`cat ~/Source/Spark/spark.wb`{{execute}}
<br>

These are sections will be there in .wb file
<br><b><i>Setting the organization name</b></i>
<br>builder organization --name BlueData

<br><b><i>Adding a new Catalog Entry</b></i>
<br>catalog new --distroid spark221 --name "Spark 2.2.1 on centos7x" --desc "Spark 2.2.1" --categories Spark --version 1.0


<br><b><i>Define all node roles for the virtual cluster</b></i>
<br>role add controller 1
<br>role add worker 0+
<br>role add jupyter 0+
<br>role add jupyterhub 0+
<br>role add rstudio 0+
<br>role add gateway 0+

<br><b><i>Define all services that are available in the virtual cluster</b></i>
<br>
<br>service add --srvcid spark --name "Spark master" --scheme "http" --port 8080 --path "/" --display --onroles controller
<br>service add --srvcid spark_master --name "Spark master" --scheme "spark" --port 7077 --export_as "spark" --sysctl spark-master --onroles controller
<br>service add --srvcid spark_worker --name "Spark worker" --scheme "http" --port 8081 --path "/" --display --sysctl spark-slave --onroles controller worker
<br>service add --srvcid jupyterhub --name "Jupyterhub" --scheme "http" --port 8000   \
        --path "/" --display    \
            --sysctl jupyterhub \
            --onroles jupyterhub

<br>service add --srvcid jupyter-notebook --name "Jupyter Notebook" --scheme "http" --port 8888   \
            --path "/" --display  \
            --sysctl jupyter-server  \
            --onroles jupyter


<br><b><i>Appconfiguration autogenenration</b></i>
<br>
<br>appconfig autogen --new --configapi 7
<br>appconfig autogen --pkgfile spark/spark-defaults.conf --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-defaults.conf --pkgfile spark/spark-env.sh --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-env.sh --pkgfile spark/spark-master --dest /etc/init.d/ --pkgfile spark/spark-slave --dest /etc/init.d/ --onroles controller worker
<br>appconfig autogen --pkgfile core-site.xml --dest /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/core-site.xml --pkgfile hadoop --dest /usr/bin/hadoop --pkgfile appjob --dest /opt/bluedata/vagent/guestconfig/appconfig/appjob --onroles controller worker


<br><b><i>Replacing Pattern from Some files</b></i>

<br>appconfig autogen --execute total_vcores.sh --onroles controller worker

<br>appconfig autogen --replace /usr/local/share/jupyter/kernels/apache_toree_pyspark/kernel.json  \
                  --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller"

<br>appconfig autogen --replace /usr/local/share/jupyter/kernels/apache_toree_sql/kernel.json  \
                  --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller"

<br>appconfig autogen --replace /root/.jupyter/jupyter_notebook_config.py    \
                  --pattern @@@@IP@@@@ --macro "GET_NODE_FQDN"

<br>appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-defaults.conf \
                  --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller" \
                  --pattern @@@@SPARK_MAX_CORES@@@@ --macro "GET_TOTAL_VCORES"

<br>appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/spark-env.sh        \
                  --pattern @@@@MASTER_HOST@@@@ --macro "GET_FQDN_LIST controller" \
                  --pattern @@@@MEMORY@@@@ --macro "echo $(GET_TOTAL_VMEMORY_MB)m" \
                  --pattern @@@@CORES@@@@ --macro "GET_TOTAL_VCORES"

<br>appconfig autogen --replace /etc/init.d/spark-slave --pattern @@@@FQDN@@@@ --macro GET_NODE_FQDN \
                  --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" \
                  --pattern @@@@SPARK_MASTER@@@@  --macro "GET_SERVICE_URL spark_master controller"

<br>appconfig autogen --replace /etc/init.d/spark-master --pattern @@@@FQDN@@@@ --macro GET_FQDN_LIST controller \
                  --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7" \
                  --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.2.1-bin-hadoop2.7"

<br>appconfig autogen --replace /usr/lib/spark/spark-2.2.1-bin-hadoop2.7/conf/core-site.xml \
                  --pattern @@@@AWS_ACCESS_KEY@@@@ --macro TENANT_INFO s3_access_key  \
                  --pattern @@@@AWS_SECRET_KEY@@@@ --macro TENANT_INFO s3_secret_key


<br>appconfig autogen --generate
<br>appconfig package

<br><b><i>Setting the logo for bin</b></i>
<br>logo file --filepath Logo_Spark.png

<br><b><i>Catalog the package for Centos</b></i>
<br>image build --basedir image/centos --image-repotag bluedata/sparkbase:2.0
<br>image package --image-repotag bluedata/sparkbase:2.0 --os centos7  --roles controller worker
<br>catalog save --filepath staging/spark221e1.json --force
<br>sources package
<br>catalog package

 Task 2:
Execute the wb file<br>
`./Spark.wb`{{execute}}

After executing the above command wait for sometime until bin gets created!!
