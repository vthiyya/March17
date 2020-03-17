FROM fedora
# it will be the base image
MAINTAINER vishalt@linux.com , 9999999999
# dev info for people to connect
RUN yum install httpd -y
# it will install httpd
WORKDIR /var/www/html
#this is changing my current working directoty to app server
COPY .  .
#copy can only copy data from currect local location to docker image
EXPOSE 80
#it will tell docker image to use 80 port for app server
#CMD httpd -DFOREGROUND 
# it will start parent process as http app server
# cmd can be replaced by docker user 
ENTRYPOINT httpd -DFOREGROUND
# same as cmd but we cannot replace it by argument
