FROM alpine:latest

MAINTAINER Julien Paoletti <julien.paoletti@gmail.com>

# installs binaries
RUN apk update && apk add lighttpd && rm /var/cache/apk/*

# adds configuration file
COPY lighttpd.conf /etc/lighttpd/

# html content sample
COPY index.html /var/www/

# launch
CMD [ "/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf" ]
