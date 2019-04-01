Install Appworkbench

For users with Internet access, run this command:
	      pip install --upgrade bdworkbench==3.4

For users without internet access, follow the link below:
	`http://docs.bluedata.com/awb322_installing-app-workbench-on-your-epic-controller`

Enable application from UI
Bluedata -> Site Admin -> App Store -> Refresh
Click on Install

Application bin file
App Directory (MySql)/

      image/centos/Role/(Dockerfile)
    
      appconfig/..startscript 
 
      meta.json  (Automatically generated)
      
      app.logo

      mysql.wb 
Creating a MySQL Image
mkdir Mysql
cd Mysql
wget  https://s3.amazonaws.com/bluedata-catalog/solutions/training/mysql.tgz
tar -xvzf mysql.tgz
Execute the “.wb” file to create a bin file 
          ./mysql.wb
