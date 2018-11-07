Lets Create hello world image:

<h2>Step1</h2>
Log into the system or virtual machine where App Workbench has been installed, and then execute the following commands:

`yum install -y git`{{execute}}
`mkdir /tmp/samples`{{execute}}
`cd /tmp/samples`{{execute}}
`git clone -b ImageSamples https://github.com/bluedatainc/solutions.git`{{execute}}

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

`cp /tmp/samples/solutions/ImageSamples/helloWorld-auto/helloworld-app.wb ~/src/catalog/helloworld`{{execute}}
`cat -n ~/src/catalog/helloworld/helloworld-app.wb | more`{{execute}}

`cp  /tmp/samples/solutions/ImageSamples/helloWorld-auto/appconfig/index.html ~/src/catalog/helloworld/appconfig/`{{execute}}
`cat ~/src/catalog/helloworld/appconfig/index.html`{{execute}}

`cp  /tmp/samples/solutions/ImageSamples/helloWorld-auto/helloworld-logo.png ~/src/catalog/helloworld/`{{execute}}

`./helloworld-app.wb`{{execute}}
`cat staging/helloworld-centos.json`{{execute}}



