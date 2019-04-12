Now, to upgrade an existing image to a new one, we should make changes in some of the files like:

<br><li><b>.wb file:</b>Changes that needs to be done in wb file is: Name and distro_id needs to be updated based on the version of the Spark image to reflect the changes in the App Store for the upgraded image.

<li><b>Dockerfile:</b>EPIC always starts with a Dockerfile, here we need to explicitly list all of the software used for building the Spark image and also add all the required dependencies as for the Spark version that we are going to build and the commands to configure the application.

In the next few steps we will be modifying these files to upgrade our application image.
