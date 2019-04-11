
Let's create a Dockerfile. 

Create a centos directory under /src/catalog/helloworld/ 

`mkdir ~/src/catalog/helloworld/image/centos`{{execute}}


<strong>"A docker file is a text file that the Docker engine understands to automatically build an image by reading the file. The Dockerfile consists of all the commands a user would call to assemble the desired image."</strong><br>
<br>
Copy the sample Dockerfile cloned from BlueData GitHub in to the directory we just created<br>
`cp /tmp/samples/solutions/ImageSamples/helloWorld-auto/image/centos/Dockerfile  ~/src/catalog/helloworld/image/centos/`{{execute}}

To view the contents of the Dockerfile, execute the following command:<br>
`cat ~/src/catalog/helloworld/image/centos/Dockerfile`{{execute}}

<li>You will now see many commands populate your terminal. These are the commands you would use if you were to install your application manually on a host</li><br>
<br><li>The first line of the Dockerfile determines what is the “base” image you will be using to install your application on</li> 

<li>Blue Data provides their own base image, which you can use by simply adding the following command at the top of your Dockerfile:</li> 
<br><b>FROM bluedata/centos7:latest</b><br>

You have ability to create your own base image.<br>
e.g: <b>FROM ubuntu:12.04</b>, ubuntu:12.04 is the base image used here.
<br>
<br>
<li>All the commands proceeding the base image, are the commands used to setup the application</li>

<li>These files or commands will be setup on top of the base image from BlueData and will eventually compile into a .Bin file for use on the EPIC platform</li> 

