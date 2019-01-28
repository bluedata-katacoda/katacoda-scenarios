In this step you will learn to create a Dockerfile for Centos.
We need to create Centos folder under image.<br>
`mkdir ~/Mysql/image/centos`{{execute}}
<br>

<strong>"A docker file is a text file that the Docker engine understands to automatically build an image by reading the file. The Dockerfile consists of all the commands a user would call to assemble the desired image."</strong>
<br>
<br>
Let’s go ahead and create a Dockerfile inside the newly centos folder.
<br>
<br>Now create Dockerfile inside the centos folder.
For reference, there's already a Dockerfile.<br>You can just copy the Dockerfile to Centos folder.<br>
`cp ~/test/Dockerfile ~/Mysql/image/centos`{{execute}}

To view the content of Dockerfile please execute the following command.<br>
`cat ~/Mysql/image/centos/Dockerfile`{{execute}}

You will now see many commands populate your terminal. These are the commands you would use if you were to install your application manually on a host. 
<br>The first line of the Dockerfile determines what is the “base” image you will be using to install your application on. 
<br>Blue Data provides their own base image, which you can use by simply putting the following command at the top of your Dockerfile: 

<br>FROM bluedata/centos7:latest
<br>
<br>
All the commands proceeding the base image, are the commands used to setup the application. 
<br>These files / commands will be setup on top of the base image from BlueData and will eventually compile into a .Bin file for use on the EPIC platform. 
