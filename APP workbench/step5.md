<ol>
  <li>Creating the Cluster</li>

When creating the cluster:
<ul>
  <li>Application experts can create templates with all the necessary choices preconfigured</li>
  <li>Users can quick-launch clusters from templates</li>
  <li>Clusters can be created using either the EPIC interface or the API</li>
<li>Cluster creation options can be customized and presented to the user via custom elements by updating the metadata JSON file </li>
<li>bdvcli commands offer a rich set of information about the cluster and tenant from within a container</li>
</ul>
<br><li>Bootstrapping</li>

Startscripts run immediately after a cluster is started or restarted. 
Some of the things you can do with a startscript include:
<ul>
  <li>Set up single-realm or cross-realm Kerberos authentication for Hadoop applications</li>
  <li>Enable Transparent Data Encryption (TDE) on Kerberized clusters</li>
  <li>Set up custom LDAP/AD integration on all of the Docker nodes in the cluster</li>
  <li>Perform SAML integration for the cluster</li>
</ul>
<br><li>Running</li>
While a cluster is running:
<ul>
  <li>Authorized users can access the cluster via SSH</li>
  <li>ActionScripts can be used to bulk-add missing packages for R, Python, Java, and more</li>
<li>ActionScripts can be run using either the EPIC interface (see Creating a New ActionScript) or the API</li>
<li>Models and results can be saved to the default TenantStorage DataTap or to shared external storage via a DataTap, git, or S3 locations</li>
  <li>Any product can be deployed for testing or use once the cluster has been created</li>
</ul>
<br><li>Scaling the Cluster
  <ul>
<li>Running applications in BlueData can be scaled up or down using either the EPIC interface or the API. All registered services will automatically start and be configured after the cluster has been scaled up or down</li>
  </ul>
<br><li>Stopping/Deleting the Cluster
  <ul>
<li>Clusters can be stopped to release shared resources. SSH access is disabled, and the running services will be stoped when the cluster is stopped</li>
    </ul>
      
</ol>





