FROM bluedata/centos7:latest

#Ambari Software Requirements
RUN yum -y install epel-release
RUN wget http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.5.2.0/ambari.repo -P /etc/yum.repos.d
RUN wget http://public-repo-1.hortonworks.com/HDP-UTILS-1.1.0.21/repos/centos7/hdp-util.repo -P /etc/yum.repos.d
RUN wget http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.6.4.0/hdp.repo -P /etc/yum.repos.d
RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm --directory-prefix=/usr/lib/
RUN sudo rpm -ivh /usr/lib/mysql-community-release-el7-5.noarch.rpm
RUN yum install -y deltarpm ambari* ntp yum-utils createrepo mysql-server mysql-connector-java* python-pip zookeeper*\
                   hadoop* snappy* lzo* hbase* phoenix tez pig hive* oozie* ranger* hue sqoop mahout flume* storm*\
                   spark* kafka zeppelin* livy* accumulo falcon knox slider* atlas* krb5* datafu* extjs-2.2-1 zip
RUN wget --header "Cookie: oraclelicense=accept-securebackup-cookie" \
      "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
      "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip"
RUN yum localinstall -y jdk-8u131-linux-x64.rpm
RUN unzip jce_policy-8.zip
RUN mv /usr/java/default/jre/lib/security/local_policy.jar /usr/java/default/jre/lib/security/local_policy.jar.backup
RUN mv /usr/java/default/jre/lib/security/US_export_policy.jar /usr/java/default/jre/lib/security/US_export_policy.jar.backup
RUN mv UnlimitedJCEPolicyJDK8/*.jar /usr/java/default/jre/lib/security/
RUN rm -f jce_policy-8.zip
RUN pip install requests
RUN rm -rf /etc/yum.repos.d/hdp.repo
RUN mkdir -p /shuffle
RUN chmod -R 777 /shuffle