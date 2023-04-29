FROM nginx:alpine

COPY piped-frontend/dist-ci/ /usr/share/nginx/html/
COPY piped-frontend/docker/nginx.conf /etc/nginx/conf.d/default.conf

COPY piped-entrypoint.sh /piped-entrypoint.sh

EXPOSE 80

STOPSIGNAL SIGTERM

ENTRYPOINT [ "/piped-entrypoint.sh" ]