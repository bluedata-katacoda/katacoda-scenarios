Now, we will make changes in .wb file first.<br>
In wb file, we need to change the versions of the images we are downloading.
<br><br>
We already have a reference .wb file. We just need to replace the current .wb file with the reference one. For doing so, execute the following commands.<br>
`cd ~/Source/CDH`{{execute}}
<br>`rm -rf cdh514.wb`{{execute}}
<br>`cp ~/test/cdh515.wb ~/Source/CDH`{{execute}}

To view the content of the file, execute the following<br>
`cat ~/Source/CDH/cdh515.wb`{{execute}}
