For creating the image in the Bluedata EPIC platform, you need to install BlueData EPIC App workbench.

We have already installed BlueData Epic App WorkBench. For more information, please click [here](https://bluedata.zendesk.com/hc/en-us/categories/115000240313-App-Workbench)

For checking the version of BlueData App-Workbench, execute the following command.

`bdwb --version`{{execute}}

<br>
Now, to begin let us create the directory to house the files
<br>`mkdir ~/Source`{{execute}}
<br>`mkdir ~/Source/HDP`{{execute}}

<br>Now, Remove all folders which are pre-installed to save the space. 
<br>rm -rf $(ls | grep -v Source | grep -v test)
