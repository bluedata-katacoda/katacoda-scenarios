
By executing the .wb file a new directory will be created named as deliverables

`cd deliverables`{{execute}}

This directory contains the helloworld .bin file

Verify

`ls`{{execute}}

Congratulations you have successfully created the helloworld .bin file

To make the new image appear in App Store. Copy the bin file to /srv/bluedata/catalog using the following commad 
`cp bdcatalog-centos7-bluedata-helloworld-10.0.bin /srv/bluedata/catalog`{{execute}}

Make it an executable using the below command 
`chmod +x bdcatalog-centos7-bluedata-helloworld-10.0.bin`{{execute}}

Go to App Store in the EPIC GUI and click on Refresh button to bring the image in to App Store.

Once the image appears on the App Store click on Install button to install the image.

![alt text](https://dzf8vqv24eqhg.cloudfront.net/userfiles/7467/9720/ckfinder/images/AppWorkbench/Walkthrough/example_3.jpg)
