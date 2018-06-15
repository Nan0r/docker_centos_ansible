# Latest version of centos
FROM centos:centos7
MAINTAINER Nan0r <launay.nan0r@gmail.com>
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install ansible && \
    yum -y install openssh-server openssh-clients
RUN echo '[defaults]' >> /etc/ansible/ansible.cfg
RUN echo 'hostfile = hosts' >> /etc/ansible/ansible.cfg
RUN echo '[local]' >> /etc/ansible/hosts
RUN echo 'localhost ansible_connection=local' >> /etc/ansible/hosts
WORKDIR /root/
ENV PATH /bin:/usr/bin:/sbin:/usr/sbin
