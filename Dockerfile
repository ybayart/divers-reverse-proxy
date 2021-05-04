FROM nginx

MAINTAINER YanYan, yanyan@hexanyn.fr

WORKDIR /etc/nginx/

COPY nginx.conf nginx.conf.base

COPY entrypoint.sh .

ENTRYPOINT bash ./entrypoint.sh
