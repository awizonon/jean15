FROM ubuntu
MAINTAINER coco (oonerique@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
RUN rm -rf /var/www/html/*
#ADD static-website-example/ /var/www/html/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
