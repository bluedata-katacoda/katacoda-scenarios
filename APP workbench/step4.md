<b>Application Design Considerations</b>
<br>When designing an application that you intend to build using App Workbench:
<br>1.EPIC runs applications unmodified. You can have multiple services running inside a single container, much like a physical installation. 
<br>2.For simplicity, BlueData encourages the use of a single Docker image file for a given application. 
<br>3.Per-node service placement is controlled through a service definition catalog (JSON) file.
<br>4.If necessary, an add-on service can be stored in its own Docker image file and be attached as a dependent service into a Hadoop or Spark cluster.


<b>Application Lifecycle</b>
<ol>
  <li>Creating the Dockerfile</li>
<br>Image developers create and use Dockerfiles on an application development machine.however organizations can build entirely custom base images and add the necessary BlueData components

<li>Metadata JSON File</li>
<br>Most Big Data applications require running multiple services per node, and running different sets of services on different nodes. The set of services that run on a given node is controlled by the role assigned to that node.
<br>The Catalog metadata JSON file includes the application name, ID, version, logo, and UI preferences. This JSON file also includes a list of the services, roles, and role-to-service assignments that will be used when a cluster is created from that image.

<li>Startscripts<li>
<br>The application package (.bin file) contains all of the scripts that are executed as part of the cluster bring-up process, as well as logic to start services that must be run on node(s) assigned to one or more specific role(s) defined in the metadata JSON file.

<li>Creating the .bin File</li>
<br>AppWorkbench allows users to build and package the application components (see Components of an Application) into a compressed .bin file for easy identification, distribution, and management.

<li>Registering the Application</li>
<brApplications provided by BlueData will normally appear in the App Store screen. Custom applications must be manually added to EPIC in order for them to be visible in the App Store screen. To do this:

1.Copy the .bin file to /srv/bluedata/catalog on the EPIC Controller host.

2.In the EPIC interface, refresh the App Store screen. It should display a new icon using the logo image from the new .bin file.

3.Click the Install button for the application. This process makes the application binaries ready and available for future use but does not create any clusters.

<li>Removing the Application</li>
<br>The Platform Administrator can delete or disable an application from the App Store screen. Disabling an application prevents new clusters from being created using that application.

<b>Cluster Deployment Lifecycle</b>
<ol>
  <li>Creating the Cluster</li>

When creating the cluster:
<ul>
  <li>Application experts can create templates with all the necessary choices preconfigured</li>
  <li>Users can quick-launch clusters from templates.</li>
  <li>Clusters can be created using either the EPIC interface or the API.</li>
<li>Cluster creation options can be customized and presented to the user via custom elements by updating the metadata JSON file. </li>
<li>bdvcli commands offer a rich set of information about the cluster and tenant from within a container.</li>
</ul>
<li>Bootstrapping</li>

Startscripts run immediately after a cluster is started or restarted. 
Some of the things you can do with a startscript include:
<ul>
  <li>Set up single-realm or cross-realm Kerberos authentication for Hadoop applications</li>
  <li>Enable Transparent Data Encryption (TDE) on Kerberized clusters</li>
  <li>Set up custom LDAP/AD integration on all of the Docker nodes in the cluster</li>
  <li>Perform SAML integration for the cluster</li>
</ul>
<li>Running</li>
While a cluster is running:
<ul>
  <li>Authorized users can access the cluster via SSH</li>
  <li>ActionScripts can be used to bulk-add missing packages for R, Python, Java, and more</li>
<li>ActionScripts can be run using either the EPIC interface (see Creating a New ActionScript) or the API</li>
<li>Models and results can be saved to the default TenantStorage DataTap or to shared external storage via a DataTap, git, or S3 locations.</li>
  <li>Any product can be deployed for testing or use once the cluster has been created.</li>
</ul>
<li>Scaling the Cluster
  <ul>
<li>Running applications in BlueData can be scaled up or down using either the EPIC interface or the API. All registered services will automatically start and be configured after the cluster has been scaled up or down.</li>
  </ul>
<li>Stopping/Deleting the Cluster
  <ul>
<li>Clusters can be stopped to release shared resources. SSH access is disabled, and running services stop when the cluster is stopped. Resources are released</li>
    </ul>
      
</ol>








	
