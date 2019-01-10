Now, we will make changes in .wb file first.<br>
In wb file, we need to change the versions of the images we are downloading.
<br><br>
We already have a reference .wb file. We just need to replace the current .wb file with the reference one. For doing so, execute the following commands.<br>
`cd ~/Source/Spark`{{execute}}
<br>`rm -rf spark221.wb spark221e1.json`{{execute}}
<br>`cp ~/test/spark_notebook.wb ~/Source/Spark`{{execute}}

To view the content of the file, execute the following<br>
`cat ~/Source/Spark/spark_notebook.wb`{{execute}}
