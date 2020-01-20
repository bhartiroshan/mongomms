FROM centos:latest

MAINTAINER Roshan Bharti MongoDB Image <roshan.bharti@outlook.com> 

LABEL Vendor="CentOS"

# Downloading and Installing MongoDB Agent 
ADD mongodb-mms-automation-agent-10.2.11.5927-1.linux_x86_64.tar.gz /opt/

WORKDIR /opt/mongodb-mms-automation-agent-10.2.11.5927-1.linux_x86_64

ADD local.config .
ADD start.sh .

RUN mkdir /var/lib/mongodb-mms-automation && \
mkdir /var/log/mongodb-mms-automation && \
mkdir -p /data && \
chmod +x start.sh

EXPOSE 27017

# Simple startup script to avoid some issues observed with container restart

ENTRYPOINT ["/opt/mongodb-mms-automation-agent-10.2.11.5927-1.linux_x86_64/start.sh"]