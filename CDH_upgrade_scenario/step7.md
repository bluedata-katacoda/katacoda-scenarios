Now, we will make changes in our .json file.<br>

We already have a reference json file. We just need to replace the current json file with the reference one. For doing so, execute the following commands.
<br>`rm -rf ~/Source/CDH/cdh514.json`{{execute}}
<br>`cp ~/test/cdh515.json ~/Source/CDH/`{{execute}}

To view the content of the file, execute the following
<br>`cat ~/Source/CDH/cdh515.json`{{execute}}

<br>
<strong>Json file contain below sections<br></strong>
<ul>
<li><strong>-Identification</strong></li>
<br>
The identification blob appears as follows:<br>
<br>
"distro_id": "cdh54CM",<br>
"label": {<br>
  "name": "CDH 5.4.3 with Cloudera Manager",<br>
  "description": "CDH 5.4.3 with MRv1/YARN and HBase support. Includes Pig, Hive, Hue and Spark."<br>
  },<br>
"version": "2.0.1",<br>
"epic_compatible_versions": ["3.4"],<br>
"categories": [ "Hadoop", "HBase" ],<br>

<br>
<strong>distro_id </strong> :is unique identifier for either a Catalog entry or a versioned set of Catalog entries
<br>
The <strong>label</strong> is a property contains the following parameters:<br>
<br><strong>name</strong> which is the "short name" of the Catalog entry. The Catalog API does not allow entries with different distro IDs to share the same name.
<br><strong>description</strong> which is a longer, more detailed blurb about the entry.v
<br><strong>version </strong>is a discriminator between multiple Catalog entries that share the same distro ID.
<br><strong>epic_compatible_versions</strong> lists the EPIC platform versions where this Catalog entry may be used.
<br><strong>categories</strong> is a list of strings used by the EPIC interface to group Catalog entries during cluster creation.
<br>
<br>
<br>
<li><strong>Components</strong></li>
<br>
"image": {<br>
  "checksum": "b07e8cfea8a9c1a6cdc6990b1da29b9f",<br>
  "import_url": "http://s3.amazonaws.com/bluedata-vmimages/Cloudera-CDH-CM-5.4.3-v2.tgz"<br>
},<br>
"setup_package": {<br>
  "checksum": "7560c8841c1400e0e4a4ba3dac1ba8d7",<br>
  "import_url": "http://s3.amazonaws.com/bluedata-vmimages/cdh5-cm-setup.tgz"<br>
},<br>
<br>
<br><strong>image</strong>  is a property that identifies the location for the image used to launch virtual nodes for this Catalog entry. 
<br><strong>setup_package</strong>  is similar to the image property except for the configuration scripts package that runs inside the launched virtual node.

<br>
<br>
<li><strong>Services</strong></li><br>
The services blob appears as follows:
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
<br>The defined <strong>services</strong> will be referenced by other elements of this JSON file to determine which services are active on which nodes     within the cluster. <br>
<br>
<li><strong>Node Roles</strong></li>
The Node Roles blob appears as follows:
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
  
<li><strong>Configuration</strong></li>
<br>
  <strong>Selected Roles-</strong>lists IDs of roles that will be deployed.<br>
  <strong>Node Services-</strong>lists IDs of services that will be present on nodes of a given role, if that role is deployed.<br>
  <strong>Config Metadata-</strong> lists of string key/value pairs that can be referenced by the setup scripts.<br>
 <strong>Config Choices-</strong> lists both the choices available to the UI/API user and the possible selections for each choice.<br>
</ul>
