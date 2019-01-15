FROM webskitters/wtsipfire:latest
RUN   rm -rf /srv
COPY  ./srv /srv
VOLUME /srv/web/ipfire/
WORKDIR /srv/web/ipfire/
CMD ["/usr/sbin/httpd", "-s"]
EXPOSE 444



