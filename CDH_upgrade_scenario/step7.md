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
The identification blob appears as follows:
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

distro_id is unique identifier for either a Catalog entry or a versioned set of Catalog entries
The label property contains the following parameters:
name, which is the "short name" of the Catalog entry. The Catalog API does not allow entries with different distro IDs to share the same name.
description, which is a longer, more detailed blurb about the entry.
ersion is a discriminator between multiple Catalog entries that share the same distro ID.
epic_compatible_versions lists the EPIC platform versions where this Catalog entry may be used.
categories is a list of strings used by the EPIC interface to group Catalog entries during cluster creation.

<br>
<li><strong>Components</strong></li>
<br>
"image": {
  "checksum": "b07e8cfea8a9c1a6cdc6990b1da29b9f",
  "import_url": "http://s3.amazonaws.com/bluedata-vmimages/Cloudera-CDH-CM-5.4.3-v2.tgz"
},
"setup_package": {
  "checksum": "7560c8841c1400e0e4a4ba3dac1ba8d7",
  "import_url": "http://s3.amazonaws.com/bluedata-vmimages/cdh5-cm-setup.tgz"
},
<br>
image is a property that identifies the location for the image used to launch virtual nodes for this Catalog entry. 
setup_package is similar to the image property except for the configuration scripts package that runs inside the launched virtual node.

<br>
<li><stong>Services</strong></li>
The services blob appears as follows:
<br>
"services": [
  {
    "id": "hbase_master",
    "exported_service": "hbase",
    "label": {
      "name": "HMaster"
      },
    "endpoint" : {
      "url_scheme" : "http",
      "port" : "60010",
      "path" : "/",
      "is_dashboard" : true
      }
    },
    
   <br>
  In this example, services is a list of service objects.
<br>The defined services will be referenced by other elements of this JSON file to determine which services are active on which nodes     within the cluster. <br>

<li><strong>Node Roles</strong></li>
The Node Roles blob appears as follows:
<br>
"node_roles": [
  {
    "id": "controller",
    "cardinality": "1",
    "anti_affinity_group_id": "CM",
    "min_cores": "4",
    "min_memory": "12288"
  },
  <br>
  
  In this example, node_roles is a list of objects describing roles that may be deployed for this Catalog entry. Each role is a particular configuration instantiated from the entry's virtual node image and configured by the setup scripts
  
<li><strong>Configuration</strong></li>
<br>
  Selected Roles-lists IDs of roles that will be deployed.<br>
  Node Services-lists IDs of services that will be present on nodes of a given role, if that role is deployed.<br>
  Config Metadata-lists of string key/value pairs that can be referenced by the setup scripts.<br>
  Config Choices-lists both the choices available to the UI/API user and the possible selections for each choice.<br>
</ul>
