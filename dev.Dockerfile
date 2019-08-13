FROM foxsoup/alpine:latest

EXPOSE 80

COPY ./docker/run.sh /var/www/docker/run.sh
COPY ./api /var/www/app

WORKDIR /var/www/app

CMD ["/var/www/docker/run.sh"]
