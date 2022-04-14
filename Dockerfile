FROM centos:7
MAINTAINER ahdatascientist@gmail.com
RUN yum install -y httpd \
	zip \
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/dryme.zip /var/www/html
WORKDIR /var/www/html
RUN unzip dryme.zip 
RUN cp -rvf laundry-service-website-template/* .
RUN rm -rf dryme.zip 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
