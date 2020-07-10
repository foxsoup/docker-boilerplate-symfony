FROM foxsoup/alpine-php:7.4.6

EXPOSE 80

COPY ./docker/run.sh /var/www/docker/run.sh
COPY ./app /var/www/app

WORKDIR /var/www/app

CMD ["/var/www/docker/run.sh"]
