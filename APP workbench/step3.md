Manual installation exercise

Skills needed:
<ul>
  <li>Ability to install applications manually</li>
  <li>Familiarity with shell and python scripting</li>
  <li>Linux admin skills</li>
</ul>
Note: Install java, Spark, Webssh on all nodes

1. Download scripts from 
`wget –O https://s3.amazonaws.com/bluedata-training/scripts/manual_install.zip`

(Extract the bdworkbench-*-tar.gz file using the gunzip utility.
Change directory into bdworkbench-*.
Execute the command sudo python setup.py install.)

To install app workbench dependencies using yum:
$> `yum install -y python-setuptools`

<b>App Catalog – Node, Role, and Service</b>

BlueData catalog allows users to map a deployment strategy in a json file, and use this json as a guide while stating the cluster. Same Docker image can be used in multiple strategies. Catalog file includes:

<br>Node = A running docker container instance. A cluster can have several nodes, spread on several physical hosts
<br>Role = A type of a container.  Example: worker, master, edge, etc. A cluster can have zero or more containers of each role after deployment
<br>Service = A list of all possible services registered for a given cluster. Example: CM Server, CM Agent.NameNode, DataNode, Yarn RM, NodeManager, Hive Thrift Sever, ..
<br>Role to Service mapping =  Defining the association of what list of services run on which role. Example: NameNode and Yarn RM runs on master. DataNode and NodeManager runs on worker.


