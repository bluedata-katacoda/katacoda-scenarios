The next step is to create a Dockerfile. 

<br>
<strong>"A docker file is a text file that the Docker engine understands to automatically build an image by reading the file. The Dockerfile consists of all the commands a user would call to assemble the desired image."</strong>
<br>

To view the contents of the Dockerfile, you can use vi, vim, or cat out the contents. To view the contents in the terminal console, execute the following command:
<br>`cat ~/Source/CDH/image/centos/Dockerfile`{{execute}}<br>

You will now see many commands populate your terminal. These are the commands you would use if you were to install your application manually on a host. 
<br>The first line of the Dockerfile determines what is the “base” image you will be using to install your application on.
<br>
<br>Blue Data provides their own base image, which you can use by simply adding the following command at the top of your Dockerfile: 
<br><b>FROM bluedata/centos7:latest</b><br>
You have ability to create your own base image.<br>
e.g: <b>FROM ubuntu:12.04</b>, ubuntu:12.04 is the base image used here.
<br>
<br>
All the commands proceeding the base image, are the commands used to setup the application. 
<br>These files / commands will be setup on top of the base image from BlueData and will eventually compile into a .Bin file for use on the EPIC platform. 
