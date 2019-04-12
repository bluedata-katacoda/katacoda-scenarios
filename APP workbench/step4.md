<b>Application Design Considerations:</b><br>
<br>1. EPIC runs applications unmodified. You can have multiple services running inside a single container, much like a physical installation.<br> 
<br>2. For simplicity, BlueData encourages the use of a single Docker image file for a given application<br> 
<br>3. Per-node service placement is controlled through a service definition catalog (JSON) file<br>
<br>4. If necessary, an add-on service can be stored in its own Docker image file and be attached as a dependent service into a Hadoop or Spark cluster<br></ol>


<br>
<b>Application Lifecycle:</b>
<ol>
  <li>Creating the Dockerfile</li>
<br>Image developers create and use Dockerfiles on an application development machine, however organizations can build entirely custom base images and add the necessary BlueData components<br>

<li>Metadata JSON File</li>
<br>Most Big Data applications require running multiple services per node, and running different sets of services on different nodes. The set of services that run on a given node is controlled by the role assigned to that node.
<br>The Catalog metadata JSON file includes the application name, ID, version, logo, and UI preferences. This JSON file also includes a list of the services, roles, and role-to-service assignments that will be used when a cluster is created from that image<br>

<li>Startscripts</li>
<br>The application package (.bin file) contains all of the scripts that are executed as part of the cluster bring-up process, as well as logic to start services that must be run on node(s) assigned to one or more specific role(s) defined in the metadata JSON file<br>

<li>Creating the .bin File</li>
<br>AppWorkbench allows users to build and package the application components (see Components of an Application) into a compressed .bin file for easy identification, distribution, and management<br>

<li>Registering the Application</li>
<br>Applications provided by BlueData will normally appear in the App Store screen. Custom applications must be manually added to EPIC in order for them to be visible in the App Store screen. To do this:

1. Copy the .bin file to /srv/bluedata/catalog on the EPIC Controller host.

2. In the EPIC interface, refresh the App Store screen. It should display a new icon using the logo image from the new .bin file.

3. Click the Install button for the application. This process makes the application binaries ready and available for future use but does not create any clusters.

<li>Removing the Application</li>
<br>The Platform Administrator can delete or disable an application from the App Store screen. Disabling an application prevents new clusters from being created using that application.









	
