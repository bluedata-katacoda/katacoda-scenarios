Now, we will make changes in our .json file.<br>

We already have a reference json file. We just need to replace the current json file with the reference one. For doing so, execute the following commands.
<br>`rm -rf ~/Source/CDH/cdh514.json`{{execute}}
<br>`cp ~/test/cdh515.json ~/Source/CDH/`{{execute}}

To view the content of the file, execute the following
<br>`cat ~/Source/CDH/cdh515.json`{{execute}}

<b>Json file</b> Contains the application registration and deployment information.

<br>
<strong>Json file contain below sections<br></strong>
<ul>
  
<li><strong>Identification</strong></li>
<br>
<b>The example snippet for identification:</b>
<br>
"distro_id": "bluedata/cdh515_centos7x"<br>
"label": {<br>
  "name": ""name": "CDH 5.15.0 on 7x  with Cloudera Manager",<br>
  "description": "CDH 5.15.0 with MRv1/YARN and HBase support. Includes Pig, Hive, Hue and Spark."<br>
  },<br>
"version": "1.7",<br>
"epic_compatible_versions": ["3.4"],<br>
"categories": [ "Hadoop", "HBase" ],<br>

<br>
<strong>distro_id </strong> is unique identifier for either a Catalog entry or a versioned set of Catalog entries.
<br>The <strong>label</strong> is a property contains the following parameters:<br>

<strong>name</strong> which is the "short name" of the Catalog entry. The Catalog API does not allow entries with different distro IDs to share the same name.

<br><strong>description</strong> which is a longer, more detailed blurb about the entry.

<br><strong>version </strong>is a discriminator between multiple Catalog entries that share the same distro ID.

<br><strong>epic_compatible_versions</strong> lists the EPIC platform versions where this Catalog entry may be used.

<br><strong>categories</strong> is a list of strings used by the EPIC interface to group Catalog entries during cluster creation.
<br>
<br>Note: Changes that needs to be done in json file for upgrading CDH image is:
Name and distro_id needs to be updated  based on the version of the CDH image to reflect the changes in the App Store for the upgraded image<br>

<br>
<li><strong>Components</strong></li>
<br>
<b>The example snippet for components:</b>
<br>
"image": {<br>
 "checksum": "65cd4ffd0cac3feec3e0719ae4f3dbcd",
        "source_file": "bluedata-cdh5122_centos7x-centos7-2.0.tar.gz"<br>
},<br>
"setup_package": {<br>
  "config_api_version": 7,
       <br> "checksum": "a7ea64f9b1de60ab9f87d76e2f571069",
     <br>   "source_file": "cdh5-cm-setup.tgz"<br>
},<br>
<br>
<br><strong>image</strong>  is a property that identifies the location for the image used to launch virtual nodes for this Catalog entry. 

<br><strong>setup_package</strong>  is similar to the image property except for the configuration scripts package that runs inside the launched virtual node.

<br>
<br>
<li><strong>Services</strong></li><br>
<b>The example snippet for services:</b>
<br>
"services": [<br>
  {<br>
    "id": "hbase_master",<br>
    "exported_service": "hbase",<br>
    "label": {<br>
      "name": "HMaster"<br>
      },<br>
    "endpoint" : {<br>
      "url_scheme" : "http",<br>
      "port" : "60010",<br>
      "path" : "/",<br>
      "is_dashboard" : true<br>
      }<br>
    },<br>
    
   <br>
  In this example, services is a list of service objects.
<br>The defined <strong>services</strong> will be referenced by other elements of this JSON file to determine which services are active on which nodes  within the cluster. <br>
<br>
<li><strong>Node Roles</strong></li>

<br><b>The example snippet for Node Roles:</b>
<br>
"node_roles": [<br>
  {<br>
    "id": "controller",<br>
    "cardinality": "1",<br>
    "anti_affinity_group_id": "CM",<br>
    "min_cores": "4",<br>
    "min_memory": "12288"<br>
  },<br>
  <br>
  
  In this example,<strong>node_roles</strong>  is a list of objects describing roles that may be deployed for this Catalog entry. Each role is a particular configuration instantiated from the entry's virtual node image and configured by the setup scripts
 <br>
<li><strong>Configuration</strong></li>
<br>
  <strong>Selected Roles-</strong>lists IDs of roles that will be deployed.<br>
  
  <strong>Node Services-</strong>lists IDs of services that will be present on nodes of a given role, if that role is deployed.<br>
  
  <strong>Config Metadata-</strong> lists of string key/value pairs that can be referenced by the setup scripts.<br>
  
 <strong>Config Choices-</strong> lists both the choices available to the UI/API user and the possible selections for each choice.<br>
</ul>
