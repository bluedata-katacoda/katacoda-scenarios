Step 9 - Checking the Bin File For CDH.

Let's see what you have built.
The newly built application package (or bundle) is saved in the deliverables directory. 
<br>`cd deliverables`{{execute}}
<br>`ls `{{execute}}

Also, you can verify the created image by executing the following command<br>
`docker images`{{execute}}

Congratulations you have successfully upgraded the CDH image.

To make the new image appear in App Store.
Copy the bin file to /srv/bluedata/catalog using the following commad
<br>`cp bdcatalog-centos7-bluedata-cdh515_centos7x-1.7.bin /srv/bluedata/catalog`{{execute}}

Make it executable using the below command
<br>`chmod +x bdcatalog-centos7-bluedata-cdh515_centos7x-1.7.bin`{{execute}}

Go to App Store in the EPIC GUI and click on <b>Refresh </b>button to bring the image in to App Store

Once the image appears on the App Store click on <b>Install </b> button to install the image
