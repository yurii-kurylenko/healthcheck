FROM nginx:stable

COPY ./run.sh /run.sh
RUN chmod +x /run.sh

COPY ./nginx.tmpl /etc/nginx/nginx.tmpl

ADD wait-for-it.sh  /usr/bin/wait-for-it
RUN chmod +x /usr/bin/wait-for-it

ENTRYPOINT /run.sh