App Catalog – Node, Role, and Service

BlueData catalog allows users to map a deployment strategy in a json file, and use this json as a guide while stating the cluster. Same Docker image can be used in multiple strategies. Catalog file includes:

Node = A running docker container instance. A cluster can have several nodes, spread on several physical hosts

Role = A type of a container.  Example: worker, master, edge, etc. A cluster can have zero or more containers of each role after deployment
Service = A list of all possible services registered for a given cluster. Example: CM Server, CM Agent.NameNode, DataNode, Yarn RM, NodeManager, Hive Thrift Sever, ..
Role to Service mapping =  Defining the association of what list of services run on which role. Example: NameNode and Yarn RM runs on master. DataNode and NodeManager runs on worker.


