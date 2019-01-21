
Create a directory for the Hello World Application. This is where all the data will reside. Navigate to the directory after creating it.”

`mkdir -p ~/src/catalog/helloworld`{{execute}}

`cd ~/src/catalog/helloworld`{{execute}}

You are in the directory

Create a skeleton file structure with the appropriate directories for creating the application .bin file

`bdwb --init`{{execute}}

`ls -R`{{execute}}

Make sure the folllwing files and directories are present:

  appconfig/appjob
  
  appconfig/logging.sh
  
  appconfig/macros.sh
  
  appconfig/startscript
  
  appconfig/utils.sh
  
  image/
