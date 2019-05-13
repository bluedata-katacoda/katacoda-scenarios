#CDH 5.14.2 docker image

FROM bluedata/centos7:latest

#LABEL Description="This is an image for CDH5.10" Vendor="Bluedata Inc"

# Remove openjdk we installed in base image
RUN yum -y erase java-1.7.0-openjdk
ENV JAVA_HOME ''

#INSTALL Java Home
RUN wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz --directory-prefix=/opt/
RUN tar xvzf /opt/jdk-8u131-linux-x64.tar.gz
RUN alternatives --install /usr/bin/java java /opt/jdk1.8.0_131/bin/java 1
#RUN update-alternatives --config java 1
RUN alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_131/bin/jar 1
RUN alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_131/bin/javac 1
RUN update-alternatives --set jar /opt/jdk1.8.0_131/bin/jar
RUN update-alternatives --set javac /opt/jdk1.8.0_131/bin/javac

RUN export JAVA_HOME=/opt/jdk1.8.0_131

# INSTALL MySQL
# MySQL is no longer available in CentOS/Rhel Repo
RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm --directory-prefix=/tmp/
RUN rpm -ivh /tmp/mysql-community-release-el7-5.noarch.rpm
RUN yum install -y mysql-server

# Install cloudera manager and parcels
ADD cloudera-manager.repo /etc/yum.repos.d/
RUN yum -y install oracle-j2sdk1.7.x86_64 \
                   cloudera-manager-server-5.14.2 cloudera-manager-daemons-5.14.2\
                   cloudera-manager-agent-5.14.2 krb5\* --nogpgcheck

#Clean up the yum repository
RUN yum clean all; rm -rf /tmp/* /var/tmp/* /var/cache/yum/*

# Create shuffle directory for yarn.nodemanager.local-dirs
# And set the permission
RUN mkdir -p /shuffle
RUN chmod -R 777 /shuffle

# Install python pip and install cm-api through pip

#RUN wget https://bootstrap.pypa.io/get-pip.py -P /tmp
#RUN python /tmp/get-pip.py
RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install cm-api==14.0.0

# Download parcels for CDH
RUN wget http://archive.cloudera.com/cdh5/parcels/5.14.2/CDH-5.14.2-1.cdh5.14.2.p0.3-el7.parcel -P /opt/cloudera/parcel-repo

RUN wget http://archive.cloudera.com/cdh5/parcels/5.14.2/CDH-5.14.2-1.cdh5.14.2.p0.3-el7.parcel.sha1 -P /opt/cloudera/parcel-repo
RUN mv /opt/cloudera/parcel-repo/CDH-5.14.2-1.cdh5.14.2.p0.3-el7.parcel.sha1 /opt/cloudera/parcel-repo/CDH-5.14.2-1.cdh5.14.2.p0.3-el7.parcel.sha
RUN chown cloudera-scm:cloudera-scm /opt/cloudera/parcel-repo/*
RUN systemctl disable cloudera-scm-agent
RUN systemctl disable cloudera-scm-server
