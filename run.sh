#!/bin/bash

echo "Fixing permissions"
chown -R nginx:nginx var/logs
chown -R nginx:nginx var/cache

echo "Clearing cache"
sudo -u nginx -E ./bin/console ca:cl -e $APP_ENV --no-warmup
sudo -u nginx -E ./bin/console cache:warmup -e $APP_ENV -n

echo "Starting s6"
exec /bin/s6-svscan /etc/s6
