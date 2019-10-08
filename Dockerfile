FROM oraclelinux:7
MAINTAINER ajeetraina@gmail.com
RUN cd /tmp
RUN curl -O http://downloads.dell.com/FOLDER05399070M/1/DellEMCStorageClientLinux-18.1.20.114.zip
RUN yum -y install libXext libXrender libXtst unzip
RUN unzip DellEMCStorageClientLinux-18.1.20.114.zip
RUN mv 'Storage Manager Linux Client 18.1.20.114.rpm' Storage_Manager_Linux_Client.rpm
RUN yum install -y Storage_Manager_Linux_Client.rpm
RUN rm DellEMCStorageClientLinux-18.1.20.114.zip
RUN yum clean all

ENTRYPOINT [ "/var/lib/dell/bin/Client" ]
