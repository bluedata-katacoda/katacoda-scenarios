Manual installation exercise

Skills needed
Ability to install applications manually
Familiarity with shell and python scripting
Linux admin skills

Goal: Install java, Spark, Webssh on all nodes

1. Download scripts from 
`wget –O https://s3.amazonaws.com/bluedata-training/scripts/manual_install.zip`

(Extract the bdworkbench-*-tar.gz file using the gunzip utility.
Change directory into bdworkbench-*.
Execute the command sudo python setup.py install.)

To install app workbench dependencies using yum:
$> `yum install -y python-setuptools`

2. Configure Java on all nodes 

3. Install Spark on all nodes

4. Install WebSSH on controller

5. Add a link to WebSSH from UI

6. Add a user “john” using script 

7. Login as “john” “bluedata123”. Run command: /usr/lib/spark/spark*/bin/spark-shell

Manual install is similar to installing on  physical machines or VMs
Software installation should be moved to Dockerfile
Configuration and startscripts should move to appconfig scripts
Roles and services are defined in metadata json file
Services are mapped to roles
Systemctl scripts are needed to register services to BlueData

