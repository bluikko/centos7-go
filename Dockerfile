FROM centos:7
LABEL "maintainer"="bluikko"

RUN yum -y install epel-release
RUN yum -y install make
RUN yum -y install golang
RUN yum -y install https://repo.ius.io/ius-release-el7.rpm
RUN yum -y install git224

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
