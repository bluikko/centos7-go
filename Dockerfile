FROM centos:7
LABEL "maintainer"="bluikko"

RUN yum -y install epel-release
RUN yum -y install make
RUN yum -y install golang

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
