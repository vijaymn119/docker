FROM ubuntu:latest
MAINTAINER vijaymn119@gmail.com
RUN apt update && apt install -y apache2
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rum -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
