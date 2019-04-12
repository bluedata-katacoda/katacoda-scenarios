Creating bin using App Workbench by executing the following commands.

Task 1:</b>
<br>Go inside the Mysql folder.
<br>`cd ~/Mysql`{{execute}}

Please review the link before proceeding for wb file: [Link](http://docs.bluedata.com/awb34_applications-with-multiple-images)

<b>Task 2:</b>
<br>Go to BlueData Workbench.
<br>`bdwb`{{execute}}

<b>Task 3:</b>
<br>Setting up the organization name.
<br>`builder organization --name BlueData`{{execute}}

<b>Task 4:</b>
<br>Adding a new Catalog Entry.
<br>`catalog new --distroid mysql --name "MySQL" --desc "Open-source RDBMS" --categories databases --catalogapi 4 --version 1.0`{{execute}}

<b>Task 5:</b>
<br>Define all node roles for the virtual cluster.
<br>`role add controller 1`{{execute}}


<b>Task 6:</b>
<br>Define all services that are available in the virtual cluster.
<br>`service add --srvcid mysql --name "Mysql server" --port 3306 --sysctl mysqld --onroles controller`{{execute}}

<b>Task 7:</b>
<br>Appconfiguration autogenenration.
`appconfig autogen --new --configapi 7`{{execute}}
<br>`appconfig autogen --generate`{{execute}}
<br>`appconfig package`{{execute}}

<b>Task 8:</b>
<br>Setting the logo for bin.
<br>`logo file --filepath Logo_mysql.png`{{execute}}

<b>Task 9:</b>
<br>Catalog the package for image
<br>`image build --basedir image/centos --image-repotag bluedata/mysql-centos7:1.0`{{execute}}
<br>`image package --image-repotag bluedata/mysql-centos7:1.0 --os centos7 --roles controller`{{execute}}
<br>`catalog save --filepath staging/mysql-centos7.json --force`{{execute}}
<br>`sources package`{{execute}}
<br>`catalog package`{{execute}}
