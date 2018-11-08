Lets Create hello world image:

<h2>Step1</h2>
Log into the system or virtual machine where App Workbench has been installed, and then execute the following commands
<ul>
  <li>`yum install -y git`{{execute}}</li>
  <li>`mkdir /tmp/samples`{{execute}}</li>
  <li>`cd /tmp/samples`{{execute}}</li>
  <li>`git clone -b ImageSamples https://github.com/bluedatainc/solutions.git`{{execute}}</li>
</ul>
<h2>Step2</h2>
Go to the helloworld-auto directory by executing the following commands:

`cd solutions/ImageSamples/helloWorld-auto`{{execute}}

`ls -R`{{execute}}

<h2>Step3</h2>
Create a directory on the system where the App Workbench software is installed. This directory will house all the files and components for the HelloWorld application. To do this, execute the following command:

`mkdir -p ~/src/catalog/helloworld`{{execute}}

<h2>Step4</h2>
Change to your new source directory by executing the following command:

`cd ~/src/catalog/helloworld`{{execute}}
<h2>Step5</h2>
Use the bdwb command to create a skeleton file structure with the appropriate directories for creating the application .bin file by executing the following commands:

`bdwb --init`{{execute}}

`ls -R`{{execute}}

<h2>Step6</h2>
Copy the Dockerfile installed during the github clone operation into the centos/ directory in your example source directory by executing   the following commands:

`mkdir ~/src/catalog/helloworld/image/centos`{{execute}}

`cp /tmp/samples/solutions/ImageSamples/helloWorld-auto/image/centos/Dockerfile  ~/src/catalog/helloworld/image/centos/`{{execute}}

`cat ~/src/catalog/helloworld/image/centos/Dockerfile`{{execute}}

<h2>Step7</h2>
Copy the helloworld-app.wb file from the sample code taken from GitHub into your example source directory

`cp /tmp/samples/solutions/ImageSamples/helloWorld-auto/helloworld-app.wb ~/src/catalog/helloworld`{{execute}}

`cat -n ~/src/catalog/helloworld/helloworld-app.wb | more`{{execute}}

<h2>Step8</h2>
copy the index.html file from the sample code that you downloaded from GitHub onto your example source directory

`cp  /tmp/samples/solutions/ImageSamples/helloWorld-auto/appconfig/index.html ~/src/catalog/helloworld/appconfig/`{{execute}}

`cat ~/src/catalog/helloworld/appconfig/index.html`{{execute}}

<h2>Step9</h2>
Copy the helloworld-logo.png file from the sample code taken from GitHub into your example source directory

`cp  /tmp/samples/solutions/ImageSamples/helloWorld-auto/helloworld-logo.png ~/src/catalog/helloworld/`{{execute}}

<h2>Step10</h2>
build the image by executing the .wb file using the following command

`./helloworld-app.wb`{{execute}}

`cat staging/helloworld-centos.json`{{execute}}

<h2>Step11</h2>

Add the new .bin file to the EPIC App Store

`cp ~/src/catalog/helloworld/deliverables/bdcatalog-centos7-bluedata-helloworld-3.0.bin`{{execute}}

Ensure the file has the correct permissions

`chgrep apache /srv/bluedata/catalog/<bundle>.bin`{{execute}}
`chmod ug+rx /srv/bluedata/catalog/<bundle>.bin`{{execute}}






