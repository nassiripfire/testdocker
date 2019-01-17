#This is ipfire image for ipfire router product
FROM webskitters/wtsipfire

MAINTAINER systemadmin@webskitters.com
#RUN   rm -rf /srv
RUN rm -rf /var/ipfire/ethernet/settings
RUN rm -rf /var/httpd
RUN rm -rf /etc/ssh
RUN rm -rf /proc/sys/net/core/wmem_max
COPY  ./srv /srv
COPY ./settings /var/ipfire/ethernet/
COPY ./httpd /etc/httpd
COPY ./ssh /etc/ssh
COPY ./wmem_max /proc/sys/net/core/
VOLUME /srv/web/ipfire/
WORKDIR /
#WORKDIR /srv/web/ipfire/
CMD [echo copy start]
ADD  startup.sh /startup.sh
CMD [echo copy complete]
CMD [echo exec completed]
EXPOSE 444
EXPOSE 81
EXPOSE 1013
EXPOSE 8953
EXPOSE 22
EXPOSE 53
CMD ["/bin/bash" -c "/startup.sh"] 
