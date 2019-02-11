Now, we will make changes in .wb file first.<br>
<br><br>
We already have a reference .wb file. We just need to replace the current .wb file with the reference one. For doing so, execute the following commands.<br>
`cd ~/Source/Spark`{{execute}}
<br>`rm -rf spark221.wb spark221e1.json`{{execute}}
<br>`cp ~/test/spark_notebook.wb ~/Source/Spark`{{execute}}

To view the content of the file, execute the following<br>
`cat ~/Source/Spark/spark_notebook.wb`{{execute}}
<br>

These are sections will be there in .wb file
<br><b>Setting the organization name</b>
<br>builder organization --name BlueData

<br><b>For adding a new Catalog Entry</b>
<br>catalog new --distroid spark221 --name "Spark 2.2.1 on centos7x" --desc "Spark 2.2.1" --categories Spark --version 1.0

<br>Note: Changes that needs to be done in wb file for upgrading Spark image is ,
Name and distro_id needs to be updated  based on the version of the Spark image to reflect the changes in the App Store for the upgraded image

<br><b>This is to define node roles for the virtual cluster</b>
<br>role add controller 1
<br>role add worker 0+

<br><b>This section define one or more services that are mapped on a per-role basis</b>
<br>
service add --srvcid spark --name "Spark master" --scheme "http" --port 8080   \
            --path "/" --display --onroles controller

service add --srvcid spark_master --name "Spark master" --scheme "spark"       \
        --port 7077 --export_as "spark"    \
            --sysctl spark-master \
            --onroles controller

service add --srvcid spark_worker --name "Spark worker" --scheme "http"        \
        --port 8081 --path "/" --display   \
            --sysctl spark-slave               \
            --onroles controller worker

service add --srvcid rstudio-server --name "Rstudio server" --scheme "http" --port 8787   \
        --path "/" --display  \
            --sysctl rstudioserver             \
            --onroles rstudio

service add --srvcid shiny-server --name "Shiny server" --scheme "http" --port 3838   \
        --path "/" --display   \
            --sysctl shinyserver   \
            --onroles rstudio

service add --srvcid jupyterhub --name "Jupyterhub" --scheme "http" --port 8000   \
        --path "/" --display    \
            --sysctl jupyterhub \
            --onroles jupyterhub

service add --srvcid jupyter-notebook --name "Jupyter Notebook" --scheme "http" --port 8888   \
            --path "/" --display  \
            --sysctl jupyter-server  \
            --onroles jupyter

<br><b>Appconfiguration autogenenration</b>
<br><b>This perticular image use EPIC api version 7 for automated application configuration </b>
appconfig autogen --new --configapi 7
<br><b>configure Spark and Jupyter on the Controller node and any Worker node(s) that may be spun up during cluster creation</b>
appconfig autogen --pkgfile start_rstudioserver.sh  --destdir /usr/lib/rstudio-server/conf/ \
                  --pkgfile start_shinyserver.sh   --destdir /opt/shiny-server/conf/ \
                  --pkgfile jupyter_notebook_config.py --destdir /root/.jupyter/ \
                  --pkgfile jupyterhub_config.py --destdir /etc/jupyterhub \
                  --pkgfile spark-defaults.conf spark-env.sh --destdir /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/conf \
                  --pkgfile rstudio --destdir /etc/pam.d/  \
                  --pkgfile pam_mkhomedir.sh --destdir /usr/bin/ \
                  --pkgfile rstudioserver shinyserver spark-master spark-slave jupyter-server start_jupyter.sh jupyterhub start_jupyterhub.sh --destdir /etc/init.d/

appconfig autogen --pkgfile core-site.xml --dest /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/conf/core-site.xml \
                  --pkgfile hadoop --dest /usr/bin/hadoop  \
                  --pkgfile jupyter --dest /etc/sudoers.d/  \
                  --pkgfile appjob --dest /opt/bluedata/vagent/guestconfig/appconfig/appjob  \
                  --pkgfile p_kernel.json --dest /usr/local/share/jupyter/kernels/apache_toree_pyspark/kernel.json  \
                  --pkgfile sq_kernel.json --dest /usr/local/share/jupyter/kernels/apache_toree_sql/kernel.json
<br>

<br><b>Replacing Pattern from Some files</b>
<br><b>To obtain the total number of virtual CPU cores assigned to the Controller node and any Worker node(s) in the cluster</b>
<br>appconfig autogen --execute total_vcores.sh --onroles controller worker

To obtain both the URL of the Spark Master service running on the Controller node and the total number of virtual CPU cores assigned to the virtual cluster</b>
<br>appconfig autogen --replace /usr/local/share/jupyter/kernels/apache_toree_pyspark/kernel.json  \
                  --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller"

<br><b>To obtain FQDNs of all of the virtual nodes, total amount of VRAM, in MB, total number of virtual CPU cores</b>
<br>appconfig autogen --replace /usr/local/share/jupyter/kernels/apache_toree_sql/kernel.json  \
                  --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller"

<br>appconfig autogen --replace /root/.jupyter/jupyter_notebook_config.py    \
                  --pattern @@@@IP@@@@ --macro "GET_NODE_FQDN"

appconfig autogen --replace /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/conf/spark-defaults.conf \
                  --pattern @@@@SPARK_MASTER@@@@ --macro "GET_SERVICE_URL spark_master controller" \
                  --pattern @@@@SPARK_MAX_CORES@@@@ --macro "GET_TOTAL_VCORES"

appconfig autogen --replace /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/conf/spark-env.sh        \
                  --pattern @@@@MASTER_HOST@@@@ --macro "GET_FQDN_LIST controller" \
                  --pattern @@@@MEMORY@@@@ --macro "echo $(GET_TOTAL_VMEMORY_MB)m" \
                  --pattern @@@@CORES@@@@ --macro "GET_TOTAL_VCORES"
                  
appconfig autogen --replace /etc/init.d/spark-slave --pattern @@@@FQDN@@@@ --macro GET_NODE_FQDN \
                  --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.3.1-bin-hadoop2.7" \
                  --pattern @@@@SPARK_MASTER@@@@  --macro "GET_SERVICE_URL spark_master controller"

appconfig autogen --replace /etc/init.d/spark-master --pattern @@@@FQDN@@@@ --macro GET_FQDN_LIST controller \
                  --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.3.1-bin-hadoop2.7" \
                  --pattern @@@@SPARK_HOME@@@@ --macro "echo /usr/lib/spark/spark-2.3.1-bin-hadoop2.7"

appconfig autogen --replace /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/conf/core-site.xml \
                  --pattern @@@@AWS_ACCESS_KEY@@@@ --macro TENANT_INFO s3_access_key  \
                  --pattern @@@@AWS_SECRET_KEY@@@@ --macro TENANT_INFO s3_secret_key


<br>Generate the final application package and execute the startscripts when a virtual cluster is created using this application</b>
<br>appconfig autogen --generate
<br>appconfig package

<br><b>Setting the logo for image</b>
<br>logo file --filepath Logo_Spark.png

<br><b>Catalog the package for image</b>
<br><b>Pulls all of the pieces together and builds the .bin file</b>
<br>image build --basedir image/centos --image-repotag bluedata/spark231:1.0
<br>image package --image-repotag bluedata/spark231:1.0 --os centos7
<br>catalog save --filepath staging/Spark231-Jupyterhub-7x.json --force
<br>sources package
<br>catalog package
