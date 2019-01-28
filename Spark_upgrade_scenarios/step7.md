

We need to add additional configuration fils under appconfig directory, We already have a reference configuration files, To add them follow the below steps<br>

Remove the appconfig folder from the Spark folder<br>
`rm -rf appconfig`{{execute}}

Add the appconfig reference file using the below command<br>
`wget https://www.dropbox.com/s/f8cjkwzz6qdov0d/appconfig.zip`{{execute}}

<br>`yum install unzip -y`{{execute}}

Unzip the file<br>
`unzip appconfig.zip`{{execute}}

Check files under appconfig directory<br>
`ls appconfig`{{execute}}

<strong>scripts run inside each container during cluster creation and are located in the appconfig folder</strong>

appjob         jupyterhub_config.py  sq_kernel.json       total_vcores.sh
core-site.xml  logging.sh            start_jupyterhub.sh  utils.sh
hadoop         macros.sh             start_jupyter.sh
jupyter        p_kernel.json         startscript
jupyterhub     spark                 systemd.service


Remove the zip file from the folder<br>
`rm -rf appconfig.zip`{{execute}}

