FROM micophi/dev-wildfly:latest

ENV ANACONDA_URL=https://repo.anaconda.com/archive/Anaconda3-5.3.1-Linux-x86_64.sh

RUN curl -L $ANACONDA_URL -o ~/install-anaconda.sh

USER root
RUN chmod +x install-anaconda.sh
RUN ./install-anaconda.sh -b -p /opt/Anaconda3
USER jboss
