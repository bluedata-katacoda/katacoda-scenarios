yum install -y python-pip
pip install --upgrade setuptools
pip install --upgrade requests
pip install --upgrade argparse

pip install --upgrade pip
pip install --upgrade bdworkbench
yum install -y epel-release

yum install -y python-requests python-setuptools python-argparse python-pip

yum install wget -y
wget https://www.dropbox.com/s/xyv64z1xt9l6lw7/bdcatalog-centos7-bluedata-cdh514_centos7x-1.7.tar
tar xvf bdcatalog-centos7-bluedata-cdh514_centos7x-1.7.tar
chmod +x bdcatalog-centos7-bluedata-cdh514_centos7x-1.7.bin

wget https://www.dropbox.com/s/r4m3bba2qtueu5q/bdcatalog-centos7-bluedata-spark221-1.0.bin.tar
tar xvf bdcatalog-centos7-bluedata-spark221-1.0.bin.tar
chmod +x bdcatalog-centos7-bluedata-spark221-1.0.bin

wget https://www.dropbox.com/s/2mh0pzsq1092xr8/bdcatalog-centos7-bluedata-hdp25-ambari-3.3.bin.tar.gz
tar xvf bdcatalog-centos7-bluedata-hdp25-ambari-3.3.bin.tar.gz
chmod +x bdcatalog-centos7-bluedata-hdp25-ambari-3.3.bin

wget https://www.dropbox.com/s/wbnr83q26przbs6/appconfig.zip
yum install unzip -y
unzip appconfig.zip
