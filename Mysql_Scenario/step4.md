In this step we are referring to the startscript file created back in step 2 using the app workbench init command.<br>
For reference, we already have a startscript available.<br>We can copy it to the appconfig folder using the following commands.
<br><br>Removing the existing startscrit from folder ~/Mysql/appconfig<br>
`rm -rf ~/Mysql/appconfig/startscript`{{execute}}

Copy the new startscript.<br>`cp ~/test/startscript ~/Mysql/appconfig`{{execute}}

To view the content of startscript. Please execute the below command.<br>
`cat ~/Mysql/appconfig/startscript`{{execute}}

Copy the configure_java8.sh file which is used for configuring java.<br>
`cp ~/test/configure_java8.sh ~/Mysql/image/centos`{{execute}}
<br><br>
To view the content of configure_java8 file.<br>Please execute the below command.<br>
`cat ~/Mysql/image/centos/configure_java8.sh`{{execute}}
