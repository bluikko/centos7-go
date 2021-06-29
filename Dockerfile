FROM centos:7
LABEL "maintainer"="bluikko"

RUN yum -y install https://repo.ius.io/ius-release-el7.rpm
RUN yum -y install epel-release git224 make golang

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
