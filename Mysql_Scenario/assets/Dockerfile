#mysql centos 7x docker image

FROM bluedata/centos7:latest

# Remove openjdk we installed in base image
RUN yum -y erase java-1.7.0-openjdk
ENV JAVA_HOME ''

#Install Java 8 and configure

ADD configure_java8.sh /root/configure_java8.sh
RUN chmod +x /root/configure_java8.sh && /root/configure_java8.sh && rm -f /root/configure_java8.sh

RUN echo 1 | update-alternatives --config java

RUN echo "export PATH=$PATH:/opt/jdk1.8.0_131/bin" > /etc/profile.d/updatePath.sh

#Install mysql

RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm --directory-prefix=/usr/lib/

RUN sudo rpm -ivh /usr/lib/mysql-community-release-el7-5.noarch.rpm

RUN yum -y update

RUN yum -y install mysqld mysql-server
