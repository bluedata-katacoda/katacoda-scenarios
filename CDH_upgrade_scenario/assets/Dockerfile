# CDH 5.15.0 centos 7x docker image

FROM bluedata/centos7:latest

#LABEL Description="This is an image for CDH5.15.0" Vendor="Bluedata Inc"

# Remove openjdk we installed in base image
RUN yum -y erase java-1.7.0-openjdk
ENV JAVA_HOME ''

# Install cloudera manager and parcels
ADD cloudera-manager.repo /etc/yum.repos.d/

RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm --directory-prefix=/usr/lib/
   
RUN sudo rpm -ivh /usr/lib/mysql-community-release-el7-5.noarch.rpm 
    
RUN yum -y update

RUN yum -y install oracle-j2sdk1.7.x86_64 mysqld mysql-server\
                   cloudera-manager-server-5.15.0 cloudera-manager-daemons-5.15.0\
                   cloudera-manager-agent-5.15.0 krb5\* --nogpgcheck

#Clean up the yum repository
RUN yum clean all; rm -rf /tmp/* /var/tmp/* /var/cache/yum/*

#INSTALL Java Home
RUN wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz --directory-prefix=/opt/
RUN tar xvzf /opt/jdk-8u131-linux-x64.tar.gz
RUN alternatives --install /usr/bin/java java /opt/jdk1.8.0_131/bin/java 1
RUN alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_131/bin/jar 1
RUN alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_131/bin/javac 1
RUN update-alternatives --set jar /opt/jdk1.8.0_131/bin/jar
RUN update-alternatives --set javac /opt/jdk1.8.0_131/bin/javac

RUN export JAVA_HOME=/opt/jdk1.8.0_131
RUN export PATH=$JAVA_HOME/bin:$PATH

# Install python pip and install cm-api through pip
RUN yum install -y \
    wget \
    gcc make \
    zlib-dev openssl-devel sqlite-devel bzip2-devel

ENV PYTHON_VERSION "3.6.0"
RUN wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz \
    && tar xvf Python-${PYTHON_VERSION}.tgz


#Installing
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py

#Installing Modules
#RUN yum install python-pip
RUN pip install cm-api==15.0.0

# Download parcels for CDH
RUN wget http://archive.cloudera.com/cdh5/parcels/5.15.0/CDH-5.15.0-1.cdh5.15.0.p0.21-el7.parcel -P /opt/cloudera/parcel-repo

RUN wget http://archive.cloudera.com/cdh5/parcels/5.15.0/CDH-5.15.0-1.cdh5.15.0.p0.21-el7.parcel.sha1 -P /opt/cloudera/parcel-repo
RUN mv /opt/cloudera/parcel-repo/CDH-5.15.0-1.cdh5.15.0.p0.21-el7.parcel.sha1 /opt/cloudera/parcel-repo/CDH-5.15.0-1.cdh5.15.0.p0.21-el7.parcel.sha
RUN chown cloudera-scm:cloudera-scm /opt/cloudera/parcel-repo/*

RUN systemctl disable cloudera-scm-agent
RUN systemctl disable cloudera-scm-server

#installing spark
ARG SCALA_VERSION=2.12.2
ARG SCALA_BINARY_ARCHIVE_NAME=scala-${SCALA_VERSION}
ARG SCALA_BINARY_DOWNLOAD_URL=https://scala-lang.org/files/archive/${SCALA_BINARY_ARCHIVE_NAME}.tgz

# SBT related variables.
ARG SBT_VERSION=0.13.15
ARG SBT_BINARY_ARCHIVE_NAME=sbt-$SBT_VERSION
ARG SBT_BINARY_DOWNLOAD_URL=https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/${SBT_BINARY_ARCHIVE_NAME}.tgz

# Spark related variables.
ARG SPARK_VERSION=2.2.0
ARG SPARK_BINARY_ARCHIVE_NAME=spark-${SPARK_VERSION}-bin-hadoop2.7
ARG SPARK_BINARY_DOWNLOAD_URL=https://archive.apache.org/dist/spark/spark-2.2.0/${SPARK_BINARY_ARCHIVE_NAME}.tgz

# Configure env variables for Scala, SBT and Spark.
# Also configure PATH env variable to include binary folders of Java, Scala, SBT and Spark.
ENV SCALA_HOME  /usr/local/scala
ENV SBT_HOME    /usr/local/sbt
ENV SPARK_HOME  /usr/local/spark
ENV PATH        $JAVA_HOME/bin:$SCALA_HOME/bin:$SBT_HOME/bin:$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH

# Download, uncompress and move all the required packages and libraries to their corresponding directories in /usr/local/ folder.
RUN yum -y update && \
    yum -y install vim && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    wget -qO - ${SCALA_BINARY_DOWNLOAD_URL} | tar -xz -C /usr/local/ && \
    wget -qO - ${SBT_BINARY_DOWNLOAD_URL} | tar -xz -C /usr/local/  && \
    wget -qO - ${SPARK_BINARY_DOWNLOAD_URL} | tar -xz -C /usr/local/ && \
    cd /usr/local/ && \
    ln -s ${SCALA_BINARY_ARCHIVE_NAME} scala && \
    ln -s ${SPARK_BINARY_ARCHIVE_NAME} spark && \
    cp spark/conf/log4j.properties.template spark/conf/log4j.properties && \
    sed -i -e s/WARN/ERROR/g spark/conf/log4j.properties && \
    sed -i -e s/INFO/ERROR/g spark/conf/log4j.properties

