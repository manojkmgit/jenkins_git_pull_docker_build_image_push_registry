FROM centos:latest
MAINTAINER Mkm
RUN yum install -y php
RUN yum install -y iputils
COPY index.php /var/www/html/
WORKDIR /var/www
CMD [ "php", "-S", "0.0.0.0:80", "-t", "html"] 
EXPOSE 80
