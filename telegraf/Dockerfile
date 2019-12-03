ARG TELEGRAF_VERSION

FROM telegraf:${TELEGRAF_VERSION}

USER root

ADD telegraf.template.conf /telegraf.template.conf

RUN apt-get update && apt-get -y install build-essential

ADD wait-for-it.sh  /usr/bin/wait-for-it
RUN chmod +x /usr/bin/wait-for-it

ADD run.sh /run.sh

RUN chmod +x /*.sh

CMD ["/run.sh"]

