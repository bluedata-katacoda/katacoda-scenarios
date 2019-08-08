Now, we will make changes in our index.html file.<br>

We already have a reference index2.html file. We just need to replace the current json file with the reference one. For doing so, execute the following commands.

This is the web page that will be served by the HTTPD service in this example. This file illustrates the use of various templates and files.

To view the content of index.html file, execute the following command:<br>
`cat ~/source/helloworld2/appconfig/index.html`{{execute}}
<br>
To modify the name of index.html, execute the following command:<br>
`mv appconfig/index.html appconfig/index2.html`{{execute}}
<br>
<br>In This index2.html file we need change the ditroid and name of Image:<br>
`sed -i 's/Hello World/Hello World2/g' appconfig/index2.html`{{execute}}
<br>
<br>Execute the following command to get the reference ready .wb file in test directory:
<br>`cat ~/test/index2.html`{{execute}}

To view the content of updated .wb file, execute the following command:<br>
`cat ~/source/helloworld2/appconfig/index2.html`{{execute}}


