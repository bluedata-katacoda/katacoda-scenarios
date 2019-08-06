Now, to upgrade an existing image to a new one, we should make changes in the following files:
<br>
<br><b><li>.wb file:</b> Changes that needs to be done in wb file is: Name and distro_id needs to be updated based on the version of the Hello-world image to reflect the changes in the App Store for the upgraded image

<b><li>Dockerfile:</b> EPIC always starts with a Dockerfile, here we need to explicitly list all of the software used for building the Hello-world image and also add all the required dependencies.

In the next few steps we will be modifying these files to upgrade our application image.


