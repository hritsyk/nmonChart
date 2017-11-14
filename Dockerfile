FROM centos:latest

MAINTAINER Igor Grytsyk "gritsyk@gmail.com"





RUN yum upgrade -y; \
    yum install -y ksh && \
    yum clean all

VOLUME ["/sharedvolume"]

ADD nmonchart33 nmonchart33

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]