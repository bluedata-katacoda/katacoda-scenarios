App Catalog – Node, Role, and Service

BlueData catalog allows users to map a deployment strategy in a json file, and use this json as a guide while stating the cluster. Same Docker image can be used in multiple strategies. Catalog file includes:

Node = A running docker container instance. A cluster can have several nodes, spread on several physical hosts

Role = A type of a container.  Example: worker, master, edge, etc. A cluster can have zero or more containers of each role after deployment
Service = A list of all possible services registered for a given cluster. Example: CM Server, CM Agent.NameNode, DataNode, Yarn RM, NodeManager, Hive Thrift Sever, ..
Role to Service mapping =  Defining the association of what list of services run on which role. Example: NameNode and Yarn RM runs on master. DataNode and NodeManager runs on worker.



Walkthrough Introduction

Application Design Considerations
When designing an application that you intend to build using App Workbench:

1.EPIC runs applications unmodified. You can have multiple services running inside a single container, much like a physical installation. 

2.For simplicity, BlueData encourages the use of a single Docker image file for a given application. 

3.Per-node service placement is controlled through a service definition catalog (JSON) file.

4.If necessary, an add-on service can be stored in its own Docker image file and be attached as a dependent service into a Hadoop or Spark cluster.


Application Lifecycle


1.Creating the Dockerfile
Image developers create and use Dockerfiles on an application development machine.however organizations can build entirely custom base images and add the necessary BlueData components

2.Metadata JSON File
Most Big Data applications require running multiple services per node, and running different sets of services on different nodes. The set of services that run on a given node is controlled by the role assigned to that node.
The Catalog metadata JSON file includes the application name, ID, version, logo, and UI preferences. This JSON file also includes a list of the services, roles, and role-to-service assignments that will be used when a cluster is created from that image.

3.Startscripts
The application package (.bin file) contains all of the scripts that are executed as part of the cluster bring-up process, as well as logic to start services that must be run on node(s) assigned to one or more specific role(s) defined in the metadata JSON file.

4.Creating the .bin File
AppWorkbench allows users to build and package the application components (see Components of an Application) into a compressed .bin file for easy identification, distribution, and management.

5.Registering the Application
Applications provided by BlueData will normally appear in the App Store screen. Custom applications must be manually added to EPIC in order for them to be visible in the App Store screen. To do this:
1.Copy the .bin file to /srv/bluedata/catalog on the EPIC Controller host.
2.In the EPIC interface, refresh the App Store screen. It should display a new icon using the logo image from the new .bin file.
3.Click the Install button for the application. This process makes the application binaries ready and available for future use but does not create any clusters.

6.Removing the Application
The Platform Administrator can delete or disable an application from the App Store screen. Disabling an application prevents new clusters from being created using that application.



Cluster Deployment Lifecycle

1.Creating the Cluster

When creating the cluster:
Application experts can create templates with all the necessary choices preconfigured.
Users can quick-launch clusters from templates.
Clusters can be created using either the EPIC interface or the API. 
Cluster creation options can be customized and presented to the user via custom elements by updating the metadata JSON file. S
bdvcli commands offer a rich set of information about the cluster and tenant from within a container.

2.Bootstrapping

Startscripts run immediately after a cluster is started or restarted. Some of the things you can do with a startscript include:

Set up single-realm or cross-realm Kerberos authentication for Hadoop applications.
Enable Transparent Data Encryption (TDE) on Kerberized clusters. 
Set up custom LDAP/AD integration on all of the Docker nodes in the cluster.
Perform SAML integration for the cluster

3.Running
While a cluster is running:

Authorized users can access the cluster via SSH.
ActionScripts can be used to bulk-add missing packages for R, Python, Java, and more.
ActionScripts can be run using either the EPIC interface (see Creating a New ActionScript) or the API.
Models and results can be saved to the default TenantStorage DataTap or to shared external storage via a DataTap, git, or S3 locations.
Any product can be deployed for testing or use once the cluster has been created.

4.Scaling the Cluster
Running applications in BlueData can be scaled up or down using either the EPIC interface or the API. All registered services will automatically start and be configured after the cluster has been scaled up or down.

5.Stopping/Deleting the Cluster
Clusters can be stopped to release shared resources. SSH access is disabled, and running services stop when the cluster is stopped. Resources are released
