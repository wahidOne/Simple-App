FROM ubuntu:latest
Label "Author"="wahid"
Label "Project"="Main"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD 2093_flight /var/www/html
#COPY 2093_flight /var/www/html
