# image for RHEL/CentOS

FROM bluedata/centos7:latest

# Install EPEL repo
# RUN yum install -y http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum install -y http://download.fedoraproject.org//pub/epel/epel-release-latest-7.noarch.rpm

#Remove java7 and install java 8
RUN yum -y erase java-1.7.0-openjdk-devel
## Install java 8 and configure
ADD configure_java8.sh /root/configure_java8.sh
RUN chmod +x /root/configure_java8.sh && /root/configure_java8.sh && rm -f /root/configure_java8.sh

RUN echo 1 | update-alternatives --config java

# Install EPEL repo
RUN yum install -y bzip2

RUN yum install -y expect mysql-server mysql-connector-java             \
                   php-5.3.3 php-xml php-pear php-gd R R-devel libcurl-devel openssl-devel libxml2-devel

RUN R -e "install.packages('devtools', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('knitr', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('tidyr', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('ggplot2', repos = 'http://cran.us.r-project.org')"
#RUN R -e "install.packages(c('devtools','mplot', 'googleVis'), repos = 'http://cran.us.r-project.org'); require(devtools); install_github('ramnathv/rCharts')"
RUN R -e "install.packages(c('shiny', 'rmarkdown'), repos='https://cran.rstudio.com/')"
RUN R -e "install.packages(c('sparklyr', 'rmarkdown'), repos='https://cran.rstudio.com/')"
RUN R -e "install.packages('aws.s3', repos = c('cloudyr' = 'http://cloudyr.github.io/drat'))"

RUN sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm

#COPY rHadoopClient_0.2.tar.gz /tmp/
RUN wget -q https://s3-us-west-2.amazonaws.com/bluedata-ds-bits/rHadoopClient_0.2.tar.gz -P /tmp/
RUN R -e "install.packages('/tmp/rHadoopClient_0.2.tar.gz')"

RUN wget -q https://download2.rstudio.org/rstudio-server-rhel-1.1.383-x86_64.rpm -P /opt/rstudio/ ; yum install -y --nogpgcheck /opt/rstudio/rstudio-server-rhel-1.1.383-x86_64.rpm

RUN wget -q https://download3.rstudio.org/centos5.9/x86_64/shiny-server-1.5.1.834-rh5-x86_64.rpm -P /opt/shiny-server/ ; yum install -y --nogpgcheck /opt/shiny-server/shiny-server-1.5.1.834-rh5-x86_64.rpm

RUN mkdir -p /usr/lib/rstudio-server/conf
RUN mkdir -p /opt/shiny-server/conf
RUN chmod -R 777 /var/lib/shiny-server

#wget Ananconda parcels

RUN wget -q https://s3-us-west-2.amazonaws.com/bluedata-ds-bits/Anaconda3-5.1.0-Linux-x86_64.sh -P /root/
RUN chmod +x /root/Anaconda3-5.1.0-Linux-x86_64.sh && /root/Anaconda3-5.1.0-Linux-x86_64.sh -b -p /opt/anaconda3 && rm -f /root/Anaconda3-5.1.0-Linux-x86_64.sh

RUN yum install -y gcc-c++ make && \
    curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash - && \
    sudo yum install -y nodejs && \
    sudo npm install -g configurable-http-proxy

RUN  sudo -s && \
    /opt/anaconda3/bin/conda create -n default-notebook ipykernel -y && \
    source /opt/anaconda3/bin/activate default-notebook && \
    /opt/anaconda3/bin/python -m ipykernel install && \
    source /opt/anaconda3/bin/deactivate && \
    exit

RUN sudo groupadd jupyterhub && sudo useradd -G jupyterhub jupyter

#Install git
RUN sudo yum -y install git

#Install Jupyterhub
RUN sudo /opt/anaconda3/bin/pip install git+https://github.com/jupyter/sudospawner

RUN sudo groupadd shadow && \
    sudo chgrp shadow /etc/shadow && \
    sudo chmod g+r /etc/shadow && \
    sudo usermod -a -G shadow jupyter && \
    sudo setcap 'cap_net_bind_service=+ep' /usr/bin/node

RUN sudo mkdir /etc/jupyterhub && \
    cd /etc/jupyterhub && \
    sudo chown jupyter /etc/jupyterhub && \
    sudo -u jupyter /opt/anaconda3/bin/jupyterhub --generate-config

## Download and extract spark
RUN mkdir /usr/lib/spark; curl -s http://archive.apache.org/dist/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz | tar xz -C /usr/lib/spark/

##Install Jupyter notebook

RUN sudo yum -y install python35u

#RUN R -e "devtools::install_github('IRkernel/IRkernel')"
RUN mkdir -p /root/.ipython/kernels/pyspark

ADD configure_jupyter.sh /root/configure_jupyter.sh
RUN chmod +x /root/configure_jupyter.sh && /root/configure_jupyter.sh && rm -f /root/configure_jupyter.sh

RUN sudo /opt/anaconda3/bin/conda install -c conda-forge -y pyzmq

## Download and extract mysql connector
RUN mkdir -p /opt/bluedata; curl -s https://s3.amazonaws.com/bluedata-catalog/thirdparty/spark/mysql-connector-java-5.1.36.tar.gz | tar xz -C /opt/bluedata/; mv /opt/bluedata/mysql-connector-java-5.1.36/*.jar /opt/bluedata/mysql-connector.jar; rm -rf /opt/bluedata/mysql-connector-java-5.1.36

## Download thirdparty aws jars
RUN wget -q https://s3.amazonaws.com/bluedata-catalog/thirdparty/aws-jars/aws-java-sdk-1.7.4.jar -P /opt/bluedata/
RUN wget -q https://s3.amazonaws.com/bluedata-catalog/thirdparty/aws-jars/hadoop-aws-2.7.1.jar -P /opt/bluedata/

## Create spark-event dir and give permissions
RUN mkdir /tmp/spark-events
RUN chmod -R 777 /tmp/spark-events/

## Give logs and conf permissions
RUN mkdir -p /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/logs
RUN touch /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/logs/Bluedata-spark-logs
RUN chmod -R 1777 /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/logs/
RUN mkdir -p /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/warehouse
RUN chmod -R 1777 /usr/lib/spark/spark-2.3.1-bin-hadoop2.7/warehouse/


# make spark bin dir accessible to all
RUN echo "export PATH=$PATH:/usr/lib/spark/spark-2.3.1-bin-hadoop2.7/bin/" > /etc/profile.d/updatePath.sh
RUN echo "export PATH=$PATH:/opt/anaconda3/bin/" > /etc/profile.d/updatePath.sh
RUN /opt/anaconda3/bin/conda update -y --all
RUN /opt/anaconda3/bin/conda install -y tornado=4.5.3
RUN /opt/anaconda3/bin/conda install -y ipykernel
RUN /opt/anaconda3/bin/pip install py4j


#Install Toree kernel after Spark is installed
RUN /opt/anaconda3/bin/pip install --upgrade pip
RUN /opt/anaconda3/bin/pip install https://pypi.anaconda.org/hyoon/simple/toree/0.2.0.dev1/toree-0.2.0.dev1.tar.gz && /opt/anaconda3/bin/jupyter toree install --interpreters=Scala,PySpark,SQL --spark_home=/usr/lib/spark/spark-2.3.1-bin-hadoop2.7

## Install sparklingwater
RUN wget -q  http://h2o-release.s3.amazonaws.com/sparkling-water/rel-2.3/11/sparkling-water-2.3.11.zip -P /usr/lib/sparklingwater/;unzip -q /usr/lib/sparklingwater/sparkling-water-2.3.11.zip -d /usr/lib/sparklingwater/; rm -rf /usr/lib/sparklingwater/*.zip
