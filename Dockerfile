#This is ipfire image for ipfire router product
FROM webskitters/wtsipfire:latest

MAINTAINER systemadmin@webskitters.com
#RUN   rm -rf /srv
RUN rm -rf /var/ipfire/ethernet/settings
RUN rm -rf /var/httpd
RUN rm -rf /etc/ssh
COPY  ./srv /srv
COPY ./settings /var/ipfire/ethernet/
COPY ./httpd /etc/httpd
COPY ./ssh /etc/ssh
VOLUME /srv/web/ipfire/
WORKDIR /srv/web/ipfire/
COPY  startup.sh /startup.sh
RUN /bin/bash -c /startup.sh
EXPOSE 444
EXPOSE 81
EXPOSE 1013
EXPOSE 8953
EXPOSE 22
EXPOSE 53



