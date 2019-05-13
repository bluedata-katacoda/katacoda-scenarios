yum install -y python-pip
pip install --upgrade setuptools
pip install --upgrade requests
pip install --upgrade argparse

pip install --upgrade pip
pip install --upgrade bdworkbench
yum install -y epel-release

yum install -y python-requests python-setuptools python-argparse python-pip


wget https://www.dropbox.com/s/2mh0pzsq1092xr8/bdcatalog-centos7-bluedata-hdp25-ambari-3.3.bin.tar.gz
tar xvf bdcatalog-centos7-bluedata-hdp25-ambari-3.3.bin.tar.gz
chmod +x bdcatalog-centos7-bluedata-hdp25-ambari-3.3.bin

