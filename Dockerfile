FROM centos:latest
LABEL marina=test
ENV APP_NAME="MyCentOSApp"
ENV APP_VERSION="1.0"
RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install nginx postgresql curl iputils && \
    yum clean all
EXPOSE 8080 
COPY ./text.sh /usr/local/bin/text.sh
RUN chmod +x /usr/local/bin/text.sh
ENTRYPOINT ["/usr/local/bin/text.sh"]
CMD ["nginx", "-g", "daemon off;"]
