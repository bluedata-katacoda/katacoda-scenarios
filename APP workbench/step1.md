Let's Start App workbench Tutorial 

App Workbench – A tool provided by BlueData to create, assemble, and share dockerized applications running on BlueData

App Workbench version 3.4 (also called bdwb) is a Python-based CLI framework that provides a rich set of APIs, macros, and a shell to:
Create Docker images from Dockerfiles based on BlueData images.
Orchestrate the run time environment for single and multi-node deployments.
Package and load images into the BlueData EPIC App Store (i.e. new Catalog entries)

The App Workbench focuses mainly on the following three use cases:
1.Modify or upgrade an existing Hadoop or Spark distribution in the App Store
2.Add a new application as an edge node to a Hadoop or Spark cluster with auto-provisioning
3.Create new images for Big Data applications and frameworks


new features in App Workbench 3.4:
1.Assign a different Docker image to each virtual node role
2.Auto-increment build numbers
3.Variable definition
3.Role-specific options
4.Remote copy/execute
5.Remote Docker registries

Application Classification and Integration Patterns

Big Data Application Classification
Big Data applications fall into the following categories:

1.Data ingestion (Ingress)
2.Data storage
3.Data processing and machine learning
4.View or output (Egress)

Application Integration Patterns
Users can connect to Big Data applications in three ways:
1.From a desktop/laptop computer
2.As Edge/client nodes
3.Embedded with Hadoop
