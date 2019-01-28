Step4: Setup additional dependencies which are needed for Spark.
<br>
<br>
In this step, we will be showing you the additional steps needed to create a successful Spark image.<br> 
We have already referenced the files that are needed, all you would need to do is copy them into the appropriate location. <br>
<br>The dependencies that need to be configured is Jupyter, which we will provide a shell script , and configuring the correct version of Java for Spark. <br>
<br>It is always good to check what version of Spark you are using to understand the dependencies you may need setup in your base image.


Task1:
Copy the pre-made jupyter script to the centos folder:<br>
`cp ~/test/configure_jupyter.sh ~/Spark/image/centos`{{execute}}

Feel free to run the following command to see what is being executed in the shell script: 
`cat ~/Spark/image/centos/configure_jupyter.sh`{{execute}}

You will see the steps required to setup jupyter listed.

Next, copy over the java script:.<br>
`cp ~/test/configure_java8.sh ~/Spark/image/centos`{{execute}}

Task2: 
<br>We need to add additional configuration files under the appconfig directory. We have already made these files for you, to add them in, please execute the following commands:
<br>Remove the appconfig folder from the Spark folder<br>

`rm -rf appconfig`{{execute}}

<br>`yum install wget -y`{{execute}}

Add the appconfig reference file using the below command<br>
`wget https://www.dropbox.com/s/wbnr83q26przbs6/appconfig.zip`{{execute}}

<br>`yum install unzip -y`{{execute}}

<br>Unzip the file<br>
<br>`unzip appconfig.zip`{{execute}}

<br>Check files under appconfig directory<br>
<br>`ls appconfig`{{execute}}

<br>Remove the zip file from the folder<br>
<br>`rm -rf appconfig.zip`{{execute}}

Task3:
<br>When our image is ready to deploy in the EPIC Application Catalog, we need to include a picture that represents the image. For your reference, we have already created a .png file for your use.

<br>
`cp ~/test/Logo_Spark.png ~/Spark`{{execute}}
