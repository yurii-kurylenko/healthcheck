ARG INFLUXDB_VERSION
FROM influxdb:${INFLUXDB_VERSION}

USER root

ADD influxdb.template.conf /influxdb.template.conf

ADD influxdb-selfsigned.crt /etc/ssl/influxdb-selfsigned.crt
ADD influxdb-selfsigned.key /etc/ssl/influxdb-selfsigned.key

RUN chmod +wx /etc/ssl/influxdb-selfsigned.*
RUN chown influxdb:influxdb /etc/ssl/influxdb-selfsigned.*

ADD run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]

