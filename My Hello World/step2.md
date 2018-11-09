<h1> Downloading Sample Files from Git hub</h1>

<h2>Task 1</h2> 
Login into the system or virtual machine where App Workbench has been installed, and then execute the following commands
<ul>
  <li>`yum install -y git`{{execute}}</li>
  <li>`mkdir /tmp/samples`{{execute}}</li>
  <li>`cd /tmp/samples`{{execute}}</li>
  <li>`git clone -b ImageSamples https://github.com/bluedatainc/solutions.git`{{execute}}</li>
</ul>
<h2>Task 2</h2>
Go to the helloworld-auto directory by executing the following commands:
<ul>
  <li>`cd solutions/ImageSamples/helloWorld-auto`{{execute}}</li>

<li>`ls -R`{{execute}}</li>
</ul>
<h2>Task 3</h2>
Create a directory on the system where the App Workbench software is installed. 

`mkdir -p ~/src/catalog/helloworld`{{execute}}

<h2>Task 4</h2>
Change to your new source directory by executing the following command:

`cd ~/src/catalog/helloworld`{{execute}}
<h2>Task 5</h2>
Use the bdwb command to create a skeleton file structure with the appropriate directories for creating the application .bin file by executing the following commands:
<ul>
  <li>`bdwb --init`{{execute}}</li>
  <li>`ls -R`{{execute}}</li>
  </ul>
