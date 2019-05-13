FROM bluedata/centos7:latest

#Ambari Software Requirements
RUN yum -y install epel-release
RUN wget http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.6.2.2/ambari.repo -P /etc/yum.repos.d
RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm --directory-prefix=/usr/lib/
RUN sudo rpm -ivh /usr/lib/mysql-community-release-el7-5.noarch.rpm
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
RUN yum install -y yum-utils createrepo mysql-server mysql-connector-java* postgresql-server python-pip krb5* ambari* ntp
RUN pip install requests
RUN mkdir -p /var/www/html/hdputils
#RUN wget http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.6.4.0/HDP-2.6.4.0-centos7-rpm.tar.gz -P /root
#RUN wget http://public-repo-1.hortonworks.com/HDP-UTILS-1.1.0.21/repos/centos7/HDP-UTILS-1.1.0.21-centos7.tar.gz -P /root
#RUN tar xvzf /root/HDP-2.6.4.0-centos7-rpm.tar.gz -C /var/www/html
#RUN rm -rf /root/HDP-2.6.4.0-centos7-rpm.tar.gz
#RUN tar xvzf /root/HDP-UTILS-1.1.0.21-centos7.tar.gz -C /var/www/html/hdputils
#RUN rm -rf /root/HDP-UTILS-1.1.0.21-centos7.tar.gz
#RUN rm -rf /etc/yum.repos.d/ambari.repo


