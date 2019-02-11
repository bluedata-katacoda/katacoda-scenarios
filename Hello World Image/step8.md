
Create the index.html 

Copy the index.html file from the sample data to the helloworld directory

`cp  /tmp/samples/solutions/ImageSamples/helloWorld-auto/appconfig/index.html ~/src/catalog/helloworld/appconfig/`{{execute}}

To view the content of the index.html file, execute the below command:

`cat ~/src/catalog/helloworld/appconfig/index.html`{{execute}}

These are sections will be there in .wb file
<br><b>Setting the organization name</b>
<br>builder organization --name Bluedata

<br><b>For adding a new Catalog Entry</b>
<br>catalog new --distroid Helloworld --name "Hello World on Centos"  \
          --desc "http service running Hello World page"    \
          --categories Greetings --version 10.0

<br>Note: Changes that needs to be done in wb file is,
Name and distro_id needs to be updated  based on the version of the Spark image to reflect the changes in the App Store for the upgraded image

<br><b>This is to define node roles for the virtual cluster</b>
<br>role add webserver 1
<br>role add controller 1
<br>role add worker 0+

<br><b>This section define one or more services that are mapped on a per-role basis</b>
<br>
service add --srvcid httpd --name "HelloWorld" --scheme "http" --port 80 \
            --path "/" --display  \
            --sysctl httpd \
            --onroles webserver controller worker

<br><b>Appconfiguration autogenenration</b>
<br><b>This perticular image use EPIC api version 5 for automated application configuration </b>
<br>appconfig autogen --new --configapi 5

<br><b>configure Spark and Jupyter on the Controller node and any Worker node(s) that may be spun up during cluster creation</b>
<br>appconfig autogen --pkgfile index.html --dest /var/www/html/index.html
                  --onroles webserver controller worker

<br><b>Replacing Pattern from Some files</b>

To obtain FQDNs of all of the virtual nodes, total amount of VRAM, in MB, total number of virtual CPU cores </b>
<br>appconfig autogen --replace /var/www/html/index.html \
                  --pattern @@@@FQDN@@@@  --macro GET_NODE_FQDN  \
                  --pattern @@@@CORES@@@@ --macro GET_TOTAL_VCORES \
                  --pattern @@@@MEMORY@@@@ --macro GET_TOTAL_VMEMORY_MB
                  --onroles webserver controller worker

<br>Generate the final application package and execute the startscripts when a virtual cluster is created using this application</b>
<br>appconfig autogen --generate
<br>appconfig package

<br><b>Setting the logo for image</b>
<br>logo file --filepath helloworld-logo.png

<br><b>Catalog the package for image</b>
<br><b>Pulls all of the pieces together and builds the .bin file</b>
<br>image build --basedir image/centos --image-repotag bluedata/helloworld:1.0
<br>image package --image-repotag bluedata/helloworld:1.0 --os centos7  --roles webserver controller worker
<br>catalog save --filepath staging/helloworld-centos.json --force
<br>sources package
<br>catalog package
