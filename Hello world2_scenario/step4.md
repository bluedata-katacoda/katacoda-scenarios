Now, to upgrade an existing image to a new one, we should make changes in the following files:
<br>
<br><b><li>.wb file:</b> Name and distro_id of image needs to be updated based on the version of the Hello-world image to reflect the changes in the App Store for the upgraded image

<b><li>Dockerfile:</b> EPIC always starts with a Dockerfile, here we need to explicitly list all of the software used for building the Hello-world image and also add all the required dependencies.

<b><li>index.html:</b> This is the web page that will be served by the HTTPD service in this example. This file illustrates the use of various templates.

<b><li>Logo:</b> This is a 400x200 .png image file that will serve as the logo file for the application.


In the next few steps we will be modifying these files to upgrade our application image.


