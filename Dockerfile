# Latest version of centos
FROM centos:centos7
MAINTAINER Nan0r <launay.nan0r@gmail.com>
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install ansible 
RUN echo 'localhost' >> /etc/ansible/hosts
WORKDIR /root/
ENV PATH /bin:/usr/bin:/sbin:/usr/sbin
