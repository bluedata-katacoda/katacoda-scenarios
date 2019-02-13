Now, to upgrade an existing image to a new one, we should make changes in the following files:
<br>
<br>-.wb file

Changes that needs to be done in wb file is: Name and distro_id needs to be updated based on the version of the Spark image to reflect the changes in the App Store for the upgraded image

<br>-Dockerfile

EPIC always starts with a Dockerfile that explicitly lists all of the software used for building the CDH image and the commands to configure the application.

<br>-json file

Changes that needs to be done in json file is: Name and distro_id needs to be updated based on the version of the Spark image to reflect the changes in the App Store for the upgraded image

In the next few steps we will be modifying these files to upgrade our application image.


