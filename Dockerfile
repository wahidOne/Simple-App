#Get OS/APP you want to build
FROM ubuntu:latest
#input label for name docker image
Label "Author"="wahid"
Label "Project"="Main"
ENV DEBIAN_FRONTEND=noninteractive
#run command when OS/APP has been installed
RUN apt update && apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
#expose to port
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
#change folder name or app you want to build
ADD 2093_flight /var/www/html
#COPY 2093_flight /var/www/html
