Now, we will make changes in .wb file <br>

Plaese review this link before you proceed: [Link](http://docs.bluedata.com/awb34_updating-an-existing-image)<br>
<br>
For your reference, we have already created a ready .wb file in the ~/test directory. We will copy that file into the helloworld2 directory using the following command:<br>
`cd ~/source/helloworld2`{{execute}}<br>
<br>Delete the existing .wb file before you copy the new .wb file by executing the below command
<br>`rm -rf helloworld-app.wb `{{execute}}<br>
<br>Copy the new .wb file into helloworld2 directory using the following command:
<br>`cp ~/test/helloworld2-app.wb  ~/source/helloworld2`{{execute}}

To view the content of .wb file, execute the following command:<br>
`cat ~/source/helloworld2/helloworld2-app.wb`{{execute}}

<br><strong>Helloworld2-app.wbfile contain following section</strong>
<br>
<br><b>Section 1:</b> <br>
<br><b><li>The below line will Set the organization name</b>
<br>builder organization --name BlueData
<br>
<br><b><li>The below line will add the logo file to the image</b>
<br>logo file --filepath helloworld-logo.png
<br>
<br><b><li>This is to define node roles for the virtual cluster</b>
<br>role add webserver 1
<br>role add controller 1
<br>role add worker 0+
<br>
<br><b><li>This section define one or more services that are mapped on a per-role basis</b>
<br>service add --srvcid httpd --name "HelloWorld" --scheme "http" --port 80 \
	            --path "/" --display  \
	            --sysctl httpd \
	            --onroles webserver controller worker 
<br>		    <
<br><b>Section 2:</b> <br>
<br><b><li>Adding a new Catalog Entry.</b>
<br>catalog new --distroid Helloworld2 --name "Hello World2 on Centos"  \
	            --desc "http service running Hello World page"    \
	            --categories Greetings --version 10.0
<br>		    
<strong>distro_id </strong> is a unique identifier for either a Catalog entry or a versioned set of Catalog entries.
<br>
<strong>name</strong> which is the "short name" of the Catalog entry. The Catalog API does not allow entries with different distro IDs to share the same name.
<br><strong>description</strong> which is a longer, more detailed blurb about the entry.
<br><strong>version </strong>is a discriminator between multiple Catalog entries that share the same distro ID.
<br>
<br><b>Section 3:</b> <br>
<br><b><li>Below section of the .wb file pulls all of the pieces together and builds the .bin file</b>
<br>image build --basedir image/centos --image-repotag bluedata/helloworld2:1.0
<br>image package --image-repotag bluedata/helloworld2:1.0 --os centos7  --roles webserver controller worker
<br>sources package
<br>catalog package


