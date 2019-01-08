#!/bin/bash

yum -y groupinstall 'Development Tools'
yum -y install python35u-devel

pip install --upgrage pysodidum

/opt/anaconda3/bin/pyvenv --without-pip /opt/p3env
source /opt/p3env/bin/activate
/opt/anaconda3/bin/conda update ipython
/opt/anaconda3/bin/conda update pyzmq
/opt/anaconda3/bin/conda install -f -y jupyter
/opt/anaconda3/bin/conda install -c r r-essentials
/opt/anaconda3/bin/conda update jupyter_core jupyter_client
