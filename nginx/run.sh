#!/bin/sh

envsubst '$$VIRTUAL_HOST,$$PROJECT_NAME' < /etc/nginx/nginx.tmpl > /etc/nginx/nginx.conf

wait-for-it -t 30 "grafana:3000"

nginx -g 'daemon off;'