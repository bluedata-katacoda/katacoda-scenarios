Let's install App workbench version 3.4 

Skills needed:
<ul>
  <li>Ability to install applications manually</li>
  <li>Familiarity with shell and python scripting</li>
  <li>Linux admin skills</li>
</ul>
1.Download scripts from 
<br>`wget https://files.pythonhosted.org/packages/b0/20/a95abd315193ac23a16dbe04ba582dc8d7372d55a1730846a7d25136bdb5/bdworkbench-3.4.tar.gz`{{execute}}

2.Extract the bdworkbench tar file by executing following command
<br>`tar -xvf bdworkbench-3.4.tar.gz`{{execute}}

3.Change the directory to bdworkbench
<br>`cd bdworkbench-3.4`{{execute}}

4.Execute the below command to install missed python packages
<br>`sudo yum -y install python-requests`{{execute}}

5.Execute the below command it will update the OS kernel and install all missing packages that the OS layer was missing from Katacoda
<br>`yum update -y `{{execute}}

6.Execute the below command to install python packages
<br>`sudo python setup.py install`{{execute}}

7.To facilitate python packaging execute the following commnad
<br>`yum install -y python-setuptools`{{execute}}

8.To check the installed app work bench version
<br>`bdwb --version`{{execute}}

9.The workbench has inline help. Try the following
<br>`bdwb`{{execute}}

`help`{{execute}}

`help catalog`{{execute}}

`help catalog new`{{execute}}

`exit`{{execute}}

BlueData catalog allows users to map a deployment strategy in a json file, and use this json as a guide while stating the cluster. Same Docker image can be used in multiple strategies. 

Catalog file includes:
<br><b><li>Node:</b> A running docker container instance. A cluster can have several nodes, spread on several physical hosts
<br>
<br><b><li>Role:</b> A type of a container.  Example: worker, master, edge, etc. A cluster can have zero or more containers of each role after deployment
<br>
<br><b><li>Service:</b> A list of all possible services registered for a given cluster. Example: CM Server, CM Agent.NameNode, DataNode, Yarn RM, NodeManager, Hive Thrift Sever, 
<br>
<br><b><li>Role to Service mapping:</b> Defining the association of what list of services run on which role. 
Example: NameNode and Yarn RM runs on master. DataNode and NodeManager runs on worker.


