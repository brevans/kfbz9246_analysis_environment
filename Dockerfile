FROM ubuntu
MAINTAINER kfbz9246 <kbz6@cornell.edu>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
#RUN apt-get install --fix-missing -y --allow-unauthenticated python python-pip libfreetype6-dev libxft-dev python-tk python-dev sqlite3 libsqlite3-dev libgmp3-dev graphviz openmpi-bin libopenmpi-dev r-base r-base-dev software-properties-common sudo wget default-jre
RUN apt-get install -y python python-dev python-tk python-pip
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y libxft-dev
RUN apt-get install -y sqlite3 libsqlite3-dev
RUN apt-get install -y libgmp3-dev
RUN apt-get install -y graphviz
RUN apt-get install -y openmpi-bin libopenmpi-dev
RUN apt-get install -y r-base r-base-dev
RUN apt-get install -y git
RUN apt-get install -y software-properties-common
RUN apt-get install -y sudo 
RUN apt-get install -y wget
RUN apt-get install -y default-jre
RUN apt-get install -y rsync
RUN apt-get install -y keychain
RUN apt-get clean
RUN pip install --upgrade pip
RUN pip install ipython
RUN pip install matplotlib
RUN pip install rpy2==2.8.2
RUN pip install scipy
RUN pip install numpy
RUN pip install networkx
RUN pip install xlrd
RUN pip install pandas
RUN pip install sqlalchemy
RUN pip install scikit-learn
RUN pip install statsmodels
RUN pip install pydot
RUN pip install seaborn
RUN pip install graphviz
RUN pip install ipython
RUN pip install mpi4py
RUN pip install nibabel
RUN pip install Pillow

RUN sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list'
RUN R CMD javareconf
RUN R -e 'install.packages(c("rj", "rj.gd"), repos="http://download.walware.de/rj-2.1")'
RUN R -e 'install.packages("huge", repos = "http://cran.rstudio.com/")'
RUN R -e 'install.packages("NSM3", repos = "http://cran.rstudio.com/")'
RUN R -e 'install.packages("rpart", repos = "http://cran.rstudio.com/")'
RUN R -e 'source("http://bioconductor.org/biocLite.R");biocLite(c("AnnotationDbi", "impute", "GO.db", "preprocessCore"))'
RUN R -e 'install.packages("WGCNA", repos = "http://cran.rstudio.com/")'